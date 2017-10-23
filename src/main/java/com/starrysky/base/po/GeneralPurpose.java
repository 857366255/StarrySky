package com.starrysky.base.po;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wz on 2017/10/14.
 */
public class GeneralPurpose {
    public final static String TABLE_NAME_EN = "s_field";
    public final static String FK_FIELD_NAME_EN = "s_fk_field";
    public final static List<String> TABLE_FIELD_LIST = Arrays.asList("id","name_ch","name_en");
    public final static List<String> FIELD_NAME_LIST = Arrays.asList("id","table_name","name_ch","name_en","type","size","type_size","is_null","category","columns","name","remark","hint","is_disable","is_necessary","input_type","select_group");
    public final static List<String> FK_FIELD_NAME_LIST = Arrays.asList("id","fk_name_en","table_name_en","field_name_en","referenced_table_name_en","referenced_field_name_en");

    private String tableNameCH;
    private String tableNameEN;
    private List<String> pkList;
    /**
     * 自关联外键
     */
    private Map<String, Object> meFkMap;
    /**
     * 单关联外键
     */
    private List<Map<String, Object>> singleFkList;
    /**
     *多关联外键
     */
    private List<Map<String, Object>> multipleFkList;
    private List<String> fieldList;
    private Map<String, Object> findMap;
    private Map<String, Object> createMap;
    private Map<String, Object> updateMap;
    private Map<String, Object> removeMap;
    private List<Map<String, Object>>  removeList;

    public String getTableNameCH() {
        return tableNameCH;
    }

    public void setTableNameCH(String tableNameCH) {
        this.tableNameCH = tableNameCH;
    }

    public String getTableNameEN() {
        return tableNameEN;
    }

    public void setTableNameEN(String tableNameEN) {
        this.tableNameEN = tableNameEN;
    }

    public List<String> getPkList() {
        return pkList;
    }

    public void setPkList(List<String> pkList) {
        this.pkList = pkList;
    }

    public Map<String, Object> getMeFkMap() {
        return meFkMap;
    }

    public void setMeFkMap(Map<String, Object> meFkMap) {
        this.meFkMap = meFkMap;
    }

    public List<Map<String, Object>> getSingleFkList() {
        return singleFkList;
    }

    public void setSingleFkList(List<Map<String, Object>> singleFkList) {
        this.singleFkList = singleFkList;
    }

    public List<Map<String, Object>> getMultipleFkList() {
        return multipleFkList;
    }

    public void setMultipleFkList(List<Map<String, Object>> multipleFkList) {
        this.multipleFkList = multipleFkList;
    }

    public List<String> getFieldList() {
        return fieldList;
    }

    public void setFieldList(List<String> fieldList) {
        this.fieldList = fieldList;
    }

    public Map<String, Object> getFindMap() {
        return findMap;
    }

    public void setFindMap(Map<String, Object> findMap) {
        this.findMap = findMap;
    }

    public Map<String, Object> getCreateMap() {
        return createMap;
    }

    public void setCreateMap(Map<String, Object> createMap) {
        this.createMap = createMap;
    }

    public Map<String, Object> getUpdateMap() {
        return updateMap;
    }

    public void setUpdateMap(Map<String, Object> updateMap) {
        this.updateMap = updateMap;
    }

    public Map<String, Object> getRemoveMap() {
        return removeMap;
    }

    public void setRemoveMap(Map<String, Object> removeMap) {
        this.removeMap = removeMap;
    }

    public List<Map<String, Object>> getRemoveList() {
        return removeList;
    }

    public void setRemoveList(List<Map<String, Object>> removeList) {
        this.removeList = removeList;
    }
}
