package com.starrysky.base.service.impl;


import com.starrysky.base.dao.GeneralPurposeDao;
import com.starrysky.base.po.GeneralPurpose;
import com.starrysky.base.service.DatabasePperationService;
import com.starrysky.base.service.GeneralPurposeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 同步数据库
 * Created by wz on 2017/10/13.
 */
@Service
public class DatabasePperationServiceImpl implements DatabasePperationService {
    @Autowired
    private GeneralPurposeDao generalPurposeDao;
    @Autowired
    private GeneralPurposeService generalPurposeService;

    public List<Map<String, Object>> synchronizing(){
        try {
            List<Map<String, Object>> databaseList = generalPurposeDao.getDatabaseTable();
            for(Map<String, Object> map : databaseList){
                synchronizingTable(map);
            }
            databaseList = generalPurposeDao.getDatabaseField();
            for(Map<String, Object> map : databaseList){
                synchronizingField(map);
            }
            databaseList = generalPurposeDao.getDatabaseFkField();
            for(Map<String, Object> map : databaseList){
                synchronizingFkField(map);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 创建或者更新
     * @param tableName 表名称
     * @param map 数据
     * @param findMap 查询数据库是否存在
     */
    private void createOrUpdate(String tableName,Map<String, Object> map,Map<String, Object> findMap) throws Exception {
        generalPurposeService.init(tableName);
        List<Map<String, Object>> mapList = generalPurposeService.findByCondition(findMap);
        if(tableName.equals("s_field")){
            if(mapList.size() == 0 || mapList.get(0).get("name") == null)
                map.put("name",map.get("name_ch"));
            if(mapList.size() == 0 || mapList.get(0).get("columns") == null)
                map.put("columns",3);
            if(mapList.size() == 0 || mapList.get(0).get("is_fk_display") == null)
                map.put("is_fk_display",1);
            if(mapList.size() == 0 || mapList.get(0).get("input_type") == null){
                if(map.get("category").equals("MUL")){
                    map.put("input_type","select");
                }else{
                    map.put("input_type","text");
                }
            }
        }
        if(mapList.size()>1)
            throw new Exception("数据异常:"+mapList);
        if(mapList.size()==0){
            generalPurposeService.doCreate(map);
        }else if(generalPurposeService.findByCondition(map).size()==0){
            map.put("id",mapList.get(0).get("id"));
            generalPurposeService.doUpdate(map);
        }
    }

    private void synchronizingTable(Map<String, Object> map) throws Exception {
        Map<String, Object> temp = new HashMap<String, Object>();
        temp.put("name_en",map.get("name_en"));
        createOrUpdate("s_table",map,temp);
    }
    private  void synchronizingField(Map<String, Object> map) throws Exception {
        Map<String, Object> temp = new HashMap<String, Object>();
        temp.put("name_en",map.get("name_en"));
        temp.put("table_name",map.get("table_name"));
        if(map.get("is_null").equals("YES"))
            map.put("is_null",1);
        else
            map.put("is_null",0);
        createOrUpdate("s_field",map,temp);
    }
    private  void synchronizingFkField(Map<String, Object> map) throws Exception {
        Map<String, Object> temp = new HashMap<String, Object>();
        temp.put("fk_name_en",map.get("fk_name_en"));
        temp.put("table_name_en",map.get("table_name_en"));
        temp.put("field_name_en",map.get("field_name_en"));
        temp.put("referenced_table_name_en",map.get("referenced_table_name_en"));
        temp.put("referenced_field_name_en",map.get("referenced_field_name_en"));
        createOrUpdate("s_fk_field",map,temp);
    }

}
