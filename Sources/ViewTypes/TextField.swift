#if !os(watchOS)
/// An abstract representation of the `TextField` type in SwiftUI.
///
/// ### iOS
///
/// ```swift
/// struct ContentView: View {
///     @State var text = "Lorem ipsum"
///
///     var body: some View {
///         TextField("Text Field", text: $text)
///             .introspect(.textField, on: .iOS(.v13, .v14, .v15, .v16, .v17, .v18, .v26)) {
///                 print(type(of: $0)) // UITextField
///             }
///     }
/// }
/// ```
///
/// ### tvOS
///
/// ```swift
/// struct ContentView: View {
///     @State var text = "Lorem ipsum"
///
///     var body: some View {
///         TextField("Text Field", text: $text)
///             .introspect(.textField, on: .tvOS(.v13, .v14, .v15, .v16, .v17, .v18, .v26)) {
///                 print(type(of: $0)) // UITextField
///             }
///     }
/// }
/// ```
///
/// ### macOS
///
/// ```swift
/// struct ContentView: View {
///     @State var text = "Lorem ipsum"
///
///     var body: some View {
///         TextField("Text Field", text: $text)
///             .introspect(.textField, on: .macOS(.v10_15, .v11, .v12, .v13, .v14, .v15, .v26)) {
///                 print(type(of: $0)) // NSTextField
///             }
///     }
/// }
/// ```
///
/// ### visionOS
///
/// ```swift
/// struct ContentView: View {
///     @State var text = "Lorem ipsum"
///
///     var body: some View {
///         TextField("Text Field", text: $text)
///             .introspect(.textField, on: .visionOS(.v1, .v2, .v26)) {
///                 print(type(of: $0)) // UITextField
///             }
///     }
/// }
/// ```
public struct TextFieldType: IntrospectableViewType {}

extension IntrospectableViewType where Self == TextFieldType {
    public static var textField: Self { .init() }
}

#if canImport(UIKit)
public import UIKit

extension iOSViewVersion<TextFieldType, UITextField> {
    public static let v13 = Self(for: .v13)
    public static let v14 = Self(for: .v14)
    public static let v15 = Self(for: .v15)
    public static let v16 = Self(for: .v16)
    public static let v17 = Self(for: .v17)
    public static let v18 = Self(for: .v18)
    public static let v26 = Self(for: .v26)
}

extension tvOSViewVersion<TextFieldType, UITextField> {
    public static let v13 = Self(for: .v13)
    public static let v14 = Self(for: .v14)
    public static let v15 = Self(for: .v15)
    public static let v16 = Self(for: .v16)
    public static let v17 = Self(for: .v17)
    public static let v18 = Self(for: .v18)
    public static let v26 = Self(for: .v26)
}

extension visionOSViewVersion<TextFieldType, UITextField> {
    public static let v1 = Self(for: .v1)
    public static let v2 = Self(for: .v2)
    public static let v26 = Self(for: .v26)
}
#elseif canImport(AppKit)
public import AppKit

extension macOSViewVersion<TextFieldType, NSTextField> {
    public static let v10_15 = Self(for: .v10_15)
    public static let v11 = Self(for: .v11)
    public static let v12 = Self(for: .v12)
    public static let v13 = Self(for: .v13)
    public static let v14 = Self(for: .v14)
    public static let v15 = Self(for: .v15)
    public static let v26 = Self(for: .v26)
}
#endif
#endif
