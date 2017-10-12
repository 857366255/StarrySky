/**
 * Created by wz on 2017/7/6.
 */

import base.SpringTestCase;
import com.starrysky.base.po.Field;
import com.starrysky.base.service.FieldService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;


/**
 * 功能概要：单元测试
 */
@Component("configInfo")
public class FieldTest extends SpringTestCase {

    @Autowired
    private FieldService fieldService;

    /**
     * 按条件查询人
     */
    @Test
    public void findByCondition() {
        System.out.println("按条件查询人");
        Field man = new Field();
        //man.setName("z");
       // man.setSex(true);
      //  man.setAge(10);
        //man.setPhone("125");
       // man.setAddress("阿");
        System.out.println(fieldService.findByCondition(man));
    }
    /**
     * 查询人
     */
    @Test
    public void findById() {
        System.out.println("查询人");
        System.out.println(fieldService.findById(2));
    }
    /**
     * 查询所有人
     */
    @Test
    public void findAll() {
        System.out.println("查询所有人");
        System.out.println(fieldService.findAll());
    }
    /**
     * 新增人
     */
    @Test
    public void doCreate() {
        System.out.println("新增人");
        Field field =  new Field();
        field.setName("自行车");
        field.setIdName("zxc");
        field.setTableName("1");
        field.setType("varchar");
        field.setSize(255);
        field.setTyoeSize("varchar(255)");
        field.setNull(false);
        System.out.println(fieldService.doCreate(field));
    }
    /**
     * 更新人
     */
    @Test
    public void doUpdate() {
        System.out.println("更新人");
        Field field =  fieldService.findById(1);
        field.setName("自行车1");
        field.setIdName("zxc1");
        field.setTableName("1");
        field.setType("varchar");
        field.setSize(255);
        field.setTyoeSize("varchar(255)");
        field.setNull(false);
        System.out.println(fieldService.doUpdate(field));
    }
    /**
     * 删除人
     */
    @Test
    public void doRemove() {
        System.out.println("删除人");
        System.out.println(fieldService.doRemove(1));
    }
    /**
     * 批量删除人
     */
    @Test
    public void doRemoveBatch() {
        System.out.println("批量删除人");
        List list = new ArrayList();
        list.add(4);
        list.add(3);
        System.out.println(fieldService.doRemoveBatch(list));
    }
    @Test
    public void synchronizing(){

        System.out.println(fieldService.synchronizing());
    }


}