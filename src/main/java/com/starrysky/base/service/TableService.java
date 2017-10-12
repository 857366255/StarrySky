package com.starrysky.base.service;





import com.starrysky.base.po.Table;

import java.util.List;

public interface TableService {
    public Table findById(Integer id);
    public List<Table> findAll();
    public boolean doCreate(Table table);
    public boolean doUpdate(Table table);
    public boolean doRemove(Integer id);
    public boolean doRemoveBatch(List list);
    public List<Table> findByCondition(Table table);

    /**
     * 同步数据库表
     * @return
     */
    public List<Table> synchronizing();
}
