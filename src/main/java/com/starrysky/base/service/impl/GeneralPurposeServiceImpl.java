package com.starrysky.base.service.impl;

import com.starrysky.base.dao.GeneralPurposeDao;
import com.starrysky.base.po.GeneralPurpose;
import com.starrysky.base.service.GeneralPurposeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 通用数据库增删改查操作实现类
 * Created by wz on 2017/10/20.
 */
@Service
public class GeneralPurposeServiceImpl implements GeneralPurposeService {

    @Autowired
    private GeneralPurposeDao generalPurposeDao;

    private GeneralPurpose generalPurpose;

    public void init(String tableNameEn) {
        generalPurpose = new GeneralPurpose();
        generalPurpose.setTableNameEN(tableNameEn);
        List<Map<String, Object>> tableFieldMessageList = generalPurposeDao.findFieldByTableName(generalPurpose);
        List<Map<String, Object>> tableFkFieldMessageList = generalPurposeDao.findFkFieldByTableName(generalPurpose);
        generalPurpose.setFieldListMap(tableFieldMessageList);
        generalPurpose.setFkListMap(tableFkFieldMessageList);
    }

    public GeneralPurpose getGeneralPurpose(){
        return generalPurpose;
    }

    public boolean doCreate(Map<String, Object> createMap) {
        generalPurpose.setCreateMap(excludeAbnormalData(createMap));
        return generalPurposeDao.doCreate(generalPurpose);
    }

    public boolean doRemove(Map<String, Object> removeMap) {
        generalPurpose.setRemoveMap(excludeAbnormalAndNotPkData(removeMap));
        return generalPurposeDao.doRemove(generalPurpose);
    }

    public boolean doRemoveBatch(List<Map<String, Object>> removeMapList) {
        List<Map<String, Object>> mapList = new ArrayList<Map<String, Object>>();
        for(Map<String, Object> map : removeMapList){
            mapList.add(excludeAbnormalAndNotPkData(map));
        }
        generalPurpose.setRemoveList(mapList);
        return generalPurposeDao.doRemoveBatch(generalPurpose);
    }

    public boolean doUpdate(Map<String, Object> updateMap) {
        generalPurpose.setFindMap(excludeAbnormalAndNotPkData(updateMap));
        System.out.println("excludeAbnormalData:"+excludeAbnormalData(updateMap));
        System.out.println("updateMap:"+updateMap);
        generalPurpose.setUpdateMap(excludeAbnormalData(updateMap));
        return generalPurposeDao.doUpdate(generalPurpose);
    }

    public Map<String, Object> findById(Map<String, Object> findMap) {
        generalPurpose.setFindMap(excludeAbnormalAndNotPkData(findMap));
        return generalPurposeDao.findById(generalPurpose);
    }

    public List<Map<String, Object>> findAll() {
        return generalPurposeDao.findAll(generalPurpose);
    }

    public List<Map<String, Object>> findByCondition(Map<String, Object> findMap) {
        generalPurpose.setFindMap(excludeAbnormalData(findMap));
        /*System.out.println("________________开始findByCondition________________");
        for(Map<String, Object>map:generalPurposeDao.getDatabaseFkField()){
            if(map.get("table_name").equals(generalPurpose.getTableNameEN())){
                GeneralPurpose gp = (GeneralPurpose) findMap.get("t_man");
                Map<String, Object> m = new HashMap<String, Object>();
                m.put((String) map.get("referenced_field_name"),1);
                gp.setFindMap(m);
                System.out.println(generalPurposeDao.findById(gp));
                System.out.println(map);
            }
        }
        System.out.println(generalPurposeDao.findByCondition(generalPurpose));
        System.out.println("________________结束findByCondition________________");*/
        return generalPurposeDao.findByCondition(generalPurpose);
    }

    public Boolean isExistFk(String fieldNameEn){
        for (Map<String, Object> map : generalPurpose.getSingleFkList()){
            System.out.println(map);
            System.out.println(map.get("field_name_en")+":"+fieldNameEn);
            if(map.get("field_name_en").equals(fieldNameEn)){
                return true;
            }
        }
        return false;
    }

    /**
     * 排除异常数据
     * @param dataMap 数据
     * @return 数据
     */
    private Map<String,Object> excludeAbnormalData(Map<String, Object> dataMap){
        Map<String, Object> map = new HashMap<String, Object>();
        for(String s:generalPurpose.getFieldList()){
            if(dataMap.get(s) instanceof String && dataMap.get(s).equals("")){
                continue;
            }
            map.put(s,dataMap.get(s));
        }
        return map;
    }
    /**
     * 排除异常数据 且 不是主键字段数据
     * @param dataMap 数据
     * @return 数据
     */
    private Map<String,Object> excludeAbnormalAndNotPkData(Map<String, Object> dataMap){
        Map<String, Object> map = new HashMap<String, Object>();
        for(String s:generalPurpose.getPkList()){
            if(dataMap.get(s) instanceof String && dataMap.get(s).equals("")){
                continue;
            }
            map.put(s,dataMap.get(s));
        }
        return map;
    }
}
