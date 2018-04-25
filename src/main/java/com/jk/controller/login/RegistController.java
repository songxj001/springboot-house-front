package com.jk.controller.login;

import com.jk.model.login.Temp;
import com.jk.service.login.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping(value = "regist")
public class RegistController {

    @Autowired
    private LoginService loginService;

    @RequestMapping(value = "regist")
    @ResponseBody
    public Map<String,Object> login(Temp tmp) {
        tmp.setId(UUID.randomUUID().toString().replaceAll("-",""));
        HashMap<String, Object> map = new HashMap<>();
        // System.out.println(emp);
        try{
            loginService.regist(tmp);
            map.put("success",true);
        }catch (Exception e){
            map.put("success",false);
        }
        return map;
    }

}

