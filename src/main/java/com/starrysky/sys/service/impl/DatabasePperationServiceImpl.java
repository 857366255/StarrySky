package com.starrysky.sys.service.impl;



import com.starrysky.sys.dao.FieldDao;
import com.starrysky.sys.dao.FkFieldDao;
import com.starrysky.sys.dao.TableDao;
import com.starrysky.sys.po.Field;
import com.starrysky.sys.po.FkField;
import com.starrysky.sys.po.Table;
import com.starrysky.sys.service.DatabasePperationService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


/**
 * 同步数据库
 * Created by wz on 2017/11/10.
 */
@Service
public class DatabasePperationServiceImpl implements DatabasePperationService {

    @Autowired
    private TableDao tableDao;
    @Autowired
    private FieldDao fieldDao;
    @Autowired
    private FkFieldDao fkFieldDao;




    public List<Map<String, Object>> synchronizing() {
        tableSynchronizing();
        fieldSynchronizing();
        fkFieldSynchronizing();
        return null;
    }

    /**
     * 同步表
     */
    private void tableSynchronizing(){
        List<Table> tableList =  tableDao.getDatabaseTable();
        List<Table> tables =  tableDao.findAll();
        for(Table table : tableList){
            int i=0;
            for(;i<tables.size();i++){
                Table t = tables.get(i);
                if(t.getName_en().equals(table.getName_en())){
                    if(table.getName_ch()==null){
                        break;
                    }else if(t.getName_ch()==null){
                        table.setId(t.getId());
                        tableDao.doUpdate(table);
                    }else if(table.getName_ch().equals(t.getName_ch())){
                        table.setId(t.getId());
                        tableDao.doUpdate(table);
                        break;
                    }
                }
            }
            if(i==tables.size()){
                tableDao.doCreate(table);
            }
        }
    }

    /**
     * 同步字段信息
     */
    private void fieldSynchronizing(){
        List<Field> fieldList =  fieldDao.getDatabaseField();
        List<Field> fields =  fieldDao.findAll();
        for(Field field : fieldList){
            int i=0;
            for(;i<fields.size();i++){
                Field f = fields.get(i);

                if(f.getName_en().equals(field.getName_en()) && f.getTable_name().equals(field.getTable_name())){
                    field.setId(f.getId());
                    System.out.println("asd:"+field);
                    System.out.println(field.getName_ch()==null);
                    fieldDao.doUpdate(field);
                    break;
                }
            }
            if(i==fields.size()){
                fieldDao.doCreate(field);
            }
        }
    }

    /**
     * 同步外键信息
     */
    private void fkFieldSynchronizing(){
        List<FkField> fkFieldList =  fkFieldDao.getDatabaseFkField();
        //List<FkField> fkFields =  fkFieldDao.findAll();
        for(FkField fkField : fkFieldList){
            List<FkField> fList = fkFieldDao.findByCondition(fkField);
            int i = fList.size();
            if(i==0){
                fkFieldDao.doCreate(fkField);
            }else if(i==1){
                fkField.setId(fList.get(0).getId());
                fkFieldDao.doUpdate(fkField);
            }
        }
    }
}
