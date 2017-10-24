package com.starrysky.base.web;

import com.starrysky.base.service.CreateService;
import com.starrysky.base.service.FindService;
import com.starrysky.base.service.GeneralPurposeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
    private FindService findService;

    @Autowired
    private CreateService createService;

    @Autowired
    private GeneralPurposeService generalPurposeService;

    @RequestMapping(value = "login",method= RequestMethod.GET)
    public String goLogin(Map<String, Object> map){
        List<Map<String, Object>> mapList = findService.getRecursionData("s_menu");
        map.put("menu",mapList);
        return "index";
    }
   /* @RequestMapping(value = "combination/{tableNameEn}",method= RequestMethod.GET)
    public String combination(Map<String, Object> map,@PathVariable String tableNameEn){
        map.put("fieldList", createService.getFieldList(tableNameEn));
        List<Map<String, Object>> mapList = findService.getData(tableNameEn);
        map.put("data",mapList.get(0));
        map.put("tableNameEN",tableNameEn);
        generalPurposeService.init(tableNameEn);
        List<Map<String, Object>> multipleFkList = generalPurposeService.getGeneralPurpose().getMultipleFkList();
        for(Map<String, Object> m : multipleFkList){
           generalPurposeService.init("s_table");
           Map<String, Object> findMap = new HashMap<String, Object>();
           findMap.put("name_en",m.get("table_name_en"));
           m.put("name",generalPurposeService.findByCondition(findMap).get(0).get("name_ch"));
           m.put("fieldList",createService.getFieldList((String) m.get("table_name_en")));
        }
        map.put("multipleFkList",multipleFkList);
        return "combination-window";
    }*/
}
