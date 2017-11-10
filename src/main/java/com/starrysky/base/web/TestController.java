package com.starrysky.base.web;

import com.starrysky.base.service.CreateService;
import com.starrysky.base.service.FindService;
import com.starrysky.base.service.GeneralPurposeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

/**
 * Created by wz on 2017/10/18.
 */
@Controller
public class TestController {

    @Autowired
    private FindService findService;
    @Autowired
    private CreateService createService;

    @RequestMapping(value = "data/tables",method= RequestMethod.GET)
    public String goLogin(Map<String, Object> map){
        return "data-tables";
    }

    /**
     * 打开列表页面
     */
    @RequestMapping(value = "test",method= RequestMethod.GET)
    public String test(Map<String, Object> map){
        /*System.out.println("查询数据2");
        List<Map<String, Object>> mapList = findService.getData("s_menu");
        System.out.println(mapList);*/
        map.put("tableNameEN","s_menu");
        return "test";
    }


    /**
     * 打开列表页面

    @RequestMapping(value = "test",method= RequestMethod.GET)
    public String safad(Map<String, Object> map){
        System.out.println("查询数据2");
        List<Map<String, Object>> mapList = findService.getData("s_menu");
        System.out.println(mapList);
        map.put("list",mapList);
        return "menu";
    }*/
    /**
     * 打开更新页面
     *//*
    @RequestMapping(value = "update/s_menu",method= RequestMethod.GET)
    public String update(Map<String, Object> map){
        List<Map<String, Object>> mapList = findService.getData("s_menu");
        map.put("data",mapList.get(1));
        map.put("fieldList", createService.getFieldList("s_menu"));
        map.put("tableNameEN","s_menu");
        return "update";
    }
    *//**
     * 创建数据
     * @param tableNameEn 表名称
     *//*
    @RequestMapping(value={"update/{tableNameEn}/update"},method=RequestMethod.PUT)
    public String login(@RequestParam Map<String, Object> map, @PathVariable String tableNameEn){
        if(createService.doCreate(tableNameEn,map)){
            System.out.println("保存成功");
        }else{
            System.out.println("保存失败");
        }
        return "redirect:../"+tableNameEn;
    }*/

}
