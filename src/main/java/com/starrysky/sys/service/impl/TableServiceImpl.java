package com.starrysky.sys.service.impl;


import com.starrysky.sys.dao.TableDao;
import com.starrysky.sys.po.Table;
import com.starrysky.sys.service.TableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
