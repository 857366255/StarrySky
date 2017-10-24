package com.starrysky.base.service.impl;

import com.starrysky.base.service.CombinationWindowService;
import com.starrysky.base.service.CreateService;
import com.starrysky.base.service.FindService;
import com.starrysky.base.service.GeneralPurposeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CombinationWindowServiceImpl implements CombinationWindowService{

    @Autowired
    private GeneralPurposeService generalPurposeService;
    @Autowired
    private CreateService createService;
    @Autowired
    private FindService findService;

    public Map<String, Object> getCombinationWindow(String tableNameEn) {
        Map<String, Object> cwMap = new HashMap<String, Object>();
        cwMap.put("fieldList", createService.getFieldList(tableNameEn));
        List<Map<String, Object>> mapList = findService.getData(tableNameEn);
        cwMap.put("data",mapList.get(0));
        cwMap.put("tableNameEN",tableNameEn);
        generalPurposeService.init(tableNameEn);
        List<Map<String, Object>> multipleFkList = generalPurposeService.getGeneralPurpose().getMultipleFkList();
        for(Map<String, Object> m : multipleFkList){
            generalPurposeService.init("s_table");
            Map<String, Object> findMap = new HashMap<String, Object>();
            findMap.put("name_en",m.get("table_name_en"));
            m.put("name",generalPurposeService.findByCondition(findMap).get(0).get("name_ch"));
            m.put("fieldList",createService.getFieldList((String) m.get("table_name_en")));
        }
        cwMap.put("multipleFkList",multipleFkList);
        return cwMap;
    }
}
