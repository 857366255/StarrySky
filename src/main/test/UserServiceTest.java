/**
 * Created by wz on 2017/7/6.
 */

import base.SpringTestCase;


import com.starrysky.sys.service.UserService;
import com.starrysky.sys.vo.User;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


/**
 * 功能概要：单元测试
 */
@Component("configInfo")
public class UserServiceTest extends SpringTestCase {

    @Autowired
    private UserService userService;

    /**
     * 按条件查询用户
     */
    @Test
    public void findByCondition() {
        System.out.println("按条件查询用户");
        User user = new User();
        user.setName("s");
        System.out.println(userService.findByCondition(user));
    }
    /**
     * 查询用户
     */
    @Test
    public void findById() {
        System.out.println("查询用户");
        System.out.println(userService.findById(1));
    }
    /**
     * 查询所有用户
     */
    @Test
    public void findAll() {
        System.out.println("查询所有用户");
        System.out.println(userService.findAll());
    }
    /**
     * 新增用户
     */
    @Test
    public void doCreate() {
        System.out.println("新增用户");
       // User user =  new User("asd","sad","12346");
        //System.out.println(userService.doCreate(user));
    }
    /**
     * 更新用户
     */
    @Test
    public void doUpdate() {
        System.out.println("更新用户");
        User user =  userService.findById(2);
        user.setName("sadasdfsadf");
        System.out.println(userService.doUpdate(user));
    }
    /**
     * 删除用户
     */
    @Test
    public void doRemove() {
        System.out.println("删除用户");
        Set ele = new HashSet();
        ele.add(3);
        ele.add(4);
        System.out.println(userService.doRemove(3));
    }
    /**
     * 批量删除用户
     */
    @Test
    public void doRemoveBatch() {
        System.out.println("批量删除用户");
        List list = new ArrayList();
        list.add(5);
        list.add(4);
        System.out.println(userService.doRemoveBatch(list));
    }


}