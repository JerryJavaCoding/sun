package com.controller;

import com.jfinal.core.Controller;
import com.model.User;

import java.util.List;

/**
 * Created by Administrator on 2017/2/14.
 */
public class UserController extends Controller {
    public void gotoregister(){
        render("register.jsp");
    }
    public void gotologin(){render("login.jsp");}
    public void gotoupdate(){render("update.jsp");}
    public void gotodelete(){render("delete.jsp");}
    public void gotoselect(){render("select_middle.jsp");}
    public void dologin(){
        String name = getPara("username");
        String password = getPara("password");

        List users = User.dao.find("SELECT * FROM user WHERE name = '"+name+"' AND pwd = '"+password+"'");
        setAttr("users", users);
        if(users.size() > 0){
            System.out.println("登录成功");
        }else{
            System.out.println("登录失败");
        }
        gotologin();
    }

    /**
     * 注意方法名只能全部小写
     */
    public void doregister(){

        User user = getModel(User.class);
        user.save();
        System.out.println("注册成功");
        gotologin();
    }

    public void doupdate(){
        User user = getModel(User.class);
        user.update();
        System.out.println("修改成功");
        gotologin();
    }
    public void dodelete(){
        User.dao.deleteById(getParaToInt("user.Id"));
        System.out.println("删除成功");
        gotologin();
    }
    public void dolist() {
        List userList = User.dao.find("select * from user");
        setAttr("userList",userList);
        System.out.println("查询成功");
        renderJson("userlist",userList);
        render("list.jsp");
}
}
