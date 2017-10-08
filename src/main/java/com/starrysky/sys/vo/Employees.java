package com.starrysky.sys.vo;

import com.starrysky.base.vo.Base;

import java.io.Serializable;

/**
 * Created by wz on 2017/10/8.
 */
public class Employees extends Base implements Serializable {
    /**
     * 是否启用
     */
    private Boolean isEnable;
    /**
     * 用户
     */
    private String user;
    /**
     * 密码
     */
    private String password;
    /**
     * 角色
     */
    private String role;
    /**
     * 人id
     */
    private Integer manId;
    /**
     * 人信息
     */
    private Man man;

    public Boolean getEnable() {
        return isEnable;
    }

    public void setEnable(Boolean enable) {
        isEnable = enable;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Integer getManId() {
        return manId;
    }

    public void setManId(Integer manId) {
        this.manId = manId;
    }

    public Man getMan() {
        return man;
    }

    public void setMan(Man man) {
        this.man = man;
    }


    @Override
    public String toString() {
        return "employees{" +
                super.toString() +
                ", isEnable=" + isEnable +
                ", user='" + user + '\'' +
                ", password='" + password + '\'' +
                ", role='" + role + '\'' +
                ", manId=" + manId +
                ", man=" + man +
                '}';
    }

}
