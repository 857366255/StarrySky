/**
 * Created by wz on 2017/7/6.
 */

import base.SpringTestCase;
import com.starrysky.sys.service.ManService;
import com.starrysky.sys.vo.Man;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


/**
 * 功能概要：单元测试
 */
@Component("configInfo")
public class ManServiceTest extends SpringTestCase {

    @Autowired
    private ManService manService;

    /**
     * 按条件查询人
     */
    @Test
    public void findByCondition() {
        System.out.println("按条件查询人");
        Man man = new Man();
        //man.setName("z");
       // man.setSex(true);
        man.setAge(10);
        //man.setPhone("125");
       // man.setAddress("阿");
        System.out.println(manService.findByCondition(man));
    }
    /**
     * 查询人
     */
    @Test
    public void findById() {
        System.out.println("查询人");
        System.out.println(manService.findById(2));
    }
    /**
     * 查询所有人
     */
    @Test
    public void findAll() {
        System.out.println("查询所有人");
        System.out.println(manService.findAll());
    }
    /**
     * 新增人
     */
    @Test
    public void doCreate() {
        System.out.println("新增人");
        Man man =  new Man();
        man.setName("z");
        man.setSex(true);
        man.setAge(10);
        man.setPhone("125");
        man.setAddress("阿");
        System.out.println(manService.doCreate(man));
    }
    /**
     * 更新人
     */
    @Test
    public void doUpdate() {
        System.out.println("更新人");
        Man man =  manService.findById(3);
        man.setName("zz2");
        man.setSex(true);
        man.setAge(1000);
        man.setPhone("125asdasd1");
        man.setAddress("阿adsasd1");
        System.out.println(manService.doUpdate(man));
    }
    /**
     * 删除人
     */
    @Test
    public void doRemove() {
        System.out.println("删除人");
        Set ele = new HashSet();
        ele.add(3);
        ele.add(4);
        System.out.println(manService.doRemove(3));
    }
    /**
     * 批量删除人
     */
    @Test
    public void doRemoveBatch() {
        System.out.println("批量删除人");
        List list = new ArrayList();
        list.add(5);
        list.add(4);
        System.out.println(manService.doRemoveBatch(list));
    }


}