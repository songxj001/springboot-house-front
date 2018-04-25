package com.jk.service.foot;

import com.jk.mapper.foot.FootMapper;
import com.jk.model.foot.Foot;
import com.jk.model.foot.HouseResource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FootServiceImpl implements FootService {

    @Autowired
    private FootMapper footMapper;


    @Override
    public void insert(Foot foot) {

        footMapper.insert(foot);

    }

    @Override
    public List<HouseResource> footSelect(Integer page, Integer rows, String type, String uid) {
        return footMapper.footSelect(page,rows,type,uid);
    }
}
