package com.starrysky.sys.dao;


import com.starrysky.sys.po.Table;

import java.util.List;

public interface TableDao extends BaseDao<Integer,Table> {
    /**
     * 获得数据库表信息
     * @return
     */
    public List<Table> getDatabaseTable();
}