package com.wahibimoh.injector;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "Injector")
public class InjectorPlugin extends Plugin {

    @Override
    public void load() {
        String script = getConfig().getString("android");
        if(script != null && !script.isEmpty()) {
            //inject script into webview
            getBridge().getWebView().evaluateJavascript(script, null);
        }
    }
}
