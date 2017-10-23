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
        List<Map<String, Object>> singleFkList = generalPurposeService.getGeneralPurpose().getSingleFkList();
        List<Map<String, Object>> multipleFkList = generalPurposeService.getGeneralPurpose().getMultipleFkList();
        for(Map<String, Object> meFkMap : meFkList){
            for(Map<String, Object> map : mapList ){
                meData(map,meFkMap);
            }
        }
        for(Map<String, Object> singleFkMap : singleFkList){
            for(Map<String, Object> map : mapList ){
                singleData(map,singleFkMap);
            }
        }
        for(Map<String, Object> multipleFkMap : multipleFkList){
            for(Map<String, Object> map : mapList ){
                multipleData(map,multipleFkMap);
            }
        }
        return mapList;
    }

    /**
     * 自关联 递归循环
     * @param data 数据
     * @param meFkMap 外键信息
     */
    private void meData(Map<String, Object> data, Map<String, Object> meFkMap){
        String tne = (String) meFkMap.get("table_name_en");
        String fne = (String) meFkMap.get("field_name_en");
        String rfne = (String) meFkMap.get("referenced_field_name_en");
        generalPurposeService.init(tne);
        Map<String, Object> findMap = new HashMap<String, Object>();
        findMap.put(fne,data.get(rfne));
        List<Map<String, Object>> mapList = generalPurposeService.findByCondition(findMap);
        if(mapList.size()==0){
            return;
        }
        for(Map<String, Object> map : mapList){
            meData(map,meFkMap);
        }
        data.put(tne,mapList);
    }
    /**
     * 单关联
     * @param data 数据
     * @param singleFkMap 外键信息
     */
    private void singleData(Map<String, Object> data, Map<String, Object> singleFkMap){
//        String tne = (String) singleFkMap.get("table_name_en");
        String fne = (String) singleFkMap.get("field_name_en");
        String rtne = (String) singleFkMap.get("referenced_table_name_en");
        String rfne = (String) singleFkMap.get("referenced_field_name_en");
        generalPurposeService.init(rtne);
        Map<String, Object> findMap = new HashMap<String, Object>();
        findMap.put(rfne,data.get(fne));
        Map<String, Object> mapList = generalPurposeService.findById(findMap);
        if(mapList == null){
            return;
        }
        data.put(rtne,mapList);

    }
    /**
     * 多关联
     * @param data 数据
     * @param multipleMap 外键信息
     */
    private void multipleData(Map<String, Object> data, Map<String, Object> multipleMap){
        String tne = (String) multipleMap.get("table_name_en");
        String fne = (String) multipleMap.get("field_name_en");
        String rtne = (String) multipleMap.get("referenced_table_name_en");
        String rfne = (String) multipleMap.get("referenced_field_name_en");
        generalPurposeService.init(tne);
        Map<String, Object> findMap = new HashMap<String, Object>();
        findMap.put(fne,data.get(rfne));
        List<Map<String, Object>> mapList = generalPurposeService.findByCondition(findMap);
        if(mapList == null){
            return;
        }
        data.put(tne,mapList);

    }


}
