package com.starrysky.base.service;





import com.starrysky.base.po.Field;

import java.util.List;

public interface FieldService {
    public Field findById(Integer id);
    public List<Field> findAll();
    public boolean doCreate(Field field);
    public boolean doUpdate(Field field);
    public boolean doRemove(Integer id);
    public boolean doRemoveBatch(List list);
    public List<Field> findByCondition(Field field);
}
