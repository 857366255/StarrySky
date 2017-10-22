package com.starrysky.base.web;

import com.starrysky.base.service.CreateService;
import com.starrysky.base.service.GeneralPurposeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
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
    private CreateService createService;

    @Autowired
    private GeneralPurposeService generalPurposeService;

    /**
     * 打开创建页面
     * @param tableNameEn 表名称
     */
    @RequestMapping(value = "create/{tableNameEn}",method= RequestMethod.GET)
    public String goList(@PathVariable String tableNameEn, Map<String, Object> map){

        map.put("fieldList", createService.getFieldList(tableNameEn));
        map.put("tableNameEN",tableNameEn);
        return "create";
    }

    /**
     * 创建数据
     * @param tableNameEn 表名称
     */
    @RequestMapping(value = "create/{tableNameEn}",method=RequestMethod.POST)
    public String login(@RequestParam Map<String, Object> map,@PathVariable String tableNameEn){
        if(createService.doCreate(tableNameEn,map)){
            System.out.println("保存成功");
        }else{
            System.out.println("保存失败");
        }
        return "redirect:"+tableNameEn;
    }
}
