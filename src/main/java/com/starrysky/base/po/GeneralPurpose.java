package com.starrysky.base.po;

import java.rmi.MarshalledObject;
import java.util.*;

/**
 * Created by wz on 2017/10/14.
 */
public class GeneralPurpose {
    public final static String TABLE_NAME_EN = "s_field";
    public final static String FK_FIELD_NAME_EN = "s_fk_field";
    public final static List<String> TABLE_FIELD_LIST = Arrays.asList("id","name_ch","name_en");
    public final static List<String> FIELD_NAME_LIST = Arrays.asList("id","table_name","name_ch","name_en","type","size","type_size","is_null","category","columns","name","remark","hint","is_disable","is_necessary","input_type","select_group","is_fk_display");
    public final static List<String> FK_FIELD_NAME_LIST = Arrays.asList("id","fk_name_en","table_name_en","field_name_en","referenced_table_name_en","referenced_field_name_en");

    private String tableNameCH;
    private String tableNameEN;
    //private List<String> pkList;
    /**
     * 自关联外键
     */
    //private Map<String, Object> meFkMap;
    /**
     * 单关联外键
     */
    //private List<Map<String, Object>> singleFkList;
    /**
     *多关联外键
     */
    //private List<Map<String, Object>> multipleFkList;

    private List<Map<String, Object>> fkListMap;
    //private List<String> fieldList;
    private List<Map<String, Object>> fieldListMap;
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
        List<String> pkList = new ArrayList<String>();
        System.out.println(fieldListMap);
        for (Map<String, Object> map : fieldListMap){
            String temp = map.get("name_en").toString();
            if(map.get("category") instanceof String && map.get("category").equals("PRI")){
                pkList.add(temp);
            }
        }
        return pkList;
    }

   /* public void setPkList(List<String> pkList) {
        this.pkList = pkList;
    }*/

    public Map<String, Object> getMeFkMap() {
        Map<String, Object> meFkMap = new HashMap<String, Object>();
        for(Map<String, Object> map : fkListMap){
            String tne = (String) map.get("table_name_en");
            String rtne = (String) map.get("referenced_table_name_en");
            if(tne.equals(rtne))
                meFkMap=map;
        }
        return meFkMap;
    }

    /*public void setMeFkMap(Map<String, Object> meFkMap) {
        this.meFkMap = meFkMap;
    }*/

    public List<Map<String, Object>> getSingleFkList() {
        List<Map<String, Object>> singleFkList = new ArrayList<Map<String, Object>>();
        for(Map<String, Object> map : fkListMap){
            String tne = (String) map.get("table_name_en");
            if(tne.equals(tableNameEN))
                singleFkList.add(map);
        }
        return singleFkList;
    }

    /*public void setSingleFkList(List<Map<String, Object>> singleFkList) {
        this.singleFkList = singleFkList;
    }*/

    public List<Map<String, Object>> getMultipleFkList() {
        List<Map<String, Object>> multipleFkList = new ArrayList<Map<String, Object>>();
        for(Map<String, Object> map : fkListMap){
            String rtne = (String) map.get("referenced_table_name_en");
            if(rtne.equals(tableNameEN))
                multipleFkList.add(map);
        }
        return multipleFkList;
    }


    /*public void setMultipleFkList(List<Map<String, Object>> multipleFkList) {
        this.multipleFkList = multipleFkList;
    }*/

    public List<String> getFkDisplayList() {
        List<String> fieldList = new ArrayList<String>();
        for (Map<String, Object> map : fieldListMap){
            String temp = map.get("name_en").toString();
            if(map.get("is_fk_display")==null ? false  : (Boolean) map.get("is_fk_display")){
                fieldList.add(temp);
            }
        }
        return fieldList;
    }

    public List<Map<String, Object>> getFkListMap() {
        return fkListMap;
    }

    public void setFkListMap(List<Map<String, Object>> fkListMap) {
        this.fkListMap = fkListMap;
    }

    public List<String> getFieldList() {
        List<String> fieldList = new ArrayList<String>();
        for (Map<String, Object> map : fieldListMap){
            String temp = map.get("name_en").toString();
            fieldList.add(temp);
        }
        if(fieldListMap.size()==0 && tableNameEN.equals("s_table")){
            fieldList=GeneralPurpose.TABLE_FIELD_LIST;
        }else if(tableNameEN.equals("s_field")){
            fieldList=GeneralPurpose.FIELD_NAME_LIST;
        }else if(tableNameEN.equals("s_fk_field")){
            fieldList=GeneralPurpose.FK_FIELD_NAME_LIST;
        }
        return fieldList;
    }

    /*public void setFieldList(List<String> fieldList) {
        this.fieldList = fieldList;
    }*/

    public List<Map<String, Object>> getFieldListMap() {
        return fieldListMap;
    }

    public void setFieldListMap(List<Map<String, Object>> fieldListMap) {
        this.fieldListMap = fieldListMap;
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
        Map<String, Object> fMap = new HashMap<String, Object>();
        for(String s:this.getPkList()){
            fMap.put(s,updateMap.get(s));
        }
        System.out.println(fMap);
        this.setFindMap(fMap);
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
