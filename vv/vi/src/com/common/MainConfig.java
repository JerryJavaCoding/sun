package com.common;

import com.controller.IndexController;
import com.controller.UserController;
import com.interceptor.AuthenticationInterceptor;
import com.jfinal.config.*;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;
import com.jfinal.template.Engine;
import com.model.User;

import java.lang.*;

/**
 * Created by Administrator on 2017/2/14.
 */
public class MainConfig extends JFinalConfig {
    @Override
    public void configConstant(Constants me) {
        PropKit.use("config.properties");
        me.setViewType(ViewType.JSP);
        me.setEncoding("UTF-8");
        me.setDevMode(true);

    }

    public void configRoute(Routes me) {
        //所有的页面代码jsp都放在这里
        me.setBaseViewPath("/WEB-INF/view");
        //默认自动跳到登录页
        me.add("/", IndexController.class);
        me.add("/user", UserController.class);
    }

    public void configEngine(Engine me) {

    }

    public void configPlugin(Plugins me) {
        C3p0Plugin c3p0Plugin = new C3p0Plugin(PropKit.get("jdbcUrl"), PropKit.get("user"), PropKit.get("password"));
        ActiveRecordPlugin arp = new ActiveRecordPlugin(c3p0Plugin);
        arp.setShowSql(true);
        //注意这里大小写敏感，要像这样写
        arp.addMapping("user","Id", User.class);
        me.add(c3p0Plugin);
        me.add(arp);
    }

    /**
     * 拦截器代码放在这里，验证用户是否登录,详情看手册AOP章节
     * @param me
     */
    public void configInterceptor(Interceptors me) {
        me.addGlobalActionInterceptor(new AuthenticationInterceptor());
    }

    @Override
    public void configHandler(Handlers me) {

    }
}
