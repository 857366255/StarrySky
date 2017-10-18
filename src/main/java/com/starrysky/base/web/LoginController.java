package com.starrysky.base.web;

import com.starrysky.base.service.GeneralPurposeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wz on 2017/10/18.
 */
@Controller
public class LoginController {
    @Autowired
    private GeneralPurposeService generalPurposeService;

    @RequestMapping(value = "login",method= RequestMethod.GET)
    public String goLogin(Map<String, Object> map){
        generalPurposeService.init("s_menu");
        List<Map<String, Object>> list = generalPurposeService.findAll();
        map.put("menu", list);
        return "index";
    }
}
