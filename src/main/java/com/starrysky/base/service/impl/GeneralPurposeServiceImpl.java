package com.starrysky.base.service.impl;

import com.starrysky.base.dao.GeneralPurposeDao;
import com.starrysky.base.service.GeneralPurposeService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wz on 2017/10/9.
 */
public class GeneralPurposeServiceImpl implements GeneralPurposeService{
    private static Map<String,Object> gpMap;
    private static List list;

    @Autowired
    private GeneralPurposeDao generalPurposeDao;


    public boolean doCreate(Map<String,Object> map) {
        Map<String,Object> tempMap = new HashMap<String, Object>(gpMap);
        tempMap.put("column",map);
        return generalPurposeDao.doCreate(tempMap);
    }

    public boolean doRemove(Integer id) {
        Map<String,Object> tempMap = new HashMap<String, Object>(gpMap);
        tempMap.put("remove",id);
        return generalPurposeDao.doRemove(tempMap);
    }

    public boolean doRemoveBatch(List list) {
        Map<String,Object> tempMap = new HashMap<String, Object>(gpMap);
        tempMap.put("removeBatch",list);
        return generalPurposeDao.doRemoveBatch(tempMap);
    }

    public boolean doUpdate(Map<String,Object> map) {
        Map<String,Object> tempMap = new HashMap<String, Object>(gpMap);
        tempMap.put("column",map);
        return generalPurposeDao.doUpdate(tempMap);
    }

    public Map<String,Object> findById(Integer id) {
        Map<String,Object> tempMap = new HashMap<String, Object>(gpMap);
        /*Map<String, Object> columnMap =  new HashMap<String, Object>((Map<String, Object>)tempMap.get("column"));
        columnMap.put("id",id);
        tempMap.put("column",columnMap);*/
        return generalPurposeDao.findById(tempMap);
    }

    public List<Map<String,Object>> findAll() {
        return generalPurposeDao.findAll(gpMap);
    }

    public List<Map<String,Object>> findByCondition(Map<String,Object> map) {
        Map<String,Object> tempMap = new HashMap<String, Object>(gpMap);
        tempMap.put("find",map);
        return generalPurposeDao.findByCondition(tempMap);
    }

}
