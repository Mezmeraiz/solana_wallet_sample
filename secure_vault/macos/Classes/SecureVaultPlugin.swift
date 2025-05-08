import Cocoa
import FlutterMacOS
import LocalAuthentication
import Security

private let loginService    = "com.securevault.login"
private let seedService     = "com.securevault.seed"
private let attemptsService = "com.securevault.attempts"
private let attemptLimit    = 3

public class SecureVaultPlugin: NSObject, FlutterPlugin {

  // MARK: - Registrar
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(
      name: "secure_vault",
      binaryMessenger: registrar.messenger)
    registrar.addMethodCallDelegate(SecureVaultPlugin(), channel: channel)
  }

  // MARK: - Method channel handler
  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {

    func arg(_ k: String) -> String? {
      (call.arguments as? [String: Any])?[k] as? String
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
      result(FlutterError(code: "LOCKED", message: "Vault locked after too many failed attempts", details: nil))
    } catch {
      result(FlutterError(code: "ERR", message: error.localizedDescription, details: nil))
    }
  }

  // MARK: - Context helper
  private func ctx(_ pin: String) -> LAContext {
    let c = LAContext()
    c.setCredential(pin.data(using: .utf8)!, type: .applicationPassword)
    return c
  }

  // MARK: - Setup / reset
  private func setup(seed: String, pin: String) throws {
    let access = SecAccessControlCreateWithFlags(nil,
      kSecAttrAccessibleWhenUnlockedThisDeviceOnly,
      [.applicationPassword], nil)!

    try add(service: loginService,
            data: Data((0..<16).map { _ in UInt8.random(in: 0...255) }),
            pin: pin, access: access)

    try add(service: seedService,
            data: Data(seed.utf8),
            pin: pin, access: access)

    try setAttempts(0)
  }

  private func resetVault() throws {
    let qLogin: [String: Any] = [
      kSecClass       as String: kSecClassGenericPassword,
      kSecAttrService as String: loginService
    ]
    let qSeed: [String: Any] = [
      kSecClass       as String: kSecClassGenericPassword,
      kSecAttrService as String: seedService
    ]
    try kc(SecItemDelete(qLogin as CFDictionary))
    try kc(SecItemDelete(qSeed  as CFDictionary))
    try setAttempts(0)
  }

  // MARK: - Keychain helpers
  private func add(service: String, data: Data, pin: String, access: SecAccessControl) throws {
    let q: [String: Any] = [
      kSecClass               as String: kSecClassGenericPassword,
      kSecAttrService         as String: service,
      kSecAttrAccessControl   as String: access,
      kSecUseAuthenticationContext as String: ctx(pin),
      kSecValueData           as String: data
    ]
    SecItemDelete(q as CFDictionary) // overwrite if exists
    try kc(SecItemAdd(q as CFDictionary, nil))
  }

  private func kc(_ status: OSStatus) throws {
    guard status == errSecSuccess else {
      throw NSError(domain: NSOSStatusErrorDomain, code: Int(status))
    }
  }

  // MARK: - Attempts tracking
  private func attempts() throws -> Int {
    var item: CFTypeRef?
    let q: [String: Any] = [
      kSecClass       as String: kSecClassGenericPassword,
      kSecAttrService as String: attemptsService,
      kSecReturnData  as String: true
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

  // MARK: - Public operations
  private func hasSeed() -> Bool {
    let q: [String: Any] = [
      kSecClass       as String: kSecClassGenericPassword,
      kSecAttrService as String: seedService,
      kSecReturnData  as String: false
    ]
    return SecItemCopyMatching(q as CFDictionary, nil) == errSecSuccess
  }

  private func check(pin: String) throws -> Bool {
    let used = try attempts()
    guard used < attemptLimit else { throw Err.locked }

    let q: [String: Any] = [
      kSecClass               as String: kSecClassGenericPassword,
      kSecAttrService         as String: loginService,
      kSecReturnData          as String: false,
      kSecUseAuthenticationContext as String: ctx(pin)
    ]
    if SecItemCopyMatching(q as CFDictionary, nil) == errSecSuccess {
      try setAttempts(0)
      return true
    } else {
      try setAttempts(used + 1)
      return false
    }
  }

  private func getSeed(pin: String) throws -> String {
    let used = try attempts()
    guard used < attemptLimit else { throw Err.locked }

    var item: CFTypeRef?
    let q: [String: Any] = [
      kSecClass               as String: kSecClassGenericPassword,
      kSecAttrService         as String: seedService,
      kSecReturnData          as String: true,
      kSecUseAuthenticationContext as String: ctx(pin)
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

  // MARK: - Errors
  enum Err: Error {
    case args
    case locked
  }
}
