package com.starrysky.base.po;

import java.util.List;

/**
 * 表
 * Created by wz on 2017/10/10.
 */
public class Table {

    private Integer id;

    private String name;

    private String idName;

    private List<Field> fieldList;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIdName() {
        return idName;
    }

    public void setIdName(String idName) {
        this.idName = idName;
    }

    public List<Field> getFieldList() {
        return fieldList;
    }

    public void setFieldList(List<Field> fieldList) {
        this.fieldList = fieldList;
    }

    @Override
    public String toString() {
        return "Table{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", idName='" + idName + '\'' +
                ", fieldList=" + fieldList +
                '}';
    }
}
