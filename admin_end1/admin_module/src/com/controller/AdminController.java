package com.controller;

import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import com.model.*;

import java.util.List;

/**
 * Created by xue on 2017/2/18.
 */
public class AdminController extends Controller {
    public void gotologin(){render("login.jsp");}
    public void gotomain(){render("main.jsp");}
    public void tologin(){
        String name = getPara("name");
        String password = getPara("password");
        String person = getPara("person");
        if (person.equals("管理员")){
            List admins = Admin.dao.find("SELECT * FROM admin WHERE name = '"+name+"'" +
                    " AND pwd = '"+password+"'");
            setAttr("admins", admins);
            if(admins.size() > 0){
                System.out.println("登录成功");
                doarticle();
            }else{
                System.out.println("登录失败");
                gotologin();
            }

        }else if(person.equals("用户")){
            List users = User.dao.find("SELECT * FROM user WHERE name = '"+name+"'" +
                    " AND pwd = '"+password+"'");
            setAttr("users",users);
            if(users.size() > 0){
                System.out.println("登录成功");
                render("doforwarduser.jsp");
            }else{
                System.out.println("登录失败");
            }

        }else{
            List doctors = Doctor.dao.find("SELECT * FROM doctor WHERE dname = '"+name+"'" +
                    " AND dpwd = '"+password+"'");
            setAttr("doctors",doctors);
            if(doctors.size() > 0){
                System.out.println("登录成功");
                render("domiddle.jsp");
            }else{
                System.out.println("登录失败");
            }

        }
    }
    //查询用户
    public void douserselect(){
        String Id = getPara("Id");
        String name = getPara("name");

        List users = User.dao.find("SELECT * FROM user WHERE name = '"+name+"' AND Id = '"+Id+"'");
        setAttr("users",users);
        if(users.size() > 0){
            System.out.println("登录成功");
            render("controller.jsp");
        }else{
            System.out.println("登录失败");
            gotologin();
        }
    }
    //多用户查询
    public void douserlist(){
        List users = User.dao.find("select * from user");
        setAttr("users",users);
        System.out.println("查询成功");
        render("controller.jsp");
    }

    //添加用户
    public void doregister(){

        User user = getModel(User.class);
        user.save();
        System.out.println("注册成功");
        douserlist();
    }

    //注销用户
    public void douserdelete(){

        User.dao.deleteById(getParaToInt("Id"));
        System.out.println("删除成功");
        douserlist();
    }

    //编辑用户
    public void douseredit(){

        User user = getModel(User.class);
        user.update();
        System.out.println("修改成功");
        douserlist();
    }

    //多宠物查询
    public void dopetlist(){
        List<Record> pets = Db.find("select pet.PId, pet.tname,pet.identity,pet.age,user.name "
                + "from user,pet where user.Id=pet.owid;");
        setAttr("pets",pets);
        System.out.println("查询成功");
        render("petcontroller.jsp");
    }
    //查询宠物
    public void dopetselect(){
        String owid = getPara("owid");
        String tname = getPara("tname");
        List<Record> pets = Db.find("select pet.PId, pet.tname,pet.identity,pet.age,user.name "
                + "from user,pet where user.Id=pet.owid and pet.owid = '"+owid+"'" +
                " AND pet.tname = '"+tname+"'");
        setAttr("pets",pets);
        if(pets.size() > 0){
            System.out.println("登录成功");
            render("petcontroller.jsp");
        }else{
            System.out.println("登录失败");
            gotologin();
        }
    }

    //添加宠物
    public void dopetadd(){

        Pet pet = getModel(Pet.class);
        pet.save();
        System.out.println("注册成功");
        dopetlist();
    }

    //注销宠物
    public void dopetdelete(){

        Pet.dao.deleteById(getParaToInt("PId"));
        System.out.println("删除成功");
        dopetlist();
    }

    //编辑宠物
    public void dopetedit(){

        Pet pet = getModel(Pet.class);
        pet.update();
        System.out.println("修改成功");
        dopetlist();
    }

    //查询医生
    public void dodoctorselect(){
        String Id = getPara("dId");
        String name = getPara("dname");

        List doctors = Doctor.dao.find("SELECT * FROM doctor WHERE dname = '"+name+"' AND dId = '"+Id+"'");
        setAttr("doctors",doctors);
        if(doctors.size() > 0){
            System.out.println("登录成功");
            render("doctorcontroller.jsp");
        }else{
            System.out.println("登录失败");
            gotologin();
        }
    }
    //多医生查询
    public void dodoctorlist(){
        List doctors = Doctor.dao.find("select * from doctor");
        setAttr("doctors",doctors);
        System.out.println("查询成功");
        render("doctorcontroller.jsp");
    }

    //添加医生
    public void dodoctoradd(){

        Doctor doctor = getModel(Doctor.class);
        doctor.save();
        System.out.println("注册成功");
        dodoctorlist();
    }

    //注销医生
    public void dodoctordelete(){

        Doctor.dao.deleteById(getParaToInt("dId"));
        System.out.println("删除成功");
        douserlist();
    }

    //编辑医生
    public void dodoctoredit(){

        Doctor doctor = getModel(Doctor.class);
        doctor.update();
        System.out.println("修改成功");
        dodoctorlist();
    }
    //添加文章
    public void doauthoradd(){

        Article article = getModel(Article.class);
        article.save();
        System.out.println("添加成功");
        doauthorlist();
    }
    //查找文章
    public void doauthorselect(){
        String title = getPara("title");
        String name = getPara("author");
        List articles = Article.dao.find("SELECT * FROM article WHERE author = '"+name+"' AND title = '"+title+"'");
        setAttr("articles",articles);
        if(articles.size() > 0){
            System.out.println("查找成功");
            render("article.jsp");
        }else{
            System.out.println("登录失败");
            gotologin();
        }
    }
    //删除文章
    public void doauthordelete(){

        Article.dao.deleteById(getParaToInt());
        System.out.println("删除成功");
        doauthorlist();
    }
    //编辑文章
    public void doauthoredit(){

        Article article = getModel(Article.class);
        article.update();
        System.out.println("修改成功");
        doauthorlist();
    }
    //文章列表
    public void doauthorlist(){
        List articles = Article.dao.find("select aId,author,title,fen,time from article");
        setAttr("articles",articles);
        System.out.println("查询成功");
        render("article.jsp");
    }
    //main的查询
    public void doarticle() {
        List article=Article.dao.find("select title,left(content,173) as 'content' from article where aId=(select max(aId) from article);");
        setAttr("article",article);
        List articles = Article.dao.find("select title,aId from article");
        setAttr("articles", articles);
        System.out.println("查询成功");
        render("main.jsp");
    }
        //main查看文章
        public void doarselect(){
            List articles = Article.dao.find("select * from article where aId= "+getParaToInt()+"");
            setAttr("articles",articles);
            System.out.println("查询成功");
            render("1.jsp");
        }
    //main编辑文章
    public void get() {
        Article article = Article.dao.findById(getParaToInt());
        setAttr("article", article);
        System.out.println("查询成功");
        render("articleedit.jsp");
    }
    //预约个人待办查询
    public void dodaiorder() {
        List<Record> yuyues = Db.find("select user.name,yuyue.oId,user.tel,yuyue.uid,yuyue.lei,yuyue.bing,\n" +
                "yuyue.deal,pet.PId,pet.tname,yuyue.time,yuyue.ordertime,doctor.dname\n" +
                "from yuyue,user,pet,doctor where yuyue.uid=user.Id and yuyue.pid=pet.PId \n" +
                "and yuyue.did=doctor.dId and deal='否'");
        setAttr("yuyues", yuyues);
        System.out.println("查询成功");
        render("order.jsp");
    }
    //预约个人待办查询
    public void doyiorder() {
        List<Record> yuyues = Db.find("select user.name,yuyue.oId,user.tel,yuyue.uid,yuyue.lei,yuyue.bing,\n" +
                "yuyue.deal,pet.PId,pet.tname,yuyue.time,yuyue.ordertime,doctor.dname\n" +
                "from yuyue,user,pet,doctor where yuyue.uid=user.Id and yuyue.pid=pet.PId \n" +
                "and yuyue.did=doctor.dId and deal='是'");
        setAttr("yuyues", yuyues);
        System.out.println("查询成功");
        render("order.jsp");
    }
    //预约查看详情
    public void dorderview(){
        List yuyues = Yuyue.dao.find("select * from yuyue where oId= "+getParaToInt()+"");
        setAttr("yuyues",yuyues);
        System.out.println("查询成功");
        render("orderview.jsp");
    }
    //预约删除
   public void dorderdelete(){
       Yuyue.dao.deleteById(getParaToInt());
       System.out.println("删除成功");
       dodaiorder();
   }

}
