package com.jk.mapper.foot;

import com.jk.model.foot.Foot;
import com.jk.model.foot.HouseResource;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface FootMapper {

    @Insert("insert into t_foot(id,uid,hid,type) values(#{id},#{uid},#{hid},#{type})")
    void insert(Foot foot);

    @Select("SELECT a.* FROM  t_foot fo \n" +
            "\t\tLEFT JOIN t_sell_house_resource a ON a.id = fo.hid \n" +
            "\t\tWHERE TYPE = #{type} \n" +
            "\t\tAND uid = #{uid} \n" +
            "\t\tORDER BY createTime DESC ")
    List<HouseResource> footSelect(Integer page, Integer rows, @Param("type")String type, @Param("uid")String uid);
}
