package com.jk.service.foot;

import com.jk.model.foot.Foot;
import com.jk.model.foot.HouseResource;

import java.util.List;

public interface FootService {

    void insert(Foot foot);

    List<HouseResource> footSelect(Integer page, Integer rows, String type, String uid);
}
