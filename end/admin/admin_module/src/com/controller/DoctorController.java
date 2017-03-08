package com.controller;

import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import com.model.Announcement;
import com.model.Article;
import com.model.Doctor;
import com.model.Yuyue;

import java.util.List;

/**
 * Created by Administrator on 2017/3/2.
 */
public class DoctorController extends Controller {
    public void gotomain(){
        List doctors = Doctor.dao.find("SELECT * FROM doctor WHERE dId = "+getParaToInt()+"");
        setAttr("doctors",doctors);
        List article=Article.dao.find("select title,left(content,173) as 'content' from article where aId=(select max(aId) from article);");
        setAttr("article",article);
        List articles = Article.dao.find("select title,aId from article");
        setAttr("articles", articles);
        Page<Article> pageList = Article.dao.paginate(1,5);
        setAttr("pageList", pageList);
        System.out.println("查询成功");
        render("main.jsp");
        }
    //分页
    public void dopage() {
        String id = getPara("id");
        Integer size = getParaToInt("size");
        List doctors = Doctor.dao.find("SELECT * FROM doctor WHERE dId = '"+id+"'");
        setAttr("doctors",doctors);
        List article=Article.dao.find("select title,left(content,173) as 'content' from article where aId=(select max(aId) from article);");
        setAttr("article",article);
        List articles = Article.dao.find("select title,aId from article");
        setAttr("articles", articles);
        Page<Article> pageList = Article.dao.paginate(size,5);
        setAttr("pageList", pageList);
        System.out.println("查询成功");
        render("main.jsp");
    }
    //预约已办
    public void dorderdai(){
        List doctors = Doctor.dao.find("SELECT * FROM doctor WHERE dId = "+getParaToInt()+"");
        setAttr("doctors",doctors);
        List<Record> yuyues = Db.find("select user.name,yuyue.oId,user.tel,yuyue.uid,yuyue.lei,yuyue.bing,\n" +
                "yuyue.deal,pet.PId,pet.tname,yuyue.time,yuyue.ordertime,doctor.dname,yuyue.did \n" +
                "from yuyue,user,pet,doctor where yuyue.uid=user.Id and yuyue.pid=pet.PId \n" +
                "and yuyue.did=doctor.dId and deal='否'and doctor.dId= "+getParaToInt()+"");
        setAttr("yuyues", yuyues);
        System.out.println("查询成功");
        render("order.jsp");
    }
    //预约待办
    public void dorderyi(){
        List doctors = Doctor.dao.find("SELECT * FROM doctor WHERE dId = "+getParaToInt()+"");
        setAttr("doctors",doctors);
        List<Record> yuyues = Db.find("select user.name,yuyue.oId,user.tel,yuyue.uid,yuyue.lei,yuyue.bing,\n" +
                "yuyue.deal,pet.PId,pet.tname,yuyue.time,yuyue.ordertime,doctor.dname\n" +
                "from yuyue,user,pet,doctor where yuyue.uid=user.Id and yuyue.pid=pet.PId \n" +
                "and yuyue.did=doctor.dId and deal='是'and doctor.dId= "+getParaToInt()+"");
        setAttr("yuyues", yuyues);
        System.out.println("查询成功");
        render("order.jsp");
    }
    //预约处理
    public void dorder(){
        List yuyues = com.model.Yuyue.dao.find("select user.name,yuyue.oId,user.tel,yuyue.uid,yuyue.lei,yuyue.bing,\n" +
                "yuyue.deal,pet.PId,pet.tname,yuyue.time,yuyue.ordertime,doctor.dname\n" +
                "from yuyue,user,pet,doctor where yuyue.uid=user.Id and yuyue.pid=pet.PId \n" +
                "and yuyue.did=doctor.dId and yuyue.oId= "+getParaToInt()+"");
        setAttr("yuyues",yuyues);
        System.out.println("查询成功");
        render("deal.jsp");
    }
    public void dodeal(){
        Yuyue yuyue = getModel(Yuyue.class);
        yuyue.update();
        System.out.println("修改成功");
    }
    public void doarselect(){
        List articles = Article.dao.find("select * from article where aId= "+getParaToInt()+"");
        setAttr("articles",articles);
        System.out.println("查询成功");
        render("1.jsp");
    }
    public void aedit(){
        List announcements = Announcement.dao.find("select * from announcement");
        setAttr("announcements", announcements);
        render("announce.jsp");

    }
    public void message(){
        List doctors=Doctor.dao.find("select * from doctor where dId= "+getParaToInt()+"");
        setAttr("doctors", doctors);
        render("message.jsp");
    }
}
