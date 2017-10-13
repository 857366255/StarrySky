package com.starrysky.module.member.service.impl;


import com.starrysky.base.dao.GeneralPurposeDao;
import com.starrysky.module.member.service.EmployeesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
public class EmployeesServiceImpl implements EmployeesService {
    private final static List<String> LIST = Arrays.asList("id","man_id","role","user","password","is_enable");
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
        gpMap.put("field",LIST);
        gpMap.put("column",columnMap);
        gpMap.put("table","t_employees");
    }

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
