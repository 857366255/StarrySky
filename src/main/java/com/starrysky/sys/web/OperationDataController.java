package com.starrysky.sys.web;

import com.sdicons.json.mapper.MapperException;
import com.starrysky.base.service.GeneralPurposeService;
import com.starrysky.sys.service.OperationDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
     *获得数据1
     */

    @RequestMapping(value="data/{tableNameEn}/{find}", produces = "application/json; charset=utf-8" )
    @ResponseBody
    public List<Map<String, Object>> financeApplyLogs(@PathVariable String tableNameEn,@PathVariable String find) throws MapperException {
        Map<String, Object> findMap = new HashMap<String, Object>();
        System.out.println(find);
        if(find.equals("all")){
            return operationDataService.getListData(tableNameEn,findMap);
        }else{
            findMap.put("id",find);
            System.out.println("adsadasdas");
            return operationDataService.getListData(tableNameEn,findMap);
        }


    }
    @RequestMapping(value="data/{tableNameEn}", produces = "application/json; charset=utf-8" )
    @ResponseBody
    public List<Map<String, Object>> findALL(@PathVariable String tableNameEn,@PathVariable Integer id) throws MapperException {
        System.out.println("asd");
        return operationDataService.getListData(tableNameEn,new HashMap<String, Object>());
    }
}
