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
    /**
     * 创建时间
     */
    private Date creationTime;
    /**
     * 创建人id
     */
    private Integer creationManId;
    /**
     * 创建人信息
     */
    private Man creationMan;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getCreationTime() {
        return creationTime;
    }

    public void setCreationTime(Date creationTime) {
        this.creationTime = creationTime;
    }

    public Integer getCreationManId() {
        return creationManId;
    }

    public void setCreationManId(Integer creationManId) {
        this.creationManId = creationManId;
    }

    public Man getCreationMan() {
        return creationMan;
    }

    public void setCreationMan(Man creationMan) {
        this.creationMan = creationMan;
    }

    public Man getMan() {
        return creationMan;
    }

    public void setMan(Man man) {
        this.creationMan = man;
    }

    @Override
    public String toString() {
        return "id=" + id +
                ", creationTime=" + creationTime +
                ", creationManId=" + creationManId +
                ", creationMan=" + creationMan ;
    }
}
