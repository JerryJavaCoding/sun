package com.model;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

/**
 * Created by Administrator on 2017/2/25.
 */
public class Article extends Model<Article> {
    public static final Article dao = new Article();
    public Page<Article> paginate(int pageNumber, int pageSize){
        return paginate(pageNumber, pageSize, "select *", "from article");

    }
}
