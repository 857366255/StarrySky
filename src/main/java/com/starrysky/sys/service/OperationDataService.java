package com.starrysky.sys.service;


import java.util.Map;

public interface OperationDataService {
    public void getListData(Map<String, Object> map, String tableNameEn, Map<String, Object> findMap);
}
