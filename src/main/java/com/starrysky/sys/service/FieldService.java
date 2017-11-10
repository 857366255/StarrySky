package com.starrysky.sys.service;



import com.starrysky.sys.po.Field;

import java.util.List;

public interface FieldService {
    public Field findById(Integer id);
    public List<Field> findAll();
    public boolean doCreate(Field field);
    public boolean doUpdate(Field field);
    public boolean doRemove(Integer id);
    public boolean doRemoveBatch(List ele);
    public List<Field> findByCondition(Field field);
}
