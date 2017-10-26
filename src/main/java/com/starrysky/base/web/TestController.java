package com.starrysky.base.web;

import com.starrysky.base.service.CreateService;
import com.starrysky.base.service.FindService;
import com.starrysky.base.service.GeneralPurposeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.Map;

/**
 * Created by wz on 2017/10/18.
 */
@Controller
public class TestController {

    @Autowired
    private FindService findService;

    @RequestMapping(value = "data/tables",method= RequestMethod.GET)
    public String goLogin(Map<String, Object> map){
        return "data-tables";
    }

    /**
     * 打开列表页面
     */
    @RequestMapping(value = "test",method= RequestMethod.GET)
    public String safad(Map<String, Object> map){
        System.out.println("查询数据");
        List<Map<String, Object>> mapList = findService.getData("s_menu");
        System.out.println(mapList);
        map.put("list",mapList);
        return "menu";
    }


}
