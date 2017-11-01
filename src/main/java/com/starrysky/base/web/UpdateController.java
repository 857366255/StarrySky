package com.starrysky.base.web;

import com.starrysky.base.service.FindService;
import com.starrysky.base.service.GeneralPurposeService;
import com.starrysky.base.service.UpdateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

/**
 * 更新控制层
 * Created by wz on 2017/10/16.
 */
@Controller
@RequestMapping(value = "update/")
public class UpdateController {

    @Autowired
    private UpdateService updateService;

    @Autowired
    private GeneralPurposeService generalPurposeService;

    /**
     * 打开创建页面
     * @param tableNameEn 表名称
     */
    @RequestMapping(value = "{tableNameEn}",method= RequestMethod.GET)
    public String goList(@PathVariable String tableNameEn, Map<String, Object> map){
        generalPurposeService.init(tableNameEn);
        List<Map<String, Object>> mapList = generalPurposeService.findAll();
        System.out.println(mapList);
        map.put("data",mapList.get(1));
        map.put("fieldList", updateService.getFieldList(tableNameEn));
        map.put("tableNameEN",tableNameEn);
        return "update";
    }

    /**
     * 创建数据
     * @param tableNameEn 表名称
     */
    @RequestMapping(value={"{tableNameEn}/update"},method=RequestMethod.PUT)
    public String login(@RequestParam Map<String, Object> map,@PathVariable String tableNameEn){
        if(updateService.doUpdate(tableNameEn,map)){
            System.out.println("修改成功");
        }else{
            System.out.println("修改失败");
        }
        return "redirect:../"+tableNameEn;
    }
}
