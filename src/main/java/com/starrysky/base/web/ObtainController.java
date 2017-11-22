package com.starrysky.base.web;

import com.sdicons.json.mapper.MapperException;
import com.starrysky.base.service.GeneralPurposeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
public class ObtainController {
    @Autowired
    private GeneralPurposeService generalPurposeService;
    /**
     *获得数据1
     */
 /*   @RequestMapping(value={"combination/{tableNameEN}/data1","find/{tableNameEN}/data1"}, produces = "application/json; charset=utf-8" )
    @ResponseBody
    public List<Map<String, Object>> financeApplyLogs(@PathVariable String tableNameEN) throws MapperException {
        System.out.println("获得数据:"+tableNameEN);
        generalPurposeService.init(tableNameEN);
        List<Map<String,Object>> list = generalPurposeService.findAll();
        System.out.println(list);
        return list;
    }*/
}
