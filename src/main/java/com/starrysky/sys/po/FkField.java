package com.starrysky.sys.po;

/**
 * Created by wz on 2017/11/10.
 */
public class FkField {

    private Integer id;

    private String fk_name_en;

    private String table_name_en;

    private String field_name_en;

    private String referenced_table_name_en;

    private String referenced_field_name_en;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFk_name_en() {
        return fk_name_en;
    }

    public void setFk_name_en(String fk_name_en) {
        this.fk_name_en = fk_name_en;
    }

    public String getTable_name_en() {
        return table_name_en;
    }

    public void setTable_name_en(String table_name_en) {
        this.table_name_en = table_name_en;
    }

    public String getField_name_en() {
        return field_name_en;
    }

    public void setField_name_en(String field_name_en) {
        this.field_name_en = field_name_en;
    }

    public String getReferenced_table_name_en() {
        return referenced_table_name_en;
    }

    public void setReferenced_table_name_en(String referenced_table_name_en) {
        this.referenced_table_name_en = referenced_table_name_en;
    }

    public String getReferenced_field_name_en() {
        return referenced_field_name_en;
    }

    public void setReferenced_field_name_en(String referenced_field_name_en) {
        this.referenced_field_name_en = referenced_field_name_en;
    }

    @Override
    public String toString() {
        return "FkField{" +
                "id=" + id +
                ", fk_name_en='" + fk_name_en + '\'' +
                ", table_name_en='" + table_name_en + '\'' +
                ", field_name_en='" + field_name_en + '\'' +
                ", referenced_table_name_en='" + referenced_table_name_en + '\'' +
                ", referenced_field_name_en='" + referenced_field_name_en + '\'' +
                '}';
    }
}
