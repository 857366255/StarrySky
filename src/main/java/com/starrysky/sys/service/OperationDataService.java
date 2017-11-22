package com.starrysky.sys.service;


import java.util.List;
import java.util.Map;

public interface OperationDataService {
    public void getMapData(Map<String, Object> map, String tableNameEn, Map<String, Object> findMap);
    public List<Map<String,Object>> getListData(String tableNameEn, Map<String, Object> findMap);
}
