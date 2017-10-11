package com.starrysky.base.po;

/**
 * 字段
 * Created by wz on 2017/10/11.
 */
public class Field {
    private Integer id;
    private Integer tableId;
    private String name;
    private String idName;
    private String type;
    private Integer size;
    private String typeSize;
    private Boolean isNull;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTableId() {
        return tableId;
    }

    public void setTableId(Integer tableId) {
        this.tableId = tableId;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public String getTyoeSize() {
        return typeSize;
    }

    public void setTyoeSize(String typeSize) {
        this.typeSize = typeSize;
    }

    public Boolean getNull() {
        return isNull;
    }

    public void setNull(Boolean aNull) {
        isNull = aNull;
    }

    @Override
    public String toString() {
        return "Field{" +
                "id=" + id +
                ", tableId=" + tableId +
                ", name='" + name + '\'' +
                ", idName='" + idName + '\'' +
                ", type='" + type + '\'' +
                ", size=" + size +
                ", tyoeSize='" + typeSize + '\'' +
                ", isNull=" + isNull +
                '}';
    }
}
