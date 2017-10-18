package com.starrysky.base.web;

import com.starrysky.base.service.GeneralPurposeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wz on 2017/10/16.
 */
@Controller
public class CreateController {

    private String TABLE = "s_menu";

    @Autowired
    private GeneralPurposeService generalPurposeService;

    private List<Map<String,Object>> zxc(){
        System.out.println("查询所有人");
        generalPurposeService.init(TABLE);
        return generalPurposeService.getFieldMap();
    }
    @RequestMapping(value = "create",method= RequestMethod.GET)
    public String goList(Map<String, Object> map){
        List<Map<String,Object>> list = zxc();
        System.out.println(list);

        for(Map m : list){
            if(m.get("select_group") instanceof String && !m.get("select_group").equals("")){
                generalPurposeService.init("s_select");
                Map<String, Object> tempMap = new HashMap<String, Object>();
                tempMap.put("select_group",m.get("select_group"));
                m.put("select_group",generalPurposeService.findByCondition(tempMap));
            }
        }
        System.out.println(list);
        map.put("input", list);
        return "create";
    }
    @RequestMapping(value = "create",method=RequestMethod.POST)
    public String login(@RequestParam Map<String, Object> map){
        generalPurposeService.init(TABLE);
        generalPurposeService.doCreate(map);
        return "redirect:create";
    }
}
