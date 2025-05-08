import Cocoa
import FlutterMacOS
import LocalAuthentication
import Security

// MARK: - Keychain service identifiers
private let loginService    = "com.securevault.login"       // random login token
private let seedService     = "com.securevault.seed"        // encrypted seed phrase
private let flagService     = "com.securevault.seedFlag"    // plain flag: "seed was stored"
private let attemptsService = "com.securevault.attempts"    // counter of wrong PINs

private let attemptLimit = 3

public class SecureVaultPlugin: NSObject, FlutterPlugin {

  // MARK: - Registrar
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(
      name: "secure_vault",
      binaryMessenger: registrar.messenger)
    registrar.addMethodCallDelegate(SecureVaultPlugin(), channel: channel)
  }

  // MARK: - Method‑channel dispatcher
  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {

    func arg(_ key: String) -> String? {
      (call.arguments as? [String: Any])?[key] as? String
    }

    do {
      switch call.method {
      case "setup":
        guard let seed = arg("seed"), let pin = arg("pin") else { throw Err.args }
        try setup(seed: seed, pin: pin)
        result(nil)

      case "checkPin":
        guard let pin = arg("pin") else { throw Err.args }
        result(try check(pin: pin))

      case "getSeed":
        guard let pin = arg("pin") else { throw Err.args }
        result(try getSeed(pin: pin))

      case "resetVault":
        try resetVault()
        result(nil)

      case "remainingAttempts":
        result(try remainingAttempts())

      case "hasSeed":
        result(hasSeed())

      default:
        result(FlutterMethodNotImplemented)
      }
    } catch Err.locked {
      result(FlutterError(code: "LOCKED",
                          message: "Vault locked after too many failed attempts",
                          details: nil))
    } catch {
      result(FlutterError(code: "ERR", message: error.localizedDescription, details: nil))
    }
  }

  // MARK: - LAContext helper
  private func ctx(_ pin: String) -> LAContext {
    let c = LAContext()
    c.setCredential(pin.data(using: .utf8)!, type: .applicationPassword)
    return c
  }

  // MARK: - Setup & Reset
  private func setup(seed: String, pin: String) throws {
    let access = SecAccessControlCreateWithFlags(nil,
                                                 kSecAttrAccessibleWhenUnlockedThisDeviceOnly,
                                                 [.applicationPassword],
                                                 nil)!

    // login token (random) under PIN protection
    try add(service: loginService,
            data: Data((0..<16).map { _ in UInt8.random(in: 0...255) }),
            pin: pin, access: access)

    // seed phrase under PIN protection
    try add(service: seedService,
            data: Data(seed.utf8),
            pin: pin, access: access)

    // plain flag (NOT protected) – lets us detect that seed exists without PIN
    try add(service: flagService,
            data: Data([1]),
            pin: pin, access: nil)

    try setAttempts(0)
  }

  private func resetVault() throws {
    let services = [loginService, seedService, flagService]
    for svc in services {
      let q: [String: Any] = [
        kSecClass       as String: kSecClassGenericPassword,
        kSecAttrService as String: svc
      ]
      try kc(SecItemDelete(q as CFDictionary))
    }
    try setAttempts(0)
  }

  // MARK: - Generic add helper (access may be nil)
  private func add(service: String, data: Data, pin: String, access: SecAccessControl?) throws {
    var q: [String: Any] = [
      kSecClass       as String: kSecClassGenericPassword,
      kSecAttrService as String: service,
      kSecValueData   as String: data
    ]
    if let access = access {
      q[kSecAttrAccessControl as String] = access
      q[kSecUseAuthenticationContext as String] = ctx(pin)
    }
    SecItemDelete(q as CFDictionary) // overwrite if exists
    try kc(SecItemAdd(q as CFDictionary, nil))
  }

  // MARK: - Attempts tracking
  private func attempts() throws -> Int {
    var item: CFTypeRef?
    let q: [String: Any] = [
      kSecClass       as String: kSecClassGenericPassword,
      kSecAttrService as String: attemptsService,
      kSecReturnData  as String: true,
      kSecUseAuthenticationUI as String: kSecUseAuthenticationUIFail
    ]
    let status = SecItemCopyMatching(q as CFDictionary, &item)
    guard status == errSecSuccess else { return 0 }
    return Int((item as! Data).first!)
  }

  private func setAttempts(_ n: Int) throws {
    let access = SecAccessControlCreateWithFlags(nil,
                                                 kSecAttrAccessibleWhenUnlockedThisDeviceOnly,
                                                 [], nil)!
    let q: [String: Any] = [
      kSecClass             as String: kSecClassGenericPassword,
      kSecAttrService       as String: attemptsService,
      kSecAttrAccessControl as String: access,
      kSecValueData         as String: Data([UInt8(n & 0xFF)])
    ]
    SecItemDelete(q as CFDictionary)
    try kc(SecItemAdd(q as CFDictionary, nil))
  }

  private func remainingAttempts() throws -> Int {
    let used = try attempts()
    return max(attemptLimit - used, 0)
  }

  // MARK: - Public helpers

  /// Cheap check: was seed ever saved?
  private func hasSeed() -> Bool {
    let q: [String: Any] = [
      kSecClass       as String: kSecClassGenericPassword,
      kSecAttrService as String: flagService,
      kSecReturnData  as String: false,
      kSecMatchLimit  as String: kSecMatchLimitOne
    ]
    return SecItemCopyMatching(q as CFDictionary, nil) == errSecSuccess
  }

  /// Validate PIN; throws `Err.locked` if limit reached
  private func check(pin: String) throws -> Bool {
    let used = try attempts()
    guard used < attemptLimit else { throw Err.locked }

    let q: [String: Any] = [
      kSecClass               as String: kSecClassGenericPassword,
      kSecAttrService         as String: loginService,
      kSecReturnData          as String: false,
      kSecUseAuthenticationContext as String: ctx(pin),
      kSecUseAuthenticationUI as String: kSecUseAuthenticationUIFail
    ]
    if SecItemCopyMatching(q as CFDictionary, nil) == errSecSuccess {
      try setAttempts(0)
      return true
    } else {
      try setAttempts(used + 1)
      return false
    }
  }

  /// Return seed phrase if PIN correct; counts attempts & locks
  private func getSeed(pin: String) throws -> String {
    let used = try attempts()
    guard used < attemptLimit else { throw Err.locked }

    var item: CFTypeRef?
    let q: [String: Any] = [
      kSecClass               as String: kSecClassGenericPassword,
      kSecAttrService         as String: seedService,
      kSecReturnData          as String: true,
      kSecUseAuthenticationContext as String: ctx(pin),
      kSecUseAuthenticationUI as String: kSecUseAuthenticationUIFail
    ]
    let status = SecItemCopyMatching(q as CFDictionary, &item)

    if status == errSecSuccess {
      try setAttempts(0)
      return String(data: item as! Data, encoding: .utf8)!
    } else {
      try setAttempts(used + 1)
      throw NSError(domain: NSOSStatusErrorDomain, code: Int(status))
    }
  }

  // MARK: - Keychain status helper
  private func kc(_ status: OSStatus) throws {
    guard status == errSecSuccess else {
      throw NSError(domain: NSOSStatusErrorDomain, code: Int(status))
    }
  }

  // MARK: - Internal errors
  enum Err: Error {
    case args
    case locked
  }
}
