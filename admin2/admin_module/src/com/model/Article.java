package com.model;

import com.jfinal.plugin.activerecord.Model;

/**
 * Created by Administrator on 2017/2/25.
 */
public class Article extends Model<Article> {
    public static final Article dao = new Article();
}
