package com.common;

import com.controller.AdminController;
import com.controller.IndexController;
import com.interceptor.AuthenticationInterceptor;
import com.jfinal.config.*;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;
import com.jfinal.template.Engine;
import com.model.Admin;

import java.lang.*;

/**
 * Created by xue on 2017/2/18.
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
        me.setBaseViewPath("/WEB-INF/view");
        me.add("/", IndexController.class);
        me.add("/admin", AdminController.class);
    }

    public void configEngine(Engine me) {

    }

    public void configPlugin(Plugins me) {
        C3p0Plugin c3p0Plugin = new C3p0Plugin(PropKit.get("jdbcUrl"), PropKit.get("user"), PropKit.get("password"));
        ActiveRecordPlugin arp = new ActiveRecordPlugin(c3p0Plugin);
        arp.setShowSql(true);
        arp.addMapping("admin","Id", Admin.class);
        me.add(c3p0Plugin);
        me.add(arp);
    }

    /**
     * @param me
     */
    public void configInterceptor(Interceptors me) {
        me.addGlobalActionInterceptor(new AuthenticationInterceptor());
    }

    @Override
    public void configHandler(Handlers me) {

    }
}
