package com.jk.service.loginAPP;

import com.jk.mapper.loginAPP.UserLoginMapper;
import com.jk.model.login.Temp;
import com.jk.utils.ConBean;
import com.jk.utils.HttpClient;
import com.jk.utils.Md5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;

@Service
public class UserLoginServiceImpl implements UserLoginService{
    @Autowired
    private RedisTemplate<String,String> redisTemplate;

    @Autowired
    private UserLoginMapper userLoginMapper;

    /**
     * 手机短信登录
     * @param phonenumer
     * @param verification
     * @return
     */
    @Override
    public Temp getUserNumber(String phonenumer, String verification) {
        Temp emp = userLoginMapper.getUserNumber(phonenumer);
        if (emp != null && redisTemplate.opsForValue().get(phonenumer+"checkcode")!=null) {
            if (verification.equals(redisTemplate.opsForValue().get(phonenumer+"checkcode"))){
                redisTemplate.delete(emp.getPhonenumer()+"checkcode");
                return emp;
            }
        }else{
            return emp;
        }
        return null;
    }


    /**
     * 生成6位随机数切调用 切查询用户手机号
     * @param phonenumer
     * @return
     * @throws IOException
     */
    public Integer getInterfaceSmS(String phonenumer) throws Exception {
        Temp empSmS = userLoginMapper.getUserNumber(phonenumer);
        if (empSmS != null){
            int random = (int) ((Math.random()*9+1)*100000);
            sendSMS(phonenumer,random);
            redisTemplate.opsForValue().set(phonenumer+"checkcode",random+"",5, TimeUnit.MINUTES);
            System.out.println(redisTemplate.opsForValue().get(phonenumer+"checkcode"));
            return 1;
        }else {

            return 2;
        }
    }

    /**
     * 通过 md5 + HTTPclient 调用短信接口
     * @param args
     * @param random
     * @throws IOException
     */
    public static void sendSMS(String args, Integer random) throws IOException {
        HashMap<String, Object> params = new HashMap<String, Object>();
        params.put("accountSid", ConBean.SMS_selfID);
        params.put("templateid",ConBean.SMS_mobanId);
        params.put("param",random+",5");
        params.put("to",args);
        params.put("timestamp", ConBean.SMS_Time);
        params.put("sig", Md5Util.getMd532(params.get("accountSid").toString()+ConBean.SMS_PSD+params.get("timestamp").toString()));
        HttpClient.post(ConBean.SMS_URL, params);
    }

}
