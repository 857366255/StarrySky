package com.starrysky.base.service;

import com.starrysky.base.po.GeneralPurpose;

import java.util.List;
import java.util.Map;

/**
 * Created by wz on 2017/10/9.
 */
public interface GeneralPurposeService {
    /**
     * 初始化
     * @param s 表名
     */
    public void init(String s);
    public Map<String,Object> findById();
    public List<Map<String,Object>> findAll();
    public boolean doCreate(Map<String,Object> map);
    public boolean doUpdate(Map<String,Object> map);
    public boolean doRemove(Integer id);
    public boolean doRemoveBatch(List list);
    public List<Map<String,Object>> findByCondition(Map<String,Object> map);

    /**
     * 获取表字段信息
     * @return 表字段
     */
    public List<Map<String,Object>> getFieldMap();
    /**
     * 获取表信息
     * @return 表信息
     */
    public GeneralPurpose getGeneralPurpose();

}
