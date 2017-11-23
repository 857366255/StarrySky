package com.starrysky.sys.dao;


import com.starrysky.sys.po.FkField;

import java.util.List;

public interface FkFieldDao extends BaseDao<Integer,FkField> {
    /**
     * 获得数据库表信息
     * @return
     */
    public List<FkField> getDatabaseFkField();
}