package com.starrysky.base.service.impl;

import com.starrysky.base.service.FindService;
import com.starrysky.base.service.GeneralPurposeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class FindServiceImpl implements FindService{

    @Autowired
    private GeneralPurposeService generalPurposeService;

    public List<Map<String, Object>> getFieldList(String tableNameEn) {
        generalPurposeService.init("s_field");
        Map<String, Object> findMap = new HashMap<String, Object>();
        findMap.put("table_name",tableNameEn);
        return generalPurposeService.findByCondition(findMap);
    }

    public List<Map<String, Object>> getData(String tableNameEn){
        generalPurposeService.init(tableNameEn);
        Map<String, Object> findMap = new HashMap<String, Object>();
        findMap.put("superiors_id","is null");
        List<Map<String, Object>> mapList = generalPurposeService.findByCondition(findMap);
        List<Map<String, Object>> meFkList = generalPurposeService.getGeneralPurpose().getMeFkList();
        if(meFkList.size()==1){
            for(Map<String, Object> map : mapList ){
                getMeData(map,tableNameEn,meFkList.get(0));
            }
        }
        return mapList;
    }

    /**
     * 自关联 递归循环
     * @param data 数据
     * @param tableNameEn 表
     * @param meFkMap 外键信息
     */
    private void getMeData(Map<String, Object> data,String tableNameEn, Map<String, Object> meFkMap){
        generalPurposeService.init(tableNameEn);
        String fne = (String) meFkMap.get("field_name_en");
        String rfne = (String) meFkMap.get("referenced_field_name_en");
        Map<String, Object> findMap = new HashMap<String, Object>();
        findMap.put(fne,data.get(rfne));
        List<Map<String, Object>> mapList = generalPurposeService.findByCondition(findMap);
        if(mapList.size()==0){
            return;
        }
        for(Map<String, Object> map : mapList){
            getMeData(map,tableNameEn,meFkMap);
        }
        data.put(tableNameEn,mapList);
    }


}
