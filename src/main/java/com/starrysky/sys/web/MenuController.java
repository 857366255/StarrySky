package com.starrysky.sys.web;

import com.starrysky.base.service.FindService;
import com.starrysky.base.service.GeneralPurposeService;
import com.starrysky.sys.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class MenuController {

    @Autowired
    private MenuService menuService;
    @Autowired
    private FindService findService;
    @Autowired
    private GeneralPurposeService generalPurposeService;
    /**
     * 打开列表页面
     * @param tableNameEn 表名称
     */
    @RequestMapping(value = "find/{tableNameEn}",method= RequestMethod.GET)
    public String goFind(Map<String, Object> map, @PathVariable String tableNameEn){
        menuService.getListField(map,tableNameEn);
        return "sys/find";
    }

    /**
     * 打开创建页面
     * @param tableNameEn 表名称
     */
    @RequestMapping(value = "create/{tableNameEn}",method= RequestMethod.GET)
    public String goList(@PathVariable String tableNameEn, Map<String, Object> map){
        menuService.getCreateField(map,tableNameEn);
        return "sys/create";
    }
    /**
     * 打开创建页面
     * @param tableNameEn 表名称
     */
    @RequestMapping(value = "update/{tableNameEn}/{id}",method= RequestMethod.GET)
    public String goList(@PathVariable String tableNameEn,@PathVariable String id, Map<String, Object> map){
        menuService.getUpdateField(map,tableNameEn);
        generalPurposeService.init(tableNameEn);
        Map<String, Object> findMap = new HashMap<String, Object>();
        findMap.put("id",id);
        Map<String, Object> mapList = generalPurposeService.findById(findMap);
        map.put("data",mapList);
        return "sys/update";
    }
    /**
     * 打开组合页面
     * @param tableNameEn 表名称
     */
    @RequestMapping(value = "combination/{tableNameEn}",method= RequestMethod.GET)
    public String goCombination(Map<String, Object> map, @PathVariable String tableNameEn){
        menuService.getCombinationField(map, tableNameEn);
        List<Map<String, Object>> mapList = findService.getData(tableNameEn);
        map.put("data",mapList.get(0));
        return "sys/combination-window";
    }

}
