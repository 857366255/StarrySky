package com.starrysky.sys.web;


import com.starrysky.sys.service.UserService;
import com.starrysky.sys.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * Created by wz on 2017/8/22.
 */
@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "login")
    public String login(User user, Map<String, Object> map){
        System.out.println("login");
        if(userService.login(user)){
            return "index";
        }
        map.put("message","错误的账号或密码!");
        return "login";
    }

    @RequestMapping(value = "signout")
    public String signout(){
        return "login";
    }

}
