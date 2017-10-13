package com.starrysky.base.service.impl;

import com.starrysky.base.dao.GeneralPurposeDao;
import com.starrysky.base.service.GeneralPurposeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * Created by wz on 2017/10/9.
 */
@Service
public class GeneralPurposeServiceImpl implements GeneralPurposeService{
    private final static String TABLE = "s_field";
    private final static List<String> FIELD_LIST = Arrays.asList("id","table_name","name","id_name","type","size","type_size","is_null");
    private final static Map<String,Object> FIELD_MAP = new HashMap<String, Object>() {
        {
            Map<String, Object> columnMap = new HashMap<String, Object>();
            for(String s:FIELD_LIST){
                columnMap.put(s,null);
            }
            put("column",columnMap);
            put("field",FIELD_LIST);
            put("table","s_field");
        }
    };
    private static Map<String,Object> gpMap = new HashMap<String, Object>();
    private static List list;

   /* static{
        gpMap = new HashMap<String, Object>();
        Map<String, Object> columnMap = new HashMap<String, Object>();
        columnMap.put("id",null);
        columnMap.put("table_name",null);
        columnMap.put("name",null);
        columnMap.put("id_name",null);
        columnMap.put("type",null);
        columnMap.put("size",null);
        columnMap.put("type_size",null);
        columnMap.put("is_null",null);
        gpMap.put("field",FIELD_LIST);
        gpMap.put("column",columnMap);
        gpMap.put("table","s_field");
    }*/
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
        System.out.println("");
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

    public void init(String s){
        System.out.println("_____________________________________________________");
        System.out.println("-----------------开始初始化："+s+"表-----------------");
        Map<String,Object> tempMap = new HashMap<String, Object>(FIELD_MAP);
        tempMap.put("table_name",s);
        List<Map<String,Object>> maps = generalPurposeDao.findByTableName(tempMap);
        Map<String, Object> columnMap = new HashMap<String, Object>();
        List<String> fieldList = new ArrayList<String>();
        for(Map map: maps){
            String temp = map.get("id_name").toString();
            columnMap.put(temp,null);
            fieldList.add(temp);
        }
        gpMap.put("column",columnMap);
        gpMap.put("field",fieldList);
        gpMap.put("table",s);
        System.out.println(columnMap);
        System.out.println(generalPurposeDao.findByTableName(tempMap));
        System.out.println("-----------------结束初始化-----------------");
        System.out.println("_____________________________________________________");
    }


}
