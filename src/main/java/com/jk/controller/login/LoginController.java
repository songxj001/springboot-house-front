package com.jk.controller.login;

import com.jk.model.login.Temp;
import com.jk.service.login.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "login")
public class LoginController {

    @Autowired
    private LoginService loginService;

    @RequestMapping(value = "login")
    @ResponseBody
    public Map<String,Object> login(Temp tmp) {
        Map<String, Object> map = new HashMap<String, Object>();
        //判断前台传过来的对象是否为空
        if (tmp!= null) {
            //然后判断对象里是不是空的，不为空就直去判断密码，后登陆成功
            Temp temps = loginService.login(tmp.getLoginnumber());
            if (temps != null) {
                if (temps.getPassword().equals(tmp.getPassword())) {
                    map.put("success", true);
                } else {
                    map.put("success", false);
                    map.put("mag", "密码错误");
                }
            } else {
                map.put("success", false);
                map.put("mag", "用户名不存在");
            }
            return map;
        }
        return null;
    }

}

