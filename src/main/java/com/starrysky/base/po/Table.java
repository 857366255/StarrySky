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

    /**
     * 判断IdName是否相同
     * @param table
     * @return
     */
    public Boolean isIdNameSame(Table table) {
        return idName.equals(table.getIdName());
    }

    /**
     *判断name 是否相同
     * @param table
     * @return
     */
    public boolean isNameSame(Table table) {
        return name.equals(table.getName());
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (idName != null ? idName.hashCode() : 0);
        result = 31 * result + (fieldList != null ? fieldList.hashCode() : 0);
        return result;
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
