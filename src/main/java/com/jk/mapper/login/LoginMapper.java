package com.jk.mapper.login;
import com.jk.model.login.Temp;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

@Mapper
@Component
public interface LoginMapper {

    @Select("SELECT * FROM t_emp WHERE loginnumber=#{loginnumber}")
    Temp login(String loginnumber);

    @Insert("insert into t_emp(id,name,phonenumer,password) values(#{id},#{name},#{phonenumer},#{password})")
    void regist(Temp tmp);
}
