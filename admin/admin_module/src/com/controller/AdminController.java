package com.controller;

import com.jfinal.core.Controller;
import com.model.Admin;

import java.util.List;

/**
 * Created by Administrator on 2017/2/18.
 */
public class AdminController extends Controller {
    public void gotologin(){render("login.jsp");}
    public void gotomain(){render("main.jsp");}
    public void dologin(){
        String name = getPara("name");
        String password = getPara("password");

        List admins = Admin.dao.find("SELECT * FROM admin WHERE name = '"+name+"' AND pwd = '"+password+"'");
        setAttr("admins", admins);
        if(admins.size() > 0){
            System.out.println("登录成功");
            gotomain();
        }else{
            System.out.println("登录失败");
            gotologin();
        }
        gotomain();
    }
}
