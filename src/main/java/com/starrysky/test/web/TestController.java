package com.starrysky.test.web;

import com.alibaba.fastjson.JSON;
import com.starrysky.sys.service.OperationDataService;
import com.starrysky.sys.service.PageConfigurationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 打开页面控制层
 */
@Controller
public class TestController {

    @Autowired
    private PageConfigurationService pageConfigurationService;
    @Autowired
    private OperationDataService operationDataService;

    /**
     * 打开列表页面
     * @param tableNameEn 表名称
     */
    @RequestMapping(value = "test/{tableNameEn}",method= RequestMethod.GET)
    public String goFind(Map<String, Object> map, @PathVariable String tableNameEn){
        System.out.println("测试");
        pageConfigurationService.getListField(map,tableNameEn);
        Map<String,Object> listParams = getListParams(tableNameEn);
        System.out.println(JSON.toJSONString(listParams));
        map.put("listParams", JSON.toJSONString(listParams));
        return "test/list";
    }

    private Map<String,Object> getListParams(String tableNameEn){
        Map<String,Object> listParams = new HashMap<String, Object>();
        listParams.put("url","/"+tableNameEn);
        listParams.put("method","get");
        listParams.put("pageNumber","1");
        listParams.put("pageSize","10");
        List<Integer> list =  new ArrayList<Integer>();
        list.add(10);
        list.add(25);
        list.add(50);
        list.add(100);
        listParams.put("pageList",list);
        listParams.put("uniqueId","id");
        List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("field","id");
        map.put("title","id");
        mapList.add(map);
        map = new HashMap<String, Object>();
        map.put("field","name");
        map.put("title","名字");
        mapList.add(map);
        map = new HashMap<String, Object>();
        map.put("field","operate");
        map.put("title","操作");
        map.put("events","operateEvents");
        map.put("formatter","operateFormatter");
        mapList.add(map);
        listParams.put("columns",mapList);
        return listParams;
    }
}
/*[
       {: ,
            field: 'Name',
                    title: ''
        }, {
            field: 'Sex',
                    title: '性别'
        },
        {
            field: '',
                    title: '',
                :  //自定义方法，添加操作按钮
        },
            ]*/