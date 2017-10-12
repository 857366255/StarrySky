package com.starrysky.base.service;





import com.starrysky.base.po.Field;
import com.starrysky.base.po.Table;

import java.util.List;
import java.util.Map;

public interface FieldService {
    public Field findById(Integer id);
    public List<Field> findAll();
    public boolean doCreate(Field field);
    public boolean doUpdate(Field field);
    public boolean doRemove(Integer id);
    public boolean doRemoveBatch(List list);
    public List<Field> findByCondition(Field field);
    public List<Field> getDatabaseField();
    /**
     * 同步数据库表
     * @return
     */
    public List<Field> synchronizing();
}
