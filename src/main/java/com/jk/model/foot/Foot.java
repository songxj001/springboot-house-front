package com.jk.model.foot;

import java.io.Serializable;

public class Foot implements Serializable {

    private String id;

    private String type;

    private String hid;

    private String uid;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getHid() {
        return hid;
    }

    public void setHid(String hid) {
        this.hid = hid;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    @Override
    public String toString() {
        return "Foot{" +
                "id='" + id + '\'' +
                ", type='" + type + '\'' +
                ", hid='" + hid + '\'' +
                ", uid='" + uid + '\'' +
                '}';
    }
}

