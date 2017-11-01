package com.starrysky.base.service.impl;

import com.starrysky.base.service.GeneralPurposeService;
import com.starrysky.base.service.UpdateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class UpdateServiceImpl implements UpdateService {

    @Autowired
    private GeneralPurposeService generalPurposeService;

    public List<Map<String, Object>> getFieldList(String tableNameEn) {
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

    public Boolean doUpdate(String tableNameEn,Map<String, Object> map) {
        generalPurposeService.init(tableNameEn);
        return generalPurposeService.doUpdate(map);
    }
}
