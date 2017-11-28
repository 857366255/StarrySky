package com.starrysky.sys.web;

import com.sdicons.json.mapper.MapperException;
import com.starrysky.sys.service.OperationDataService;
import com.starrysky.sys.vo.Params;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;



/**
 * 操作数据控制层
 */
@Controller
public class OperationDataController {

    @Autowired
    private OperationDataService operationDataService;
    /**
     *获得数据
     */
    @RequestMapping(value="data/{tableNameEn}", produces = "application/json; charset=utf-8" )
    @ResponseBody
    public List<Map<String, Object>> data(@PathVariable String tableNameEn,Params params) throws MapperException {
        System.out.println("获得数据:");
        return operationDataService.getListData(tableNameEn,  params.getQuery()==null ? new HashMap<String, Object>() : params.getQuery());
    }
    /**
     * 创建数据
     * @param tableNameEn 表名称
     */
    @RequestMapping(value="create/{tableNameEn}",method=RequestMethod.POST)
    public String create(@RequestParam Map<String, Object> map, @PathVariable String tableNameEn){
        if(operationDataService.doCreate(tableNameEn,map)){
            System.out.println("保存成功");
        }else{
            System.out.println("保存失败");
        }
        return "redirect:"+tableNameEn;
    }
    /**
     * 删除数据
     * @param tableNameEn 表名称
     */
    @RequestMapping(value={"remove/{tableNameEn}/{id}"},method=RequestMethod.DELETE)
    @ResponseBody
    public void remove(@RequestParam Map<String, Object> map, @PathVariable String tableNameEn, @PathVariable String id){
        Map<String, Object> findMap = new HashMap<String, Object>();
        findMap.put("id",id);
        if(operationDataService.doRemove(tableNameEn,findMap)){
            System.out.println("删除成功");
        }else{
            System.out.println("删除失败");
        }
    }
    /**
     * 数据
     * @param tableNameEn 表名称
     */
    @RequestMapping(value={"update/{tableNameEn}"},method=RequestMethod.PUT)
    public String update(@RequestParam Map<String, Object> map,@PathVariable String tableNameEn){
        if(operationDataService.doUpdate(tableNameEn,map)){
            System.out.println("修改成功");
        }else{
            System.out.println("修改失败");
        }
        return "redirect:"+tableNameEn+"/"+map.get("id");
    }
}
