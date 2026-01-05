package com.wahibimoh.injector;

import com.getcapacitor.Plugin;
import com.getcapacitor.annotation.CapacitorPlugin;

import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import java.util.Collections;

@CapacitorPlugin(name = "Injector")
public class InjectorPlugin extends Plugin {

    @Override
    public void load() {
        final String scriptToInject = getConfig().getString("android");

        if (scriptToInject != null && !scriptToInject.isEmpty()) {
            if (WebViewFeature.isFeatureSupported(WebViewFeature.DOCUMENT_START_SCRIPT)) {
                WebViewCompat.addDocumentStartJavaScript(getBridge().getWebView(), scriptToInject, Collections.singleton("*"));
            }
        }
    }
}