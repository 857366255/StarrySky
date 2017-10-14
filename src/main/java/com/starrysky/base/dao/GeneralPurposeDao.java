package com.starrysky.base.dao;

import com.starrysky.base.po.GeneralPurpose;

import java.util.List;
import java.util.Map;

/**
 * Created by wz on 2017/10/9.
 */
public interface GeneralPurposeDao {

    public Boolean doCreate(GeneralPurpose generalPurpose);
    public boolean doRemoveBatch(GeneralPurpose generalPurpose);
    public boolean doRemove(GeneralPurpose generalPurpose);
    public boolean doUpdate(GeneralPurpose generalPurpose);
    public List<Map<String,Object>> findAll(GeneralPurpose generalPurpose);
    public Map<String,Object> findById(GeneralPurpose generalPurpose);
    public List<Map<String,Object>> findByCondition(GeneralPurpose generalPurpose);
    public List<Map<String,Object>> findByTableName(GeneralPurpose generalPurpose);

    /**
     * 获得数据库字段信息
     * @return
     */
    public List<Map<String,Object>> getDatabaseField();
    /**
     * 获得数据库表信息
     * @return
     */
    public List<Map<String,Object>> getDatabaseTable();

}
