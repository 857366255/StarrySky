package com.starrysky.sys.po;

/**
 * Created by wz on 2017/11/10.
 */
public class Field {

    private Integer id;


    private String table_name;

    private String name_ch;

    private String name_en;

    private String type;

    private Integer size;

    private String type_size;

    private Boolean is_null;

    private String category;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTable_name() {
        return table_name;
    }

    public void setTable_name(String table_name) {
        this.table_name = table_name;
    }

    public String getName_ch() {
        return name_ch;
    }

    public void setName_ch(String name_ch) {
        this.name_ch = name_ch;
    }

    public String getName_en() {
        return name_en;
    }

    public void setName_en(String name_en) {
        this.name_en = name_en;
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

    public String getType_size() {
        return type_size;
    }

    public void setType_size(String type_size) {
        this.type_size = type_size;
    }

    public Boolean getIs_null() {
        return is_null;
    }

    public void setIs_null(Boolean is_null) {
        this.is_null = is_null;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Field{" +
                "id=" + id +
                ", table_name='" + table_name + '\'' +
                ", name_ch='" + name_ch + '\'' +
                ", name_en='" + name_en + '\'' +
                ", type='" + type + '\'' +
                ", size=" + size +
                ", type_size='" + type_size + '\'' +
                ", is_null=" + is_null +
                ", category='" + category + '\'' +
                '}';
    }
}
