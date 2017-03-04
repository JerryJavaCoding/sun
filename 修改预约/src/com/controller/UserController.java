package com.controller;

import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import com.model.*;

import java.util.List;

/**
 * Created by Administrator on 2017/3/3.
 */
public class UserController extends Controller {
    public void gotomain(){
        List users = User.dao.find("SELECT * FROM user WHERE Id = "+getParaToInt()+"");
        setAttr("users",users);
        List articles = Article.dao.find("select title,aId from article");
        setAttr("articles", articles);
        System.out.println("查询成功");
        render("main.jsp");
    }
    public void domyyu(){
        List users = User.dao.find("SELECT * FROM user WHERE Id = "+getParaToInt()+"");
        setAttr("users",users);
        List<Record> yuyues = Db.find("select user.name,yuyue.oId,user.tel,yuyue.uid,yuyue.lei,yuyue.bing,\n" +
                "yuyue.deal,pet.PId,pet.tname,yuyue.time,yuyue.ordertime,doctor.dname,yuyue.did \n" +
                "from yuyue,user,pet,doctor where yuyue.uid=user.Id and yuyue.pid=pet.PId \n" +
                "and yuyue.did=doctor.dId and deal='否'and user.Id= " + getParaToInt() + "");
        setAttr("yuyues", yuyues);
        System.out.println("查询成功");
        render("order.jsp");

    }
    //预约处理
    public void dodeal(){
        List yuyues = com.model.Yuyue.dao.find("select user.name,yuyue.oId,user.tel,yuyue.uid,yuyue.lei,yuyue.bing,\n" +
                "yuyue.deal,pet.PId,pet.tname,yuyue.time,yuyue.ordertime,doctor.dname\n" +
                "from yuyue,user,pet,doctor where yuyue.uid=user.Id and yuyue.pid=pet.PId \n" +
                "and yuyue.did=doctor.dId and yuyue.oId= "+getParaToInt()+"");
        setAttr("yuyues",yuyues);
        System.out.println("查询成功");
        render("deal.jsp");
    }
    public void douseryu(){
        List doctors = Doctor.dao.find("SELECT * FROM doctor WHERE office = '病诊'");
        setAttr("doctors",doctors);
        List doctor = Doctor.dao.find("SELECT * FROM doctor WHERE office = '美容'");
        setAttr("doctor",doctor);
        List users = User.dao.find("SELECT * FROM user WHERE Id = "+getParaToInt()+"");
        setAttr("users",users);
        List userfind = User.dao.find("SELECT user.Id,user.name,pet.PId,pet.tname" +
                " FROM user,pet WHERE user.Id=pet.owid and user.Id = "+getParaToInt()+"");
        setAttr("userfind",userfind);
        render("yuyue.jsp");

    }
    public void douser(){
        List users = User.dao.find("SELECT * FROM user WHERE Id = "+getParaToInt()+"");
        setAttr("users",users);
        render("message.jsp");

    }
    public void domypet(){
        List pets = Pet.dao.find("SELECT * FROM pet WHERE owid = "+getParaToInt()+"");
        setAttr("pets",pets);
        render("pet.jsp");

    }
    public void doadd(){
        Yuyue yuyue = getModel(Yuyue.class);
        yuyue.save();
        System.out.println("添加成功");
        List users = User.dao.find("SELECT * FROM user WHERE Id = "+getParaToInt()+"");
        List articles = Article.dao.find("select title,aId from article");
        setAttr("articles", articles);
        setAttr("users",users);
        render("main.jsp");

    }
}
