package com.jk.controller.loginAPP;

import com.jk.model.login.Temp;
import com.jk.service.loginAPP.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "login")
public class UserLoginController {
    @Autowired
    private UserLoginService userLoginService;


    //跳转到首页
    @RequestMapping(value = "toIndex",method = RequestMethod.GET)
    public String toIndex(){
        return "index";
    }

    /**
     * 我就跳一下
     */
    @RequestMapping(value = "toLoginPage")
    public String toLoginPage (){
        return "login";
    }

    /**
     *  手机号短信验证码 判断验证登录
     * @param phonenumer
     * @param verification
     * @param
     * @return
     */
    @RequestMapping(value = "userLoginMethod")
    @ResponseBody
    public Map<String  ,Object> userLoginMethod(String phonenumer, String verification, HttpServletRequest request){
        Map<String,Object> map = new HashMap<String ,Object>();
        HttpSession session = request.getSession();
        Temp emp = userLoginService.getUserNumber(phonenumer,verification);
        try {
            if (emp != null){
                session.setAttribute(session.getId(),emp);
                //session.setAttribute("emp",emp);
                map.put("success",true);
            }else {
                map.put("success",false);
                map.put("messager","用户不存在");
            }
        }catch (Exception e){
            e.printStackTrace();
            map.put("success",false);
        }
        return map;
    }

    /**
     * 短信接口调用
     */
    @RequestMapping(value = "getInterfaceSMS")
    @ResponseBody
    public Map<String  ,Object> getInterfaceSMS(String phonenumer){
        Map<String  ,Object> map = new HashMap<String,Object>();
        try {
            Integer  state =  userLoginService.getInterfaceSmS(phonenumer);
            System.out.println(state);
            map.put("success",state);
        }catch (Exception e){
            e.printStackTrace();
            map.put("success",3);
        }

        return map;
    }

}
