package com.starrysky.sys.po;


import java.io.Serializable;

/**
 * 人
 * Created by wz on 2017/10/07
 */
public class Man implements Serializable {
    private Integer id;
    /**
     *名称
     */
    private String name;
    /**
     * 性别：true：男，false：女
     */
    private Boolean sex;
    /**
     *年龄
     */
    private Integer age;
    /**
     *电话
     */
    private String phone;
    /**
     *地址
     */
    private String address;

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

    public Boolean getSex() {
        return sex;
    }

    public void setSex(Boolean sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Man{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sex=" + sex +
                ", age=" + age +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
