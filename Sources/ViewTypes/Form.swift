#if !os(watchOS)
/// An abstract representation of the `Form` type in SwiftUI.
///
/// ### iOS
///
/// ```swift
/// struct ContentView: View {
///     var body: some View {
///         Form {
///             Text("Item 1")
///             Text("Item 2")
///             Text("Item 3")
///         }
///         .introspect(.form, on: .iOS(.v13, .v14, .v15)) {
///             print(type(of: $0)) // UITableView
///         }
///         .introspect(.form, on: .iOS(.v16, .v17, .v18, .v26)) {
///             print(type(of: $0)) // UICollectionView
///         }
///     }
/// }
/// ```
///
/// ### tvOS
///
/// ```swift
/// struct ContentView: View {
///     var body: some View {
///         Form {
///             Text("Item 1")
///             Text("Item 2")
///             Text("Item 3")
///         }
///         .introspect(.form, on: .tvOS(.v13, .v14, .v15, .v16, .v17, .v18, .v26)) {
///             print(type(of: $0)) // UITableView
///         }
///     }
/// }
/// ```
///
/// ### macOS
///
/// Not available.
///
/// ### visionOS
///
/// ```swift
/// struct ContentView: View {
///     var body: some View {
///         Form {
///             Text("Item 1")
///             Text("Item 2")
///             Text("Item 3")
///         }
///         .introspect(.form, on: .visionOS(.v1, .v2, .v26)) {
///             print(type(of: $0)) // UICollectionView
///         }
///     }
/// }
/// ```
public struct FormType: IntrospectableViewType {}

#if !os(macOS)
extension IntrospectableViewType where Self == FormType {
    public static var form: Self { .init() }
}

#if canImport(UIKit)
public import UIKit

extension iOSViewVersion<FormType, UITableView> {
    public static let v13 = Self(for: .v13)
    public static let v14 = Self(for: .v14)
    public static let v15 = Self(for: .v15)
}

extension iOSViewVersion<FormType, UICollectionView> {
    public static let v16 = Self(for: .v16)
    public static let v17 = Self(for: .v17)
    public static let v18 = Self(for: .v18)
    public static let v26 = Self(for: .v26)
}

extension tvOSViewVersion<FormType, UITableView> {
    public static let v13 = Self(for: .v13)
    public static let v14 = Self(for: .v14)
    public static let v15 = Self(for: .v15)
    public static let v16 = Self(for: .v16)
    public static let v17 = Self(for: .v17)
    public static let v18 = Self(for: .v18)
    public static let v26 = Self(for: .v26)
}

extension visionOSViewVersion<FormType, UICollectionView> {
    public static let v1 = Self(for: .v1)
    public static let v2 = Self(for: .v2)
    public static let v26 = Self(for: .v26)
}
#endif
#endif
#endif
