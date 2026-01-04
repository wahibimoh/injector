package com.wahibimoh.injector;

import com.getcapacitor.Plugin;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "Injector")
public class InjectorPlugin extends Plugin {

    @Override
    public void load() {
        final String scriptToInject = getConfig().getString("android");

        if (scriptToInject != null && !scriptToInject.isEmpty()) {
            new android.os.Handler(android.os.Looper.getMainLooper()).postDelayed(() -> {
                getBridge().getWebView().evaluateJavascript(scriptToInject, null);
            }, 500);
        }
    }
}