package com.starrysky.base.dao;

import java.util.List;
import java.util.Map;

/**
 * Created by wz on 2017/10/9.
 */
public interface GeneralPurposeDao {

    public Boolean doCreate(Map<String,Object> map);
    public boolean doRemoveBatch(Map<String,Object> map);
    public boolean doRemove(Map<String,Object> map);
    public boolean doUpdate(Map<String,Object> map);
    public List<Map<String,Object>> findAll(Map<String,Object> map);
    public Map<String,Object> findById(Map<String,Object> map);
    public List<Map<String,Object>> findByCondition(Map<String,Object> map);
    public List<Map<String,Object>> findByTableName(Map<String,Object> map);

    /**
     * 获得数据库字段信息
     * @return
     */
    public List<Map<String,Object>> getDatabaseField();

}
