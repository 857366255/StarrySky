package com.starrysky.base.web;

import com.starrysky.base.service.GeneralPurposeService;
import com.starrysky.base.service.RemoveService;
import com.starrysky.base.service.UpdateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

/**
 * 删除控制层
 * Created by wz on 2017/10/16.
 */
@Controller
@RequestMapping(value = "remove/")
public class RemoveController {

    @Autowired
    private RemoveService removeService;

    @Autowired
    private GeneralPurposeService generalPurposeService;

    /**
     * 删除数据
     * @param tableNameEn 表名称
     */
    @RequestMapping(value={"{tableNameEn}/{id}"},method=RequestMethod.DELETE)
    @ResponseBody
    public void login(@RequestParam Map<String, Object> map,@PathVariable String tableNameEn,@PathVariable String id){
        System.out.println("删除："+map);
        Map<String, Object> findMap = new HashMap<String, Object>();
        findMap.put("id",id);
        if(removeService.doRemove(tableNameEn,findMap)){
            System.out.println("删除成功");
        }else{
            System.out.println("删除失败");
        }
    }
}
