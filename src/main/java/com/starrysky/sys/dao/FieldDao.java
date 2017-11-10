package com.starrysky.sys.dao;


import com.starrysky.base.dao.BaseDao;
import com.starrysky.sys.po.Field;

import java.util.List;

public interface FieldDao extends BaseDao<Integer,Field> {
    /**
     * 获得数据库字段信息
     * @return
     */
    public List<Field> getDatabaseField();
}