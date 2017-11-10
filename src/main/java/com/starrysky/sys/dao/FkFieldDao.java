package com.starrysky.sys.dao;


import com.starrysky.base.dao.BaseDao;
import com.starrysky.sys.po.FkField;
import com.starrysky.sys.po.Table;

import java.util.List;

public interface FkFieldDao extends BaseDao<Integer,FkField> {
    /**
     * 获得数据库表信息
     * @return
     */
    public List<FkField> getDatabaseFkField();
}