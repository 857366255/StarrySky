package com.starrysky.base.service.impl;


import com.starrysky.base.dao.FieldDao;
import com.starrysky.base.po.Field;
import com.starrysky.base.service.FieldService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
public class FieldServiceImpl implements FieldService {

    @Autowired
    private FieldDao fieldDao;

    public Field findById(Integer id) {
        return fieldDao.findById(id);
    }

    public List<Field> findAll() {
        return fieldDao.findAll();
    }

    public boolean doCreate(Field field) {
        return fieldDao.doCreate(field);
    }

    public boolean doUpdate(Field field) {
        return fieldDao.doUpdate(field);
    }

    public boolean doRemove(Integer id) {
        return fieldDao.doRemove(id);
    }

    public boolean doRemoveBatch(List list) {
        return fieldDao.doRemoveBatch(list);
    }

    public List<Field> findByCondition(Field field) {
        return fieldDao.findByCondition(field);
    }
    public List<Field> getDatabaseField(){
        return fieldDao.getDatabaseField();
    }
    public List<Field> synchronizing(){
        List<Field> synList = new ArrayList<Field>();
        List<Field> databaseList = fieldDao.getDatabaseField();
        List<Field> fieldList = fieldDao.findAll();
        for(Field field: databaseList){
            int i=0;
            for(;i<fieldList.size();i++){
                Field f = fieldList.get(i);
                if(field.getIdName().equals(f.getIdName()) && field.getTableName().equals(f.getTableName())){
                    if(field.equals(f)){
                        System.out.println("已存在");
                        break;
                    }else{
                        field.setId(f.getId());
                        synList.add(field);
                        System.out.println("1更新");
                        fieldDao.doUpdate(field);
                        break;
                    }
                }
            }
            if(i==fieldList.size()){
                System.out.println("新增");
                synList.add(field);
                fieldDao.doCreate(field);
            }
        }
        return synList;
    }
}
