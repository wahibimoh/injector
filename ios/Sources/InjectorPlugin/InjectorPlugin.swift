import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(InjectorPlugin)
public class InjectorPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "InjectorPlugin"
    public let jsName = "Injector"
    public let pluginMethods: [CAPPluginMethod] = []

    override public func load() {
        if let script = getConfig().getString("ios") {
            //inject script to webview
            self.bridge?.webView?.evaluateJavaScript(script, completionHandler: nil)
        }
    }
}
