package com.starrysky.base.service;

import java.util.List;
import java.util.Map;

public interface FindService {
    /**
     * 获得表字段信息
     * @param tableNameEn 表名称
     * @return 表字段信息
     */
    public List<Map<String, Object>> getFieldList(String tableNameEn);

    /**
     * 获得数据
     * @param tableNameEn 表名称
     * @return 数据
     */
    public List<Map<String, Object>> getData(String tableNameEn);

}
