package com.starrysky.base.service.impl;

import com.starrysky.base.service.CreateService;
import com.starrysky.base.service.GeneralPurposeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service
public class CreateServiceImpl implements CreateService{

    @Autowired
    private GeneralPurposeService generalPurposeService;

    public List<Map<String, Object>> getFieldList(String tableNameEn) {
        /*generalPurposeService.init("s_field");
        Map<String, Object> findMap = new HashMap<String, Object>();
        findMap.put("table_name",tableNameEn);
        List<Map<String,Object>> list = generalPurposeService.findByCondition(findMap);*/
        generalPurposeService.init(tableNameEn);
        List<Map<String,Object>> list = generalPurposeService.getGeneralPurpose().getFieldListMap();
        System.out.println(list);
        for(Map<String,Object> m : list){
            if(m.get("input_type") instanceof String && m.get("input_type").equals("select")){

               /* generalPurposeService.init("s_select");
                Map<String, Object> tempMap = new HashMap<String, Object>();
                tempMap.put("select_group",m.get("select_group"));
                m.put("select_group",generalPurposeService.findByCondition(tempMap));*/
                //System.out.println("m:"+m);
                List<Map<String, Object>> singleFkList = generalPurposeService.getGeneralPurpose().getSingleFkList();
                for(Map<String, Object> singleFkMap:singleFkList){
                    if(singleFkMap.get("field_name_en").equals(m.get("name_en"))){
                        generalPurposeService.init((String) singleFkMap.get("referenced_table_name_en"));
                        System.out.println(singleFkMap);
                        List<String> fkDisplayList = generalPurposeService.getGeneralPurpose().getFkDisplayList();
                        System.out.println("显示外键:"+fkDisplayList);
                        List<Map<String, Object>> selectMap = generalPurposeService.findAll();
                        if(fkDisplayList.size()!=0){
                            for(Map<String, Object> sMap:selectMap){
                                List<Object> stemp = new ArrayList<Object>();
                                for(String s: fkDisplayList){
                                    stemp.add(sMap.get(s));
                                }
                                sMap.put("val",stemp);
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

    public Boolean doCreate(String tableNameEn,Map<String, Object> map) {
        generalPurposeService.init(tableNameEn);
        return generalPurposeService.doCreate(map);
    }
}
