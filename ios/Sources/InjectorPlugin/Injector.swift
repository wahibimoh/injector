import Foundation

@objc public class Injector: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
