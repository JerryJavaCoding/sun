package com.controller;

import com.jfinal.core.Controller;

/**
 * Created by Dong¶« on 2017/2/16.
 */
public class IndexController extends Controller {
    public void index() {
        render("/index.jsp");
    }
}
