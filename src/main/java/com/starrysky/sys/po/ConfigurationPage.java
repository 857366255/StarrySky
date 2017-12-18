package com.starrysky.sys.po;

/**
 * Created by wz on 2017/12/15.
 * 配置页面设置
 */
public class ConfigurationPage {
    /**
     * 编码
     */
    private String coding;
    /**
     * 名称
     */
    private String name;
    /**
     * 表
     */
    private String tableEn;
    /**
     * 从表高度
     */
    private Integer slaveHeight;
    /**
     * 列表高度
     */
    private Integer listHeight;
    /**
     *从表行数
     */
     private Integer slaveRows;
    /**
     *列表行数
     */
     private Integer listRows;
    /**
     *是否显示查询
     */
     private Boolean isShownQuerys;
    /**
     *查询窗口样式
     */
     private String querysStyle;

    public String getCoding() {
        return coding;
    }

    public void setCoding(String coding) {
        this.coding = coding;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTableEn() {
        return tableEn;
    }

    public void setTableEn(String tableEn) {
        this.tableEn = tableEn;
    }

    public Integer getSlaveHeight() {
        return slaveHeight;
    }

    public void setSlaveHeight(Integer slaveHeight) {
        this.slaveHeight = slaveHeight;
    }

    public Integer getListHeight() {
        return listHeight;
    }

    public void setListHeight(Integer listHeight) {
        this.listHeight = listHeight;
    }

    public Integer getSlaveRows() {
        return slaveRows;
    }

    public void setSlaveRows(Integer slaveRows) {
        this.slaveRows = slaveRows;
    }

    public Integer getListRows() {
        return listRows;
    }

    public void setListRows(Integer listRows) {
        this.listRows = listRows;
    }

    public Boolean getShownQuerys() {
        return isShownQuerys;
    }

    public void setShownQuerys(Boolean shownQuerys) {
        isShownQuerys = shownQuerys;
    }

    public String getQuerysStyle() {
        return querysStyle;
    }

    public void setQuerysStyle(String querysStyle) {
        this.querysStyle = querysStyle;
    }

    @Override
    public String toString() {
        return "ConfigurationPage{" +
                "coding='" + coding + '\'' +
                ", name='" + name + '\'' +
                ", tableEn='" + tableEn + '\'' +
                ", slaveHeight=" + slaveHeight +
                ", listHeight=" + listHeight +
                ", slaveRows=" + slaveRows +
                ", listRows=" + listRows +
                ", isShownQuerys=" + isShownQuerys +
                ", querysStyle='" + querysStyle + '\'' +
                '}';
    }
}
