package com.jk.service.login;

import com.jk.mapper.login.LoginMapper;
import com.jk.model.login.Temp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginMapper loginMapper;

    //图片验证码登陆
    @Override
    public Temp login(String loginnumber) {
        return loginMapper.login(loginnumber);
    }

    @Override
    public void regist(Temp tmp) {
        loginMapper.regist(tmp);
    }


}
