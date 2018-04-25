package com.jk.model.foot;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 */
public class HouseResource implements Serializable {


    private static final long serialVersionUID = 9020724501996853893L;
    //主键ID
    private String id;
    //与人员表关联
    private String emp_id;

    private String name;
    //主题1
    private String title;
    //价格2
    private Integer price;
    //室
    private Integer room;
    //厅
    private Integer hall;
    //卫
    private Integer toilet;
    //建筑面积
    private Double  house_area;
    //所在小区2
    private String  community;
    //省
    private Integer province;
    //市
    private Integer city;
    //县
    private Integer county;
    //建筑年代1
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date building_time;
    //房屋类型1
    private String room_type;
    //房屋朝向
    private String room_direction;
    //所在楼层1
    private String house_floor;
    //装修程度
    private String decorate;
    //房屋单价
    private Double unit_price;
    //参考月供
    private Double monthly_payments;
    //核心卖点
    private String selling_point;
    //业主心态
    private String owner_mentality;
    //小区配套
    private String community_complete;
    //服务介绍
    private String service_introduce;
    //发布时间1
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date release_time;
    //房号
    private String room_num;
    //租金
    private  Double   rent_money;

    //押金
    private  Double   deposit_money;
    //押金业务字段   将押金转换为汉字
    private String chineseMepositMoney;

    public String getChineseMepositMoney() {
        return chineseMepositMoney;
    }

    public void setChineseMepositMoney(String chineseMepositMoney) {
        this.chineseMepositMoney = chineseMepositMoney;
    }

    //房源状态（1、待租 2、已售）
    private Integer housing_state;


    private Integer  price_min;

    private Integer  price_max;

    private  Double   house_areaMin;

    private  Double   house_areaMax;

    private  Integer  house_type;

    private String value;

    //链接图片ID
    private String photo;
    //图片展示
    private String pht;

    private String names;
    //价格类型  业务字段
    private Integer pricetype;

    public Integer getPricetype() {
        return pricetype;
    }

    public void setPricetype(Integer pricetype) {
        this.pricetype = pricetype;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getEmp_id() {
        return emp_id;
    }

    public void setEmp_id(String emp_id) {
        this.emp_id = emp_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getRoom() {
        return room;
    }

    public void setRoom(Integer room) {
        this.room = room;
    }

    public Integer getHall() {
        return hall;
    }

    public void setHall(Integer hall) {
        this.hall = hall;
    }

    public Integer getToilet() {
        return toilet;
    }

    public void setToilet(Integer toilet) {
        this.toilet = toilet;
    }

    public Double getHouse_area() {
        return house_area;
    }

    public void setHouse_area(Double house_area) {
        this.house_area = house_area;
    }

    public String getCommunity() {
        return community;
    }

    public void setCommunity(String community) {
        this.community = community;
    }

    public Integer getProvince() {
        return province;
    }

    public void setProvince(Integer province) {
        this.province = province;
    }

    public Integer getCity() {
        return city;
    }

    public void setCity(Integer city) {
        this.city = city;
    }

    public Integer getCounty() {
        return county;
    }

    public void setCounty(Integer county) {
        this.county = county;
    }

    public String getBuilding_time() {
        if(building_time==null){
            return null;
        }
        SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd");
        return sim.format(building_time);
    }

    public void setBuilding_time(Date building_time) {
        this.building_time = building_time;
    }

    public String getRoom_type() {
        return room_type;
    }

    public void setRoom_type(String room_type) {
        this.room_type = room_type;
    }

    public String getRoom_direction() {
        return room_direction;
    }

    public void setRoom_direction(String room_direction) {
        this.room_direction = room_direction;
    }

    public String getHouse_floor() {
        return house_floor;
    }

    public void setHouse_floor(String house_floor) {
        this.house_floor = house_floor;
    }

    public String getDecorate() {
        return decorate;
    }

    public void setDecorate(String decorate) {
        this.decorate = decorate;
    }

    public Double getUnit_price() {
        return unit_price;
    }

    public void setUnit_price(Double unit_price) {
        this.unit_price = unit_price;
    }

    public Double getMonthly_payments() {
        return monthly_payments;
    }

    public void setMonthly_payments(Double monthly_payments) {
        this.monthly_payments = monthly_payments;
    }

    public String getSelling_point() {
        return selling_point;
    }

    public void setSelling_point(String selling_point) {
        this.selling_point = selling_point;
    }

    public String getOwner_mentality() {
        return owner_mentality;
    }

    public void setOwner_mentality(String owner_mentality) {
        this.owner_mentality = owner_mentality;
    }

    public String getCommunity_complete() {
        return community_complete;
    }

    public void setCommunity_complete(String community_complete) {
        this.community_complete = community_complete;
    }

    public String getService_introduce() {
        return service_introduce;
    }

    public void setService_introduce(String service_introduce) {
        this.service_introduce = service_introduce;
    }

    public String getRelease_time() {
        if(release_time==null){
            return null;
        }
        SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd");
        return sim.format(release_time);
    }

    public void setRelease_time(Date release_time) {
        this.release_time = release_time;
    }

    public String getRoom_num() {
        return room_num;
    }

    public void setRoom_num(String room_num) {
        this.room_num = room_num;
    }

    public Double getRent_money() {
        return rent_money;
    }

    public void setRent_money(Double rent_money) {
        this.rent_money = rent_money;
    }

    public Double getDeposit_money() {
        return deposit_money;
    }

    public void setDeposit_money(Double deposit_money) {
        this.deposit_money = deposit_money;
    }

    public Integer getHousing_state() {
        return housing_state;
    }

    public void setHousing_state(Integer housing_state) {
        this.housing_state = housing_state;
    }

    public Integer getPrice_min() {
        return price_min;
    }

    public void setPrice_min(Integer price_min) {
        this.price_min = price_min;
    }

    public Integer getPrice_max() {
        return price_max;
    }

    public void setPrice_max(Integer price_max) {
        this.price_max = price_max;
    }

    public Double getHouse_areaMin() {
        return house_areaMin;
    }

    public void setHouse_areaMin(Double house_areaMin) {
        this.house_areaMin = house_areaMin;
    }

    public Double getHouse_areaMax() {
        return house_areaMax;
    }

    public void setHouse_areaMax(Double house_areaMax) {
        this.house_areaMax = house_areaMax;
    }

    public Integer getHouse_type() {
        return house_type;
    }

    public void setHouse_type(Integer house_type) {
        this.house_type = house_type;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getPht() {
        return pht;
    }

    public void setPht(String pht) {
        this.pht = pht;
    }

    public String getNames() {
        return names;
    }

    public void setNames(String names) {
        this.names = names;
    }

    @Override
    public String toString() {
        return "HouseResource{" +
                "id='" + id + '\'' +
                ", emp_id='" + emp_id + '\'' +
                ", name='" + name + '\'' +
                ", title='" + title + '\'' +
                ", price=" + price +
                ", room=" + room +
                ", hall=" + hall +
                ", toilet=" + toilet +
                ", house_area=" + house_area +
                ", community='" + community + '\'' +
                ", province=" + province +
                ", city=" + city +
                ", county=" + county +
                ", building_time=" + building_time +
                ", room_type='" + room_type + '\'' +
                ", room_direction='" + room_direction + '\'' +
                ", house_floor='" + house_floor + '\'' +
                ", decorate='" + decorate + '\'' +
                ", unit_price=" + unit_price +
                ", monthly_payments=" + monthly_payments +
                ", selling_point='" + selling_point + '\'' +
                ", owner_mentality='" + owner_mentality + '\'' +
                ", community_complete='" + community_complete + '\'' +
                ", service_introduce='" + service_introduce + '\'' +
                ", release_time=" + release_time +
                ", room_num='" + room_num + '\'' +
                ", rent_money=" + rent_money +
                ", deposit_money=" + deposit_money +
                ", chineseMepositMoney='" + chineseMepositMoney + '\'' +
                ", housing_state=" + housing_state +
                ", price_min=" + price_min +
                ", price_max=" + price_max +
                ", house_areaMin=" + house_areaMin +
                ", house_areaMax=" + house_areaMax +
                ", house_type=" + house_type +
                ", value='" + value + '\'' +
                ", photo='" + photo + '\'' +
                ", pht='" + pht + '\'' +
                ", names='" + names + '\'' +
                '}';
    }
}
