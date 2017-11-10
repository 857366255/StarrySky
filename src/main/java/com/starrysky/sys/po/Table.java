package com.starrysky.sys.po;

import java.io.Serializable;

/**
 * Created by wz on 2017/11/10.
 */
public class Table implements Serializable{

    private Integer id;
    /**
     *名称en
     */
    private String name_en;
    /**
     *名称ch
     */
    private String name_ch;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName_en() {
        return name_en;
    }

    public void setName_en(String name_en) {
        this.name_en = name_en;
    }

    public String getName_ch() {
        return name_ch;
    }

    public void setName_ch(String name_ch) {
        this.name_ch = name_ch;
    }

    @Override
    public String toString() {
        return "Table{" +
                "id=" + id +
                ", name_en='" + name_en + '\'' +
                ", name_ch='" + name_ch + '\'' +
                '}';
    }
}
