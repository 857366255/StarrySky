package com.starrysky.sys.service.impl;


import com.starrysky.sys.dao.ManDao;
import com.starrysky.sys.service.ManService;
import com.starrysky.sys.vo.Man;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class ManServiceImpl implements ManService {

    @Autowired
    private ManDao manDao;

    public Man findById(Integer id) {
        return manDao.findById(id);
    }

    public List<Man> findAll() {
        return manDao.findAll();
    }

    public boolean doCreate(Man man) {
        return manDao.doCreate(man);
    }

    public boolean doUpdate(Man man) {
        return manDao.doUpdate(man);
    }

    public boolean doRemove(Integer id) {
        return manDao.doRemove(id);
    }

    public boolean doRemoveBatch(List list) {
        return manDao.doRemoveBatch(list);
    }

    public List<Man> findByCondition(Man man) {
        return manDao.findByCondition(man);
    }
}
