package com.starrysky.base.service.impl;


import com.starrysky.base.dao.TableDao;
import com.starrysky.base.po.Table;
import com.starrysky.base.service.TableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
public class TableServiceImpl implements TableService {

    @Autowired
    private TableDao tableDao;

    public Table findById(Integer id) {
        return tableDao.findById(id);
    }

    public List<Table> findAll() {
        return tableDao.findAll();
    }

    public boolean doCreate(Table table) {
        return tableDao.doCreate(table);
    }

    public boolean doUpdate(Table table) {
        return tableDao.doUpdate(table);
    }

    public boolean doRemove(Integer id) {
        return tableDao.doRemove(id);
    }

    public boolean doRemoveBatch(List list) {
        return tableDao.doRemoveBatch(list);
    }

    public List<Table> findByCondition(Table table) {
        return tableDao.findByCondition(table);
    }

    public List<Table> synchronizing(){
        List<Table> synList = new ArrayList<Table>();
        List<Table> databaseList = tableDao.getDatabaseTable();
        List<Table> tableList = tableDao.findAll();
        for(Table table: databaseList){
            int i=0;
            for(;i<tableList.size();i++){
                Table t = tableList.get(i);
                if(table.getIdName().equals(t.getIdName())){
                    if(table.getName().equals(t.getName())){
                        System.out.println("已存在");
                        break;
                    }else{
                        table.setId(t.getId());
                        synList.add(table);
                        System.out.println("更新");
                        tableDao.doUpdate(table);
                        break;
                    }
                }
            }
            if(i==tableList.size()){
                System.out.println("新增");
                synList.add(table);
                tableDao.doCreate(table);
            }
        }
        return synList;
    }

}
