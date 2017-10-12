package com.starrysky.base.dao;


import com.starrysky.base.po.Table;

import java.util.List;

public interface TableDao extends BaseDao<Integer,Table> {
    public List<Table> getDatabaseTable();
}