package com.starrysky.sys.service;



import com.starrysky.sys.po.Table;

import java.util.List;

public interface TableService {
    public Table findById(Integer id);
    public List<Table> findAll();
    public boolean doCreate(Table table);
    public boolean doUpdate(Table table);
    public boolean doRemove(Integer id);
    public boolean doRemoveBatch(List ele);
    public List<Table> findByCondition(Table table);
}
