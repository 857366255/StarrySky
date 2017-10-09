package com.starrysky.module.sys.service.impl;


import com.starrysky.base.dao.GeneralPurposeDao;
import com.starrysky.module.sys.service.EmployeesService;
import com.starrysky.sys.vo.Man;
import com.sun.org.apache.xpath.internal.SourceTree;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
public class EmployeesServiceImpl implements EmployeesService {

    private static Map<String,Object> gpMap;
    private static List list;

    static{
        gpMap = new HashMap<String, Object>();
        Map<String, Object> columnMap = new HashMap<String, Object>();
        columnMap.put("id",null);
        columnMap.put("man_id",null);
        columnMap.put("role",null);
        columnMap.put("user",null);
        columnMap.put("password",null);
        columnMap.put("is_enable",null);
        gpMap.put("column",columnMap);
    }

    @Autowired
    private GeneralPurposeDao generalPurposeDao;


    public boolean doCreate(Map<String,Object> map) {
        Map<String,Object> tempMap = new HashMap<String, Object>(gpMap);
        tempMap.put("column",map);
        return generalPurposeDao.doCreate(tempMap);
    }

    public boolean doRemove(Integer id) {
        return generalPurposeDao.doRemove(id);
    }

    public boolean doRemoveBatch(List list) {
        return generalPurposeDao.doRemoveBatch(list);
    }

    public boolean doUpdate(Map<String,Object> map) {
        Map<String,Object> tempMap = new HashMap<String, Object>(gpMap);
        tempMap.put("column",map);
        return generalPurposeDao.doUpdate(tempMap);
    }

    public Map<String,Object> findById(Integer id) {
        Map<String,Object> tempMap = new HashMap<String, Object>(gpMap);
        Map<String, Object> columnMap =  new HashMap<String, Object>((Map<String, Object>)tempMap.get("column"));
        columnMap.put("id",id);
        tempMap.put("column",columnMap);
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
