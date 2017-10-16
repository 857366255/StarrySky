package com.starrysky.base.web;

import com.starrysky.base.dao.GeneralPurposeDao;
import com.starrysky.base.service.GeneralPurposeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wz on 2017/10/16.
 */
@Controller
public class ListController {

    @Autowired
    private GeneralPurposeService generalPurposeService;
    //@Autowired
    //private GeneralPurposeDao generalPurposeDao;

    private List<Map<String,Object>> zxc(){

        System.out.println("查询所有人");
        generalPurposeService.init("s_input");
       // System.out.println(generalPurposeService.findAll());
        return generalPurposeService.findAll();
    }
    @RequestMapping(value = "list")
    public String goList(Map<String, Object> map){
        List<Map<String,Object>> list = zxc();
        /*int[] intArray = { 4, 2, 2, 4,3,3,3,3, 4,4,4,4,8,12,13 };
        for(int i=0;i<intArray.length;i++){
            Map<String,Object> map1 = new HashMap<String, Object>();
            map1.put("id",i);
            map1.put("name",1);
            map1.put("test",intArray[i]-1);
            list.add(map1);
        }*/
        map.put("list", list);
        System.out.println("asd4");
        return "index";
    }
    @RequestMapping(value = "form")
    public String login(@RequestParam Map<String, Object> map){
        System.out.println("login");
        System.out.println(map);
        map.put("message","错误的账号或密码!");
        return "login";
    }
}
