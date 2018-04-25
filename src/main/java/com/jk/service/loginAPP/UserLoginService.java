package com.jk.service.loginAPP;

import com.jk.model.login.Temp;

public interface UserLoginService {
    Temp getUserNumber(String phonenumer, String verification);

    Integer getInterfaceSmS(String phonenumer) throws Exception;
}
