package com.starrysky.base.po;

/**
 * 字段
 * Created by wz on 2017/10/11.
 */
public class Field {
    private Integer id;
    private String tableName;
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

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public String getTypeSize() {
        return typeSize;
    }

    public void setTypeSize(String typeSize) {
        this.typeSize = typeSize;
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
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Field field = (Field) o;

       // if (id != null ? !id.equals(field.id) : field.id != null) return false;
        if (tableName != null ? !tableName.equals(field.tableName) : field.tableName != null) return false;
        if (name != null ? !name.equals(field.name) : field.name != null) return false;
        if (idName != null ? !idName.equals(field.idName) : field.idName != null) return false;
        if (type != null ? !type.equals(field.type) : field.type != null) return false;
        if (size != null ? !size.equals(field.size) : field.size != null) return false;
        if (typeSize != null ? !typeSize.equals(field.typeSize) : field.typeSize != null) return false;
        return isNull != null ? isNull.equals(field.isNull) : field.isNull == null;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (tableName != null ? tableName.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (idName != null ? idName.hashCode() : 0);
        result = 31 * result + (type != null ? type.hashCode() : 0);
        result = 31 * result + (size != null ? size.hashCode() : 0);
        result = 31 * result + (typeSize != null ? typeSize.hashCode() : 0);
        result = 31 * result + (isNull != null ? isNull.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Field{" +
                "id=" + id +
                ", tableName=" + tableName +
                ", name='" + name + '\'' +
                ", idName='" + idName + '\'' +
                ", type='" + type + '\'' +
                ", size=" + size +
                ", tyoeSize='" + typeSize + '\'' +
                ", isNull=" + isNull +
                '}';
    }
}
