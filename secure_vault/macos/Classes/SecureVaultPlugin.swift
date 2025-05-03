import Cocoa
import FlutterMacOS
import LocalAuthentication
import Security

private let loginService = "com.securevault.login"
private let seedService  = "com.securevault.seed"

public class SecureVaultPlugin: NSObject, FlutterPlugin {

  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(
      name: "secure_vault",
      binaryMessenger: registrar.messenger)

    registrar.addMethodCallDelegate(SecureVaultPlugin(), channel: channel)
  }

  public func handle(_ call: FlutterMethodCall,
                     result: @escaping FlutterResult) {

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
        result(check(pin: pin))

      case "getSeed":
        guard let pin = arg("pin") else { throw Err.args }
        result(try getSeed(pin: pin))

      case "resetVault":
        try resetVault()
        result(nil)

      default:
        result(FlutterMethodNotImplemented)
      }

    } catch {
      result(FlutterError(code: "ERR",
                          message: error.localizedDescription,
                          details: nil))
    }
  }

  private func ctx(_ pin: String) -> LAContext {
    let c = LAContext()
    c.setCredential(pin.data(using: .utf8)!,
                    type: .applicationPassword)
    return c
  }

  private func setup(seed: String, pin: String) throws {
    let access = SecAccessControlCreateWithFlags(
      nil,
      kSecAttrAccessibleWhenUnlockedThisDeviceOnly,
      [.applicationPassword],
      nil)!

    try add(service: loginService,
            data: Data((0..<16).map { _ in UInt8.random(in: 0...255) }),
            pin: pin, access: access)

    try add(service: seedService,
            data: Data(seed.utf8),
            pin: pin, access: access)
  }

  private func add(service: String, data: Data,
                   pin: String, access: SecAccessControl) throws {
    let q: [String: Any] = [
      kSecClass as String:                   kSecClassGenericPassword,
      kSecAttrService as String:             service,
      kSecAttrAccessControl as String:       access,
      kSecUseAuthenticationContext as String: ctx(pin),
      kSecValueData as String:               data
    ]
    SecItemDelete(q as CFDictionary)               // overwrite if exists
    try kc(SecItemAdd(q as CFDictionary, nil))
  }

  private func check(pin: String) -> Bool {
    let q: [String: Any] = [
      kSecClass as String:                   kSecClassGenericPassword,
      kSecAttrService as String:             loginService,
      kSecReturnData as String:              false,
      kSecUseAuthenticationContext as String: ctx(pin)
    ]
    return SecItemCopyMatching(q as CFDictionary, nil) == errSecSuccess
  }

  private func getSeed(pin: String) throws -> String {
    var item: CFTypeRef?
    let q: [String: Any] = [
      kSecClass as String:                   kSecClassGenericPassword,
      kSecAttrService as String:             seedService,
      kSecReturnData as String:              true,
      kSecUseAuthenticationContext as String: ctx(pin)
    ]
    try kc(SecItemCopyMatching(q as CFDictionary, &item))
    return String(data: item as! Data, encoding: .utf8)!
  }

  private func resetVault() throws {
    let qLogin: [String: Any] = [
      kSecClass as String: kSecClassGenericPassword,
      kSecAttrService as String: loginService
    ]
    let qSeed:  [String: Any] = [
      kSecClass as String: kSecClassGenericPassword,
      kSecAttrService as String: seedService
    ]
    try kc(SecItemDelete(qLogin as CFDictionary))
    try kc(SecItemDelete(qSeed  as CFDictionary))
  }

  private func kc(_ status: OSStatus) throws {
    guard status == errSecSuccess else {
      throw NSError(domain: NSOSStatusErrorDomain, code: Int(status))
    }
  }

  enum Err: Error { case args }
}
