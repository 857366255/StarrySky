package com.starrysky.sys.vo;




import com.starrysky.base.vo.Base;

import java.io.Serializable;

/**
 * 人
 * Created by wz on 2017/10/07
 */
public class Man extends Base implements Serializable {
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
                super.toString() +
                ", name='" + name + '\'' +
                ", sex=" + sex +
                ", age=" + age +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
