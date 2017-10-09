package com.starrysky.module.sys.service;





import com.starrysky.sys.vo.Man;
import java.util.List;
import java.util.Map;

public interface EmployeesService {
    public Map<String,Object> findById(Integer id);
    public List<Map<String,Object>> findAll();
    public boolean doCreate(Map<String,Object> map);
    public boolean doUpdate(Map<String,Object> map);
    public boolean doRemove(Integer id);
    public boolean doRemoveBatch(List ele);
    public List<Map<String,Object>> findByCondition(Map<String,Object> map);
}
