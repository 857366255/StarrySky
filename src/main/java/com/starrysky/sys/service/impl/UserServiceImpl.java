package com.starrysky.sys.service.impl;


import com.starrysky.sys.dao.UserDao;
import com.starrysky.sys.service.UserService;
import com.starrysky.sys.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public boolean check(User user) {
        Integer count = userDao.check(user);
        if(count == 0){
            return true;
        }

        return false;
    }

    public boolean login(User user) {
        Integer count = userDao.login(user);
        if(count==1){
            return true;
        }
        return false;
    }

    public User findById(Integer id) {
        return userDao.findById(id);
    }

    public List<User> findAll() {
        return userDao.findAll();
    }

    public boolean doCreate(User user) {
        return userDao.doCreate(user);
    }

    public boolean doUpdate(User user) {
        return userDao.doUpdate(user);
    }

    public boolean doRemove(Integer id) {
        return userDao.doRemove(id);
    }

    public boolean doRemoveBatch(List list) {
        return userDao.doRemoveBatch(list);
    }

    public List<User> findByCondition(User user) {
        return userDao.findByCondition(user);
    }
}
