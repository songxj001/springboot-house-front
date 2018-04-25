
package com.jk.controller.foot;

import com.jk.model.foot.Foot;
import com.jk.model.foot.HouseResource;
import com.jk.service.foot.FootService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping(value = "foot")
public class FootController {

    @Autowired
    private FootService footService;

    @RequestMapping(value = "footinsert")
    @ResponseBody
    public  void footinsert(String uid, String hid,String type) {
        //ceshi
         Foot foot  =  new Foot();

        foot.setId(UUID.randomUUID().toString().replaceAll("-",""));
        foot.setHid(hid);
        foot.setType(type);
        foot.setUid(uid);

        try{

            footService.insert(foot);

        }catch (Exception e){
            e.printStackTrace();
        }

    }


        @RequestMapping(value = "footSelect")
        @ResponseBody
        public List<HouseResource> footSelect (Integer page, Integer rows,String type, String uid){
            List<HouseResource> list = footService.footSelect(page, rows,type,uid);
            // System.out.println(list);
            // JSONObject jsonObject = new JSONObject();
            /*Map<String, Object> map = new HashMap<String, Object>();
            map.put("code",0);
            map.put("msg","");
            map.put("count",list.size());
            map.put("data",list);*/
            return list;
        }

        //return null;

    }






