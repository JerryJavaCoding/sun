package com.controller;

import com.jfinal.core.Controller;
import com.model.User;

import java.util.List;

/**
 * Created by Administrator on 2017/2/14.
 */
public class UserController extends Controller {
    public void register(){
        render("register.jsp");
    }
    public void login(){
        render("login.jsp");
    }
    public void submit(){
        String name = getPara("username");
        String password = getPara("password");

        List users = User.dao.find("SELECT * FROM doctor WHERE name = '"+name+"' AND pwd = '"+password+"'");
        setAttr("users", users);
        if(users.size() > 0){
            System.out.println("登录成功");
        }else{
            System.out.println("登录失败");
        }
        login();
    }

    /**
     *
     */
    public void add(){

        User user = getModel(User.class,"user");
        user.set("id",9);
        user.save();
        System.out.println("注册成功");
        login();
    }
}
