package com.starrysky.base.dao;


import com.starrysky.base.po.Field;

import java.util.List;

public interface FieldDao extends BaseDao<Integer,Field> {

    public List<Field> getDatabaseField();

}