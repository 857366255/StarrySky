package com.starrysky.base.vo;

import com.starrysky.sys.vo.Man;

import javax.persistence.Id;
import java.io.Serializable;
import java.util.Date;

/**
 * 基础
 * Created by wz on 2017/10/7.
 */
public class Base implements Serializable {

    private Integer id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "id=" + id;
    }
}
