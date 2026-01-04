import Foundation
import Capacitor
import WebKit

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
        if let script = getConfig().getString("ios"), let webView = self.bridge?.webView {
            let userScript = WKUserScript(
                source: script,
                injectionTime: .atDocumentEnd,
                forMainFrameOnly: true
            )
            webView.configuration.userContentController.addUserScript(userScript)
        }
    }
}
