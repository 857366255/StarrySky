package com.starrysky.base.web;

import com.starrysky.base.service.GeneralPurposeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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


    @Autowired
    private GeneralPurposeService generalPurposeService;

    /**
     * 打开创建页面
     * @param tableNameEN 表名称
     */
    @RequestMapping(value = "create/{tableNameEN}",method= RequestMethod.GET)
    public String goList(Map<String, Object> map,@PathVariable String tableNameEN){
        generalPurposeService.init("s_field");
        Map<String, Object> findMap = new HashMap<String, Object>();
        findMap.put("table_name",tableNameEN);
        List<Map<String,Object>> list = generalPurposeService.findByCondition(findMap);
        System.out.println(list);
        for(Map m : list){
            if(m.get("select_group") instanceof String && !m.get("select_group").equals("")){
                generalPurposeService.init("s_select");
                Map<String, Object> tempMap = new HashMap<String, Object>();
                tempMap.put("select_group",m.get("select_group"));
                m.put("select_group",generalPurposeService.findByCondition(tempMap));
            }
        }
        map.put("input", list);
        map.put("tableNameEN",tableNameEN);
        return "create";
    }

    /**
     * 创建数据
     * @param tableNameEN 表名称
     * @return
     */
    @RequestMapping(value = "create/{tableNameEN}",method=RequestMethod.POST)
    public String login(@RequestParam Map<String, Object> map,@PathVariable String tableNameEN){
        generalPurposeService.init(tableNameEN);
        generalPurposeService.doCreate(map);
        return "redirect:"+tableNameEN;
    }
}
