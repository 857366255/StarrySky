package com.starrysky.base.service.impl;

import com.starrysky.base.dao.FieldDao;
import com.starrysky.base.dao.GeneralPurposeDao;
import com.starrysky.base.dao.TableDao;
import com.starrysky.base.po.Field;
import com.starrysky.base.po.Table;
import com.starrysky.base.service.DatabasePperationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * 同步数据库
 * Created by wz on 2017/10/13.
 */
@Service
public class DatabasePperationServiceImpl implements DatabasePperationService {
    @Autowired
    private TableDao tableDao;
    @Autowired
    private FieldDao fieldDao;
    @Autowired
    private GeneralPurposeDao generalPurposeDao;


    public List<Map<String, Object>> synchronizing(){

        return generalPurposeDao.getDatabaseField();
    }

    /*public List<Field> synchronizing() {
        synchronizingTable();
        return synchronizingField();
    }*/

    /**
     * 把数据库表信息同步到s_table表中
     */
    private void synchronizingTable(){
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
    }
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
    private List<Field> synchronizingField(){
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
    }
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
