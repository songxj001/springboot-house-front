package com.jk.utils;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;

/**
 * 
 * Copyright © 2017 金科教育. All rights reserved. <br>
 * 类: JsonUtil <br>
 * 描述: json工具类 <br>
 * 作者: Teacher song<br>
 * 时间: 2017年7月20日 下午4:42:38
 */
public class JsonUtil {
	
	/**
	 *  
     * 将字符串转成实体类，允许斜杠等字符串 
     */  
   public static <T> T jsonToEntity(String json, Class<T> clazz) throws IOException {  
       ObjectMapper mapper = new ObjectMapper();  
       // 允许反斜杆等字符  
       mapper.configure(JsonParser.Feature.ALLOW_UNQUOTED_CONTROL_CHARS,true);  
       return mapper.readValue(json, clazz);  
   }  
	 /** 
     * 将字符串转成JsonNode，允许斜杠等字符串 
     */  
    public static JsonNode jsonToJsonNode(String json) throws IOException {  
        ObjectMapper mapper = new ObjectMapper();  
        // 允许反斜杆等字符  
        mapper.configure(JsonParser.Feature.ALLOW_UNQUOTED_CONTROL_CHARS,true);  
        //允许单引号  
        mapper.configure(JsonParser.Feature.ALLOW_SINGLE_QUOTES,true);  
        return mapper.readValue(json, JsonNode.class);  
    }
    /** 
     * 实体类转JSON字符串 
     */  
    public static String entityToJson(Object entity){  
        return JSON.toJSONString(entity);  
    }  
    public static <T> String objectToJson(Object object, Class<T> cls)throws Exception {  
        ObjectMapper mapper = new ObjectMapper();  
        mapper.registerSubtypes(cls);  
        String reqJson = mapper.writeValueAsString(object);  
        return reqJson;  
    }  
      
}
