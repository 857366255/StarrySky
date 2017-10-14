package com.starrysky.base.service.impl;

import com.starrysky.base.dao.GeneralPurposeDao;
import com.starrysky.base.po.GeneralPurpose;
import com.starrysky.base.service.GeneralPurposeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * 通用数据库增删改查操作实现类
 * Created by wz on 2017/10/9.
 */
@Service
public class GeneralPurposeServiceImpl implements GeneralPurposeService{

    private static Map<String,Object> gpMap = new HashMap<String, Object>();
    private GeneralPurpose generalPurpose;

    @Autowired
    private GeneralPurposeDao generalPurposeDao;


    public boolean doCreate(Map<String,Object> map) {
        generalPurpose.setCreateMap(map);
        return generalPurposeDao.doCreate(generalPurpose);
    }

    public boolean doRemove(Integer id) {
        generalPurpose.setRemove(id);
        return generalPurposeDao.doRemove(generalPurpose);
    }

    public boolean doRemoveBatch(List list) {
        generalPurpose.setRemoveList(list);
        return generalPurposeDao.doRemoveBatch(generalPurpose);
    }

    public boolean doUpdate(Map<String,Object> map) {
        generalPurpose.setUpdateMap(map);
        return generalPurposeDao.doUpdate(generalPurpose);
    }

    public Map<String,Object> findById(Integer id) {
        Map<String, Object> map= new HashMap<String, Object>();
        map.put("id",id);
        generalPurpose.setFindMap(map);
        return generalPurposeDao.findById(generalPurpose);
    }

    public List<Map<String,Object>> findAll() {
        return generalPurposeDao.findAll(generalPurpose);
    }

    public List<Map<String,Object>> findByCondition(Map<String,Object> map) {
        generalPurpose.setFindMap(map);
        return generalPurposeDao.findByCondition(generalPurpose);
    }

    public void init(String s){
        System.out.println("_____________________________________________________");
        System.out.println("-----------------开始初始化："+s+"表-----------------");
        Map<String,Object> tempMap = new HashMap<String, Object>(GeneralPurpose.FIELD_MAP);
        generalPurpose = new GeneralPurpose();
        generalPurpose.setTableNameEN(s);
        List<Map<String,Object>> maps = generalPurposeDao.findByTableName(generalPurpose);

        Map<String, Object> fieldMap = new HashMap<String, Object>();
        List<String> fieldList = new ArrayList<String>();
        for(Map map: maps){
            String temp = map.get("id_name").toString();
            fieldMap.put(temp,null);
            fieldList.add(temp);
        }
        generalPurpose.setFieldMap(fieldMap);
        generalPurpose.setFieldList(fieldList);
        System.out.println(generalPurpose.getFieldList());
        System.out.println(generalPurpose.getFieldMap());
        //tempMap.put("table_name",s);
        //List<Map<String,Object>> maps = generalPurposeDao.findByTableName(tempMap);
       // Map<String, Object> columnMap = new HashMap<String, Object>();
//        List<String> fieldList = new ArrayList<String>();
        /*for(Map map: maps){
            String temp = map.get("id_name").toString();
            columnMap.put(temp,null);
            fieldList.add(temp);
        }*/
       /* gpMap.put("column",columnMap);
        gpMap.put("field",fieldList);
        gpMap.put("table",s);
        System.out.println(columnMap);*/
      //  System.out.println(generalPurposeDao.findByTableName(tempMap));
        System.out.println("-----------------结束初始化-----------------");
        System.out.println("_____________________________________________________");
    }


}
