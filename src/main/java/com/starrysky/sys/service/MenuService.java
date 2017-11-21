package com.starrysky.sys.service;

import java.util.Map;

public interface MenuService {
    /**
     * 获得列表页面字段
     * @param map 传回前台数据
     * @param tableNameEn 表名
     */
    public void getListField(Map<String, Object> map,String tableNameEn);

    /**
     * 获得新增页面字段
     * @param map 传回前台数据
     * @param tableNameEn 表名
     */
    public void getCreateField(Map<String, Object> map,String tableNameEn);
    /**
     * 获得更新页面字段
     * @param map 传回前台数据
     * @param tableNameEn 表名
     */
    public void getUpdateField(Map<String, Object> map,String tableNameEn);
    /**
     * 获得组合页面字段
     * @param map 传回前台数据
     * @param tableNameEn 表名
     */
    public void  getCombinationField(Map<String, Object> map,String tableNameEn);

}
