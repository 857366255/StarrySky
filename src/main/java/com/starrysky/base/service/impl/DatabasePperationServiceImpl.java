package com.starrysky.base.service.impl;


import com.starrysky.base.dao.GeneralPurposeDao;
import com.starrysky.base.po.GeneralPurpose;
import com.starrysky.base.service.DatabasePperationService;
import com.starrysky.base.service.GeneralPurposeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 同步数据库
 * Created by wz on 2017/10/13.
 */
@Service
public class DatabasePperationServiceImpl implements DatabasePperationService {
    @Autowired
    private GeneralPurposeDao generalPurposeDao;
    @Autowired
    private GeneralPurposeService generalPurposeService;

    public List<Map<String, Object>> synchronizing(){
        try {
            synchronizingTable();
            synchronizingField();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    private void synchronizingTable() throws Exception {
        List<Map<String, Object>> databaseList = generalPurposeDao.getDatabaseTable();
        System.out.println(generalPurposeDao.getDatabaseTable());
        for(Map<String, Object> map : databaseList){
            generalPurposeService.init("s_table");
            Map<String, Object> temp = new HashMap<String, Object>();
            temp.put("name_en",map.get("name_en"));
            List<Map<String, Object>> mapList = generalPurposeService.findByCondition(temp);
            if(mapList.size()>1){
                throw new Exception("数据异常:"+mapList);
            }
            if(mapList.size()==0){
                generalPurposeService.doCreate(map);
            }else if(generalPurposeService.findByCondition(map).size()==0){
                map.put("id",mapList.get(0).get("id"));
                generalPurposeService.doUpdate(map);
            }
        }
    }
    private void synchronizingField() throws Exception {
        List<Map<String, Object>> databaseList = generalPurposeDao.getDatabaseField();
        System.out.println(generalPurposeDao.getDatabaseTable());
        for(Map<String, Object> map : databaseList){
            System.out.println("----"+map);
            generalPurposeService.init("s_field");
            Map<String, Object> temp = new HashMap<String, Object>();
            temp.put("name_en",map.get("name_en"));
            temp.put("table_name",map.get("table_name"));
            List<Map<String, Object>> mapList = generalPurposeService.findByCondition(temp);
            if(mapList.size()>1){
                throw new Exception("数据异常:"+mapList);
            }
            if(map.get("is_null").equals("YES")){
                map.put("is_null",1);
            }else{
                map.put("is_null",0);
            }
            if(mapList.size()==0){
                generalPurposeService.doCreate(map);
            }else if(generalPurposeService.findByCondition(map).size()==0){
                map.put("id",mapList.get(0).get("id"));
                generalPurposeService.doUpdate(map);
                System.out.println("更新");
            }
        }
    }


    /**
     * 把数据库表信息同步到s_table表中
     */
    /*private void synchronizingTable(){
        List<Table> databaseList = tableDao.getDatabaseTable();
        List<Table> tableList = tableDao.findAll();
        for(Table table: databaseList){
            int i=0;
            for(;i<tableList.size();i++){
                Table t = tableList.get(i);
                if(table.getIdName().equals(t.getIdName())){
                    if(table.getName().equals(t.getName())){
                        break;
                    }else{
                        table.setId(t.getId());
                        tableDao.doUpdate(table);
                        break;
                    }
                }
            }
            if(i==tableList.size()){
                tableDao.doCreate(table);
            }
        }
    }*/
    /**
     * 把数据库字段信息同步到s_field表中
     */
     /*private List<Field> synchronizingField(){
        List<Field> synList = new ArrayList<Field>();
        List<Field> databaseList = fieldDao.getDatabaseField();
        List<Field> fieldList = fieldDao.findAll();
        for(Field field: databaseList){
            int i=0;
            for(;i<fieldList.size();i++){
                Field f = fieldList.get(i);
                if(field.getIdName().equals(f.getIdName()) && field.getTableName().equals(f.getTableName())){
                    if(field.equals(f)){
                        break;
                    }else{
                        field.setId(f.getId());
                        synList.add(field);
                        fieldDao.doUpdate(field);
                        break;
                    }
                }
            }
            if(i==fieldList.size()){
                synList.add(field);
                fieldDao.doCreate(field);
            }
        }
        return synList;
    }*/

}
