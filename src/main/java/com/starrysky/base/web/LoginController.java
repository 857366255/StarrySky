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
public class LoginController {
    @Autowired
    private FindService findService;

    @Autowired
    private CreateService createService;

    @Autowired
    private GeneralPurposeService generalPurposeService;

    @RequestMapping(value = "login",method= RequestMethod.GET)
    public String goLogin(Map<String, Object> map){
        List<Map<String, Object>> mapList = findService.getRecursionData("s_menu");
        map.put("menu",mapList);
        map.put("number",0);
        System.out.println(mapList);
        return "sys/index";
    }
}
