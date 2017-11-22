package com.starrysky.sys.service.impl;


import com.starrysky.base.service.GeneralPurposeService;
import com.starrysky.sys.service.OperationDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
public class OperationDataServiceImpl implements OperationDataService {

    @Autowired
    private GeneralPurposeService generalPurposeService;

    public void getMapData(Map<String, Object> map,String tableNameEn,Map<String, Object> findMap){
        generalPurposeService.init(tableNameEn);
        map.put("data",generalPurposeService.findById(findMap));
    }
    public List<Map<String, Object>> getListData(String tableNameEn,Map<String, Object> findMap){
        generalPurposeService.init(tableNameEn);
        return generalPurposeService.findByCondition(findMap);
    }
}
