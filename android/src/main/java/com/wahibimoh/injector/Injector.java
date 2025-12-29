package com.wahibimoh.injector;

import com.getcapacitor.Logger;

public class Injector {

    public String echo(String value) {
        Logger.info("Echo", value);
        return value;
    }
}
