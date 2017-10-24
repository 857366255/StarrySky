package com.starrysky.base.web;

import com.starrysky.base.service.CombinationWindowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

/**
 * 组合窗口
 * Created by wz on 2017/10/24.
 */
@Controller
public class CombinationWindowController {

    @Autowired
    private CombinationWindowService combinationWindowService;

    @RequestMapping(value = "combination/{tableNameEn}",method= RequestMethod.GET)
    public String combination(Map<String, Object> map, @PathVariable String tableNameEn){
        map.put("combination",combinationWindowService.getCombinationWindow(tableNameEn));
        return "combination-window";
    }
}
