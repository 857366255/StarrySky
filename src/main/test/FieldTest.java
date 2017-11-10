/**
 * Created by wz on 2017/7/6.
 */

import base.SpringTestCase;
import com.starrysky.sys.po.Field;
import com.starrysky.sys.po.Table;
import com.starrysky.sys.service.FieldService;
import com.starrysky.sys.service.TableService;
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
        Field table = new Field();
        //man.setName("z");
       // man.setSex(true);
        //man.setAge(10);
        //man.setPhone("125");
       // man.setAddress("阿");
        System.out.println(fieldService.findByCondition(table));
    }
    /**
     * 查询人
     */
    @Test
    public void findById() {
        System.out.println("查询人");
        System.out.println(fieldService.findById(182));
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
        Field table =  new Field();
        table.setName_ch("asdsa");
        table.setName_en("asdsadas");
        System.out.println(fieldService.doCreate(table));
    }
    /**
     * 更新人
     */
    @Test
    public void doUpdate() {
        System.out.println("更新人");
        Field table =  fieldService.findById(182);
        table.setName_ch("asd");
        System.out.println(fieldService.doUpdate(table));
    }
    /**
     * 删除人
     */
    @Test
    public void doRemove() {
        System.out.println("删除人");
        System.out.println(fieldService.doRemove(182));
    }
    /**
     * 批量删除人
     */
    @Test
    public void doRemoveBatch() {
        System.out.println("批量删除人");
        List list = new ArrayList();
        list.add(183);
        list.add(184);
        System.out.println(fieldService.doRemoveBatch(list));
    }
}