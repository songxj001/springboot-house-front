package com.jk.mapper.loginAPP;

import com.jk.model.login.Temp;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

@Mapper
@Component
public interface UserLoginMapper {
    @Select("SELECT * FROM t_emp where phonenumer=#{phonenumer}")
    Temp getUserNumber(String phonenumer);
}
