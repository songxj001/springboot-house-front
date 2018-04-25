package com.jk.service.login;

import com.jk.model.login.Temp;

public interface LoginService {
    //图片登陆
    Temp login(String loginnumber);

    void regist(Temp tmp);
}
