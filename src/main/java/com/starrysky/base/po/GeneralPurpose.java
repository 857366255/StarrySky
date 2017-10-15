package com.starrysky.base.po;

import com.starrysky.sys.po.Man;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wz on 2017/10/14.
 */
public class GeneralPurpose {
    public final static String TABLE_NAME_EN = "s_field";
    public final static List<String> FIELD_NAME_LIST = Arrays.asList("id","table_name","name_ch","name_en","type","size","type_size","is_null","category");
    public final static Map<String,Object> FIELD_MAP = new HashMap<String, Object>() {
        {
            Map<String, Object> columnMap = new HashMap<String, Object>();
            for(String s:FIELD_NAME_LIST){
                columnMap.put(s,null);
            }
            put("column",columnMap);
            put("field",FIELD_NAME_LIST);
            put("table",TABLE_NAME_EN);
        }
    };

    private String tableNameCH;
    private String tableNameEN;
    private List<String> pkList;
    private Map<String, Object> fieldPkMap;
    private List<Map<String, Object>> fkList;
    private List<String> fieldList;
    private Map<String, Object> fieldMap;
    private Map<String,Object> findMap;
    private Map<String, Object> createMap;
    private Map<String, Object> updateMap;
    private Integer remove;
    private List<Integer> removeList;

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

    public Map<String, Object> getFieldPkMap() {
        return fieldPkMap;
    }

    public void setFieldPkMap(Map<String, Object> fieldPkMap) {
        this.fieldPkMap = fieldPkMap;
    }

    public List<Map<String, Object>> getFkList() {
        return fkList;
    }

    public void setFkList(List<Map<String, Object>> fkList) {
        this.fkList = fkList;
    }

    public List<String> getFieldList() {
        return fieldList;
    }

    public void setFieldList(List<String> fieldList) {
        this.fieldList = fieldList;
    }

    public Map<String, Object> getFieldMap() {
        return fieldMap;
    }

    public void setFieldMap(Map<String, Object> fieldMap) {
        this.fieldMap = fieldMap;
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

    public Integer getRemove() {
        return remove;
    }

    public void setRemove(Integer remove) {
        this.remove = remove;
    }

    public List<Integer> getRemoveList() {
        return removeList;
    }

    public void setRemoveList(List<Integer> removeList) {
        this.removeList = removeList;
    }
}
