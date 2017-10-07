package com.starrysky.sys.dao;


import com.starrysky.base.dao.BaseDao;
import com.starrysky.sys.vo.User;

public interface UserDao extends BaseDao<Integer,User> {
    public Integer login(User user);

    public Integer check(User user);
}