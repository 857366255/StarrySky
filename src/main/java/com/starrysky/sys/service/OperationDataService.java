package com.starrysky.sys.service;


import java.util.List;
import java.util.Map;

public interface OperationDataService {
    /**
     * 获得一行数据
     * @param tableNameEn 表名称
     * @param findMap 查询条件
     */
    public void getMapData(Map<String, Object> map, String tableNameEn, Map<String, Object> findMap);
    /**
     * 获得多行数据
     * @param tableNameEn 表名称
     * @param findMap 查询条件
     */
    public List<Map<String,Object>> getListData(String tableNameEn, Map<String, Object> findMap);
    /**
     * 保存数据
     * @param tableNameEn 表名称
     * @param map 保存数据
     * @return 是否保存成功
     */
    public Boolean doCreate(String tableNameEn,Map<String, Object> map);

    /**
     * 删除数据
     * @param tableNameEn 表名
     * @param findMap 查询条件
     * @return 是否删除成功
     */
    public Boolean doRemove(String tableNameEn,Map<String, Object> findMap);
    /**
     * 更新数据
     * @param tableNameEn 表名
     * @param map 更新内容
     * @return 是否更新成功
     */
    public Boolean doUpdate(String tableNameEn,Map<String, Object> map);

    public List<Map<String, Object>> getRecursionData(String tableNameEn);
}
