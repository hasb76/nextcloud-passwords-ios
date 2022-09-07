// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable function_parameter_count identifier_name line_length type_body_length
internal enum Strings {
  internal static let about = Strings.tr("Localizable", "_about", fallback: "About")
  internal static let aboutOtps = Strings.tr("Localizable", "_aboutOtps", fallback: "About One-Time Passwords")
  internal static let aboutOtpsMessage = Strings.tr("Localizable", "_aboutOtpsMessage", fallback: "This app supports one-time passwords for convenience only. Storing your one-time password alongside your account's password defeats some of the security benefits of multi-factor authentication. Enabling a second factor is better than not using one at all, but a standalone one-time password app will be more secure. DO NOT store one-time passwords for your Nextcloud account or critical accounts, such as Email or online banking accounts. One-time passwords will synchronize over your Nextcloud Passwords instance but are currently only supported by the iOS app (v2.6 or newer).")
  internal static let accept = Strings.tr("Localizable", "_accept", fallback: "Accept")
  internal static let account = Strings.tr("Localizable", "_account", fallback: "Account")
  internal static let addCustomField = Strings.tr("Localizable", "_addCustomField", fallback: "Add Custom Field")
  internal static let addManually = Strings.tr("Localizable", "_addManually", fallback: "Add Manually")
  internal static let addOtp = Strings.tr("Localizable", "_addOtp", fallback: "Add One-Time Password")
  internal static let addTags = Strings.tr("Localizable", "_addTags", fallback: "Add Tags")
  internal static let algorithm = Strings.tr("Localizable", "_algorithm", fallback: "Algorithm")
  internal static let all = Strings.tr("Localizable", "_all", fallback: "All")
  internal static let anErrorOccurred = Strings.tr("Localizable", "_anErrorOccurred", fallback: "An error occurred …")
  internal static let appDeauthorized = Strings.tr("Localizable", "_appDeauthorized", fallback: "App Deauthorized")
  internal static let appDeauthorizedMessage = Strings.tr("Localizable", "_appDeauthorizedMessage", fallback: "Because of too many failed login attempts this app was deauthorized by the server. Please try again later.")
  internal static let automaticallyGeneratePasswords = Strings.tr("Localizable", "_automaticallyGeneratePasswords", fallback: "Automatically Generate Passwords")
  internal static let cancel = Strings.tr("Localizable", "_cancel", fallback: "Cancel")
  internal static let clientSide = Strings.tr("Localizable", "_clientSide", fallback: "Client Side")
  internal static let color = Strings.tr("Localizable", "_color", fallback: "Color")
  internal static let configured = Strings.tr("Localizable", "_configured", fallback: "Configured")
  internal static let confirm = Strings.tr("Localizable", "_confirm", fallback: "Confirm")
  internal static let confirmAction = Strings.tr("Localizable", "_confirmAction", fallback: "Confirm Action")
  internal static let connect = Strings.tr("Localizable", "_connect", fallback: "Connect")
  internal static let connectToServer = Strings.tr("Localizable", "_connectToServer", fallback: "Connect to Server")
  internal static let copyOtp = Strings.tr("Localizable", "_copyOtp", fallback: "Copy One-Time Password")
  internal static let copyPassword = Strings.tr("Localizable", "_copyPassword", fallback: "Copy Password")
  internal static let copyUsername = Strings.tr("Localizable", "_copyUsername", fallback: "Copy Username")
  internal static let counter = Strings.tr("Localizable", "_counter", fallback: "Counter")
  internal static let counterBased = Strings.tr("Localizable", "_counterBased", fallback: "Counter-Based")
  internal static let create = Strings.tr("Localizable", "_create", fallback: "Create")
  internal static let created = Strings.tr("Localizable", "_created", fallback: "Created")
  internal static let createFolder = Strings.tr("Localizable", "_createFolder", fallback: "Create Folder")
  internal static let createFolderErrorMessage = Strings.tr("Localizable", "_createFolderErrorMessage", fallback: "An error occurred while creating the folder. Please save the folder again.")
  internal static let createPassword = Strings.tr("Localizable", "_createPassword", fallback: "Create Password")
  internal static let createPasswordErrorMessage = Strings.tr("Localizable", "_createPasswordErrorMessage", fallback: "An error occurred while creating the password. Please save the password again.")
  internal static let createTag = Strings.tr("Localizable", "_createTag", fallback: "Create Tag")
  internal static let createTagErrorMessage = Strings.tr("Localizable", "_createTagErrorMessage", fallback: "An error occurred while creating the tag. Please save the tag again.")
  internal static let credentials = Strings.tr("Localizable", "_credentials", fallback: "Credentials")
  internal static let customFields = Strings.tr("Localizable", "_customFields", fallback: "Custom Fields")
  internal static let decryptFolderErrorMessage = Strings.tr("Localizable", "_decryptFolderErrorMessage", fallback: "An error occurred while decrypting the folder.")
  internal static let decryptPasswordErrorMessage = Strings.tr("Localizable", "_decryptPasswordErrorMessage", fallback: "An error occurred while decrypting the password.")
  internal static let decryptTagErrorMessage = Strings.tr("Localizable", "_decryptTagErrorMessage", fallback: "An error occurred while decrypting the tag.")
  internal static let delete = Strings.tr("Localizable", "_delete", fallback: "Delete")
  internal static let deletedPasswordMessage = Strings.tr("Localizable", "_deletedPasswordMessage", fallback: "This password was deleted.")
  internal static let deleteFolder = Strings.tr("Localizable", "_deleteFolder", fallback: "Delete Folder")
  internal static let deleteFolderErrorMessage = Strings.tr("Localizable", "_deleteFolderErrorMessage", fallback: "An error occurred while deleting the folder. Please delete the folder again.")
  internal static let deleteOtp = Strings.tr("Localizable", "_deleteOtp", fallback: "Delete One-Time Password")
  internal static let deletePassword = Strings.tr("Localizable", "_deletePassword", fallback: "Delete Password")
  internal static let deletePasswordErrorMessage = Strings.tr("Localizable", "_deletePasswordErrorMessage", fallback: "An error occurred while deleting the password. Please delete the password again.")
  internal static let deleteTag = Strings.tr("Localizable", "_deleteTag", fallback: "Delete Tag")
  internal static let deleteTagErrorMessage = Strings.tr("Localizable", "_deleteTagErrorMessage", fallback: "An error occurred while deleting the tag. Please delete the tag again.")
  internal static let detectQrCodeInPicture = Strings.tr("Localizable", "_detectQrCodeInPicture", fallback: "Detect QR Code In Picture")
  internal static let digits = Strings.tr("Localizable", "_digits", fallback: "Digits")
  internal static let discardChanges = Strings.tr("Localizable", "_discardChanges", fallback: "Discard Changes")
  internal static let dismiss = Strings.tr("Localizable", "_dismiss", fallback: "Dismiss")
  internal static let done = Strings.tr("Localizable", "_done", fallback: "Done")
  internal static let duplicates = Strings.tr("Localizable", "_duplicates", fallback: "Duplicates")
  internal static let duplicatesTrashMessage = Strings.tr("Localizable", "_duplicatesTrashMessage", fallback: "All duplicates of this password are located in the trash.")
  internal static let e2ePassword = Strings.tr("Localizable", "_e2ePassword", fallback: "E2E Password")
  internal static let edit = Strings.tr("Localizable", "_edit", fallback: "Edit")
  internal static let editFolderErrorMessage = Strings.tr("Localizable", "_editFolderErrorMessage", fallback: "An error occurred while editing the folder. Please save the folder again.")
  internal static let editPassword = Strings.tr("Localizable", "_editPassword", fallback: "Edit Password")
  internal static let editPasswordErrorMessage = Strings.tr("Localizable", "_editPasswordErrorMessage", fallback: "An error occurred while editing the password. Please save the password again.")
  internal static let editTagErrorMessage = Strings.tr("Localizable", "_editTagErrorMessage", fallback: "An error occurred while editing the tag. Please save the tag again.")
  internal static let editTags = Strings.tr("Localizable", "_editTags", fallback: "Edit Tags")
  internal static let email = Strings.tr("Localizable", "_email", fallback: "Email")
  internal static let encryptedOfflineStorage = Strings.tr("Localizable", "_encryptedOfflineStorage", fallback: "Encrypted Offline Storage")
  internal static let encryption = Strings.tr("Localizable", "_encryption", fallback: "Encryption")
  internal static let error = Strings.tr("Localizable", "_error", fallback: "Error")
  internal static let exportAsQrCode = Strings.tr("Localizable", "_exportAsQrCode", fallback: "Export As QR Code")
  internal static let extractOtpErrorMessage = Strings.tr("Localizable", "_extractOtpErrorMessage", fallback: "An error occurred while searching for a QR code in the selected picture.")
  internal static let favorite = Strings.tr("Localizable", "_favorite", fallback: "Favorite")
  internal static let favorites = Strings.tr("Localizable", "_favorites", fallback: "Favorites")
  internal static let file = Strings.tr("Localizable", "_file", fallback: "File")
  internal static let folder = Strings.tr("Localizable", "_folder", fallback: "Folder")
  internal static let folders = Strings.tr("Localizable", "_folders", fallback: "Folders")
  internal static let generatePassword = Strings.tr("Localizable", "_generatePassword", fallback: "Generate Password")
  internal static let giveATip = Strings.tr("Localizable", "_giveATip", fallback: "Give a Tip")
  internal static let hash = Strings.tr("Localizable", "_hash", fallback: "Hash")
  internal static let highFive = Strings.tr("Localizable", "_highFive", fallback: "High Five! 👏")
  internal static let id = Strings.tr("Localizable", "_id", fallback: "ID")
  internal static let incorrectPassword = Strings.tr("Localizable", "_incorrectPassword", fallback: "Incorrect Password")
  internal static let incorrectPasswordMessage = Strings.tr("Localizable", "_incorrectPasswordMessage", fallback: "Please try again.")
  internal static let integration = Strings.tr("Localizable", "_integration", fallback: "Integration")
  internal static let invalidCertificate = Strings.tr("Localizable", "_invalidCertificate", fallback: "Invalid Certificate")
  internal static func invalidCertificateMessageHash(_ p1: UnsafePointer<CChar>) -> String {
    return Strings.tr("Localizable", "_invalidCertificateMessage(hash)", p1, fallback: "The server's certificate is invalid. A secure connection can't be guaranteed. Should the certificate still be used?\n\nSHA-256 of the certificate:\n%s")
  }
  internal static let logIn = Strings.tr("Localizable", "_logIn", fallback: "Log In")
  internal static let logOut = Strings.tr("Localizable", "_logOut", fallback: "Log Out")
  internal static let low = Strings.tr("Localizable", "_low", fallback: "Low")
  internal static let medium = Strings.tr("Localizable", "_medium", fallback: "Medium")
  internal static let metadata = Strings.tr("Localizable", "_metadata", fallback: "Metadata")
  internal static let moreOptions = Strings.tr("Localizable", "_moreOptions", fallback: "More Options")
  internal static let move = Strings.tr("Localizable", "_move", fallback: "Move")
  internal static let name = Strings.tr("Localizable", "_name", fallback: "Name")
  internal static let nextcloudServerAddress = Strings.tr("Localizable", "_nextcloudServerAddress", fallback: "Nextcloud Server Address")
  internal static let noConnection = Strings.tr("Localizable", "_noConnection", fallback: "No Connection")
  internal static let noConnectionMessage = Strings.tr("Localizable", "_noConnectionMessage", fallback: "Could not connect to the Nextcloud Passwords instance.")
  internal static let notes = Strings.tr("Localizable", "_notes", fallback: "Notes")
  internal static let nothingToSeeHere = Strings.tr("Localizable", "_nothingToSeeHere", fallback: "Nothing to see here …")
  internal static let numbers = Strings.tr("Localizable", "_numbers", fallback: "Numbers")
  internal static let offline = Strings.tr("Localizable", "_offline", fallback: "Offline")
  internal static let openUrl = Strings.tr("Localizable", "_openUrl", fallback: "Open URL")
  internal static let options = Strings.tr("Localizable", "_options", fallback: "Options")
  internal static let otp = Strings.tr("Localizable", "_otp", fallback: "One-Time Password")
  internal static let otps = Strings.tr("Localizable", "_otps", fallback: "One-Time Passwords")
  internal static let password = Strings.tr("Localizable", "_password", fallback: "Password")
  internal static let passwords = Strings.tr("Localizable", "_passwords", fallback: "Passwords")
  internal static let passwordServiceErrorMessage = Strings.tr("Localizable", "_passwordServiceErrorMessage", fallback: "An error occurred while generating the password.")
  internal static let passwordStatusBreachedMessage = Strings.tr("Localizable", "_passwordStatusBreachedMessage", fallback: "This password is not safe to use. It has been found in a database of compromised passwords.")
  internal static let passwordStatusDuplicateMessage = Strings.tr("Localizable", "_passwordStatusDuplicateMessage", fallback: "This password is being used more than once.")
  internal static let passwordStatusGoodMessage = Strings.tr("Localizable", "_passwordStatusGoodMessage", fallback: "This password is safe to use. It has not been breached and doesn't violate user defined rules.")
  internal static let passwordStatusOutdatedMessage = Strings.tr("Localizable", "_passwordStatusOutdatedMessage", fallback: "This password has reached the maximum age.")
  internal static let passwordStatusUnknownMessage = Strings.tr("Localizable", "_passwordStatusUnknownMessage", fallback: "This password has not yet been checked for its security or the option to store hashes for security checks is disabled.")
  internal static let periodSeconds = Strings.tr("Localizable", "_periodSeconds", fallback: "Period (Seconds)")
  internal static let providerInstructionsMessage = Strings.tr("Localizable", "_providerInstructionsMessage", fallback: "This app supports Password AutoFill. The feature has to be enabled in iOS's Settings app:\n1. Open the Settings app\n2. Tap Passwords\n3. Tap AutoFill Passwords\n4. Enable AutoFill Passwords\n5. Enable this app")
  internal static let qrCaptureErrorMessage = Strings.tr("Localizable", "_qrCaptureErrorMessage", fallback: "An error occurred while launching the camera.")
  internal static let reject = Strings.tr("Localizable", "_reject", fallback: "Reject")
  internal static let rootFolder = Strings.tr("Localizable", "_rootFolder", fallback: "Root Folder")
  internal static let scanQrCode = Strings.tr("Localizable", "_scanQrCode", fallback: "Scan QR Code")
  internal static let secret = Strings.tr("Localizable", "_secret", fallback: "Secret")
  internal static let security = Strings.tr("Localizable", "_security", fallback: "Security")
  internal static let select = Strings.tr("Localizable", "_select", fallback: "Select")
  internal static let selectColor = Strings.tr("Localizable", "_selectColor", fallback: "Select Color")
  internal static let serverAddressFieldMessage = Strings.tr("Localizable", "_serverAddressFieldMessage", fallback: "An HTTPS connection is required.")
  internal static let serverSide = Strings.tr("Localizable", "_serverSide", fallback: "Server Side")
  internal static let service = Strings.tr("Localizable", "_service", fallback: "Service")
  internal static let settings = Strings.tr("Localizable", "_settings", fallback: "Settings")
  internal static let shareOtpWarningMessage = Strings.tr("Localizable", "_shareOtpWarningMessage", fallback: "This QR code contains highly sensitive data about the one-time password")
  internal static let shareQrCode = Strings.tr("Localizable", "_shareQrCode", fallback: "Share QR Code")
  internal static let sourceCode = Strings.tr("Localizable", "_sourceCode", fallback: "Source Code")
  internal static let specialCharacters = Strings.tr("Localizable", "_specialCharacters", fallback: "Special Characters")
  internal static let storePassword = Strings.tr("Localizable", "_storePassword", fallback: "Store Password")
  internal static let storePasswordMessage = Strings.tr("Localizable", "_storePasswordMessage", fallback: "If this option is enabled, the E2E password is stored encrypted in your device's keychain.")
  internal static let strength = Strings.tr("Localizable", "_strength", fallback: "Strength")
  internal static let suggestions = Strings.tr("Localizable", "_suggestions", fallback: "Suggestions")
  internal static let supportThisProject = Strings.tr("Localizable", "_supportThisProject", fallback: "Support This Project")
  internal static let tag = Strings.tr("Localizable", "_tag", fallback: "Tag")
  internal static let tags = Strings.tr("Localizable", "_tags", fallback: "Tags")
  internal static let text = Strings.tr("Localizable", "_text", fallback: "Text")
  internal static let thanksMessage = Strings.tr("Localizable", "_thanksMessage", fallback: "Thanks to the entire Nextcloud community and everybody involved for enabling such an amazing ecosystem. I hope that I can contribute something with this app.")
  internal static let timeBased = Strings.tr("Localizable", "_timeBased", fallback: "Time-Based")
  internal static let tipDeferred = Strings.tr("Localizable", "_tipDeferred", fallback: "Tip Deferred")
  internal static let tipDeferredMessage = Strings.tr("Localizable", "_tipDeferredMessage", fallback: "Your tip is now waiting for approval.")
  internal static let tipFailed = Strings.tr("Localizable", "_tipFailed", fallback: "Tip Failed")
  internal static let tipFailedMessage = Strings.tr("Localizable", "_tipFailedMessage", fallback: "An error occurred while processing your tip.")
  internal static let tipReceived = Strings.tr("Localizable", "_tipReceived", fallback: "Tip Received")
  internal static let tipReceivedMessage = Strings.tr("Localizable", "_tipReceivedMessage", fallback: "Thank you for supporting this project with your tip!")
  internal static let tryAgain = Strings.tr("Localizable", "_tryAgain", fallback: "Try Again")
  internal static let type = Strings.tr("Localizable", "_type", fallback: "Type")
  internal static let ultra = Strings.tr("Localizable", "_ultra", fallback: "Ultra")
  internal static let unlockApp = Strings.tr("Localizable", "_unlockApp", fallback: "Unlock App")
  internal static let updated = Strings.tr("Localizable", "_updated", fallback: "Updated")
  internal static let url = Strings.tr("Localizable", "_url", fallback: "URL")
  internal static let username = Strings.tr("Localizable", "_username", fallback: "Username")
  internal static let valueCopied = Strings.tr("Localizable", "_valueCopied", fallback: "Value Copied")
  internal static let version = Strings.tr("Localizable", "_version", fallback: "Version")
}
// swiftlint:enable function_parameter_count identifier_name line_length type_body_length

// MARK: - Implementation Details

extension Strings {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
