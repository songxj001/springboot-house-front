package com.jk.utils.druidConfig;


import com.alibaba.druid.support.http.WebStatFilter;

import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;

/**
 * 配置druid过滤规则
 * @author Administrator
 *
 */

@WebFilter(filterName = "druidWebStatFilter",urlPatterns = "/*",initParams = {
        @WebInitParam(name = "exclusions",value="*.js,*.gif,*.jpg,*.bmp,*.png,*.css,*.ico,/druid/*")// 忽略资源)
})
public class DruidStatFilter extends WebStatFilter{

}