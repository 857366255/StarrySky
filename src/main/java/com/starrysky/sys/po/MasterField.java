package com.starrysky.sys.po;

/**
 * 主表字段设置
 * Created by wz on 2017/11/29.
 */
public class MasterField {
    /**
     * 编码
     */
    private String coding;
    /**
     * 菜单栏编码
     */
    private String menuCoding;
    /**
     * 表名称
     */
    private String tableName;
    /**
     * 字段名称
     */
    private String fieldName;
    /**
     * 名称
     */
    private String name;
    /**
     *引用表名
     */
    private String referencedTableName;
    /**
     * 引用字段名
     */
    private String referencedFieldName;
    /**
     * 输入框类型
     */
    private String inputType;
    /**
     * 是否编辑
     */
    private Boolean isEdit;
    /**
     * 是否显示
     */
    private Boolean isShow;

    public String getCoding() {
        return coding;
    }

    public void setCoding(String coding) {
        this.coding = coding;
    }

    public String getMenuCoding() {
        return menuCoding;
    }

    public void setMenuCoding(String menuCoding) {
        this.menuCoding = menuCoding;
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public String getFieldName() {
        return fieldName;
    }

    public void setFieldName(String fieldName) {
        this.fieldName = fieldName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getReferencedTableName() {
        return referencedTableName;
    }

    public void setReferencedTableName(String referencedTableName) {
        this.referencedTableName = referencedTableName;
    }

    public String getReferencedFieldName() {
        return referencedFieldName;
    }

    public void setReferencedFieldName(String referencedFieldName) {
        this.referencedFieldName = referencedFieldName;
    }

    public String getInputType() {
        return inputType;
    }

    public void setInputType(String inputType) {
        this.inputType = inputType;
    }

    public Boolean getEdit() {
        return isEdit;
    }

    public void setEdit(Boolean edit) {
        isEdit = edit;
    }

    public Boolean getShow() {
        return isShow;
    }

    public void setShow(Boolean show) {
        isShow = show;
    }

    @Override
    public String toString() {
        return "MasterField{" +
                "coding='" + coding + '\'' +
                ", menuCoding='" + menuCoding + '\'' +
                ", tableName='" + tableName + '\'' +
                ", fieldName='" + fieldName + '\'' +
                ", name='" + name + '\'' +
                ", referencedTableName='" + referencedTableName + '\'' +
                ", referencedFieldName='" + referencedFieldName + '\'' +
                ", inputType='" + inputType + '\'' +
                ", isEdit=" + isEdit +
                ", isShow=" + isShow +
                '}';
    }
}
