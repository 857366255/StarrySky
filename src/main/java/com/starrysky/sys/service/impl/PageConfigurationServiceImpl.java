package com.starrysky.sys.service.impl;


import com.starrysky.sys.service.GeneralPurposeService;
import com.starrysky.sys.service.PageConfigurationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 同步数据库
 * Created by wz on 2017/11/10.
 */
@Service
public class PageConfigurationServiceImpl implements PageConfigurationService {
    @Autowired
    private GeneralPurposeService generalPurposeService;

    public void getListField(Map<String, Object> map,String tableNameEn){
        generalPurposeService.init("s_field");
        Map<String, Object> findMap = new HashMap<String, Object>();
        findMap.put("table_name",tableNameEn);
        List<Map<String,Object>> list = generalPurposeService.findByCondition(findMap);
        map.put("field",list);
        map.put("tableNameEN",tableNameEn);
    }
    public void getCreateField(Map<String, Object> map,String tableNameEn){
        map.put("fieldList", getFieldList(tableNameEn));
        map.put("tableNameEN",tableNameEn);
    }

    public void getUpdateField(Map<String, Object> map,String tableNameEn){
        map.put("fieldList", getFieldList(tableNameEn));
        map.put("tableNameEN",tableNameEn);
    }

    public void  getCombinationField(Map<String, Object> map,String tableNameEn){
        map.put("fieldList", getFieldList(tableNameEn));
        map.put("tableNameEN",tableNameEn);
        generalPurposeService.init(tableNameEn);
        List<Map<String, Object>> multipleFkList = generalPurposeService.getGeneralPurpose().getMultipleFkList();
        for(Map<String, Object> m : multipleFkList){
            generalPurposeService.init("s_table");
            Map<String, Object> findMap = new HashMap<String, Object>();
            findMap.put("name_en",m.get("table_name_en"));
            m.put("name",generalPurposeService.findByCondition(findMap).get(0).get("name_ch"));
            m.put("fieldList",getFieldList((String) m.get("table_name_en")));
        }
        map.put("multipleFkList",multipleFkList);
    }

    public List<Map<String, Object>> getData(String tableNameEn){
        generalPurposeService.init(tableNameEn);
        Map<String, Object> findMap = new HashMap<String, Object>();
        findMap.put("superiors_id","is null");
        List<Map<String, Object>> mapList = generalPurposeService.findByCondition(findMap);
        Map<String, Object> meFkMap = generalPurposeService.getGeneralPurpose().getMeFkMap();
        List<Map<String, Object>> singleFkList = generalPurposeService.getGeneralPurpose().getSingleFkList();
        List<Map<String, Object>> multipleFkList = generalPurposeService.getGeneralPurpose().getMultipleFkList();
        return mapList;
    }


    private List<Map<String, Object>> getFieldList(String tableNameEn) {
        generalPurposeService.init(tableNameEn);
        List<Map<String,Object>> list = generalPurposeService.getGeneralPurpose().getFieldListMap();
        for(Map<String,Object> m : list){
            if(m.get("input_type") instanceof String && m.get("input_type").equals("select")){
                List<Map<String, Object>> singleFkList = generalPurposeService.getGeneralPurpose().getSingleFkList();
                for(Map<String, Object> singleFkMap:singleFkList){
                    if(singleFkMap.get("field_name_en").equals(m.get("name_en"))){
                        generalPurposeService.init((String) singleFkMap.get("referenced_table_name_en"));
                        List<String> fkDisplayList = generalPurposeService.getGeneralPurpose().getFkDisplayList();
                        List<Map<String, Object>> selectMap = generalPurposeService.findAll();
                        if(fkDisplayList.size()!=0){
                            for(Map<String, Object> sMap:selectMap){
                                List<Object> stemp = new ArrayList<Object>();
                                for(String s: fkDisplayList){
                                    stemp.add(sMap.get(s));
                                }
                                sMap.put("val",stemp);
                                sMap.put("key",sMap.get((String) singleFkMap.get("referenced_field_name_en")));
                            }
                            m.put("select_map",selectMap);
                        }
                        generalPurposeService.init(tableNameEn);
                    }
                }
            }
        }
        return list;
    }
}
