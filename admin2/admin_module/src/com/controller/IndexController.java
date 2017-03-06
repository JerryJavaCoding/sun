package com.controller;

import com.jfinal.core.Controller;

/**
 * Created by Administrator on 2017/2/18.
 */
public class IndexController extends Controller {
    public void index() {
        render("/index.jsp");
    }
}
