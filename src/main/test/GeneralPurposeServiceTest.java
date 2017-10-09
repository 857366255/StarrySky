/**
 * Created by wz on 2017/7/6.
 */

import base.SpringTestCase;
import com.starrysky.module.sys.service.EmployeesService;
import com.starrysky.sys.vo.Man;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.*;


/**
 * 功能概要：单元测试
 */
@Component("configInfo")
public class GeneralPurposeServiceTest extends SpringTestCase {

    @Autowired
    private EmployeesService employeesService;

    /**
     * 新增人
     */
    @Test
    public void doCreate() {
        System.out.println("新增人");
        Map<String, Object> map =  new HashMap<String, Object>();
        map.put("id",20);
        map.put("man_id",2);
        map.put("user","zqq");
        map.put("role","私教123");
        map.put("password","123456");
        map.put("is_enable",true);
        System.out.println(employeesService.doCreate(map));
    }

    /**
     * 批量删除人
     */
    @Test
    public void doRemoveBatch() {
        System.out.println("批量删除人");
        List<Integer> list = new ArrayList<Integer> ();
        list.add(5);
        list.add(4);
        System.out.println(employeesService.doRemoveBatch(list));
    }

    /**
     * 删除人
     */
    @Test
    public void doRemove() {
        System.out.println("删除人");
        System.out.println(employeesService.doRemove(3));
    }

    @Test
    public void doUpdate() {
        System.out.println("更新人");
        Map<String, Object> map =  employeesService.findById(2);
        System.out.println(map);
        map.put("is_enable",false);
        map.put("id",30);
        System.out.println(employeesService.doUpdate(map));
        Map<String, Object> map2 =  employeesService.findById(2);
        System.out.println(map2);
    }


    /**
     * 查询所有人
     */
    @Test
    public void findAll() {
        System.out.println("查询所有人");
        System.out.println(employeesService.findAll());
    }
    /**
     * 查询人
     */
    @Test
    public void findById() {
        System.out.println("查询人");
        System.out.println(employeesService.findById(2));
    }
    /**
     * 按条件查询人
     */
    @Test
    public void findByCondition() {
        System.out.println("按条件查询人");
        Map<String, Object> map =  new HashMap<String, Object>();
        map.put("is_enable",false);
        map.put("id",30);
        System.out.println(employeesService.findByCondition(map));
    }

}