package com.starrysky.sys.service;





import com.starrysky.sys.vo.Man;

import java.util.List;

public interface ManService {
    public Man findById(Integer id);
    public List<Man> findAll();
    public boolean doCreate(Man man);
    public boolean doUpdate(Man man);
    public boolean doRemove(Integer id);
    public boolean doRemoveBatch(List ele);
    public List<Man> findByCondition(Man man);
}
