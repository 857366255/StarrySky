package com.starrysky.sys.web;


import com.starrysky.base.service.GeneralPurposeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class FindController {

    @Autowired
    private GeneralPurposeService generalPurposeService;

    /**
     * 打开列表页面
     * @param tableNameEN 表名称
     */
    @RequestMapping(value = "find/{tableNameEN}",method= RequestMethod.GET)
    public String goFind(Map<String, Object> map, @PathVariable String tableNameEN){
        generalPurposeService.init("s_field");
        Map<String, Object> findMap = new HashMap<String, Object>();
        findMap.put("table_name",tableNameEN);
        List<Map<String,Object>> list = generalPurposeService.findByCondition(findMap);
        System.out.println(list);
        map.put("field",list);
        map.put("tableNameEN",tableNameEN);
        return "sys/find";
    }
}
