package com.starrysky.sys.service;





import com.starrysky.sys.vo.User;

import java.util.List;

public interface UserService {
    public boolean check(User user);
    public boolean login(User user);
    public User findById(Integer id);
    public List<User> findAll();
    public boolean doCreate(User user);
    public boolean doUpdate(User user);
    public boolean doRemove(Integer id);
    public boolean doRemoveBatch(List ele);
    public List<User> findByCondition(User user);
}
