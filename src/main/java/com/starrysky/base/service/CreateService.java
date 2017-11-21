package com.starrysky.base.service;

import java.util.List;
import java.util.Map;

public interface CreateService {

    /**
     * 获取该表字段信息
     * @param tableNameEn 表名称
     * @return 字段信息
     */
   /* public List<Map<String, Object>> getFieldList(String tableNameEn);*/

    /**
     * 保存数据
     * @param tableNameEn 表名称
     * @param map 数据
     * @return 是否成功
     */
    public Boolean doCreate(String tableNameEn,Map<String, Object> map);

}
