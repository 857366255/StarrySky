package com.starrysky.sys.service.impl;


import com.starrysky.sys.dao.FieldDao;
import com.starrysky.sys.po.Field;
import com.starrysky.sys.service.FieldService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
