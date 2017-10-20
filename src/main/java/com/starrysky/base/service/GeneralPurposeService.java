package com.starrysky.base.service;

import com.starrysky.base.po.GeneralPurpose;

import java.util.List;
import java.util.Map;

/**
 * Created by wz on 2017/10/20.
 */
public interface GeneralPurposeService {

    /**
     * 初始化
     * @param tableNameEn 表名称
     */
    public void init(String tableNameEn);

    /**
     * 创建/添加
     * @param createMap 数据
     * @return 是否添加成功
     */
    public boolean doCreate(Map<String,Object> createMap);

    /**
     * 删除
     * @param removeMap 主键
     * @return 是否删除成功
     */
    public boolean doRemove(Map<String,Object> removeMap);

    /**
     * 批量删除
     * @param removeMapList 主键数组
     * @return 是否删除成功
     */
    public boolean doRemoveBatch(List<Map<String,Object>> removeMapList);

    /**
     * 修改数据
     * @param updateMap 数据
     * @return 是否修改成功
     */
    public boolean doUpdate(Map<String,Object> updateMap);

    /**
     * 查询唯一数据
     * @param findMap 查询条件
     * @return 数据
     */
    public Map<String,Object> findById(Map<String, Object> findMap);

    /**
     * 删除所有数据
     * @return 数据
     */
    public List<Map<String,Object>> findAll();

    /**
     * 根据条件查询数据
     * @param findMap 查询条件
     * @return 数据
     */
    public List<Map<String,Object>> findByCondition(Map<String,Object> findMap);

    public GeneralPurpose getGeneralPurpose();

}
