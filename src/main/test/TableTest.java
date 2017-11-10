/**
 * Created by wz on 2017/7/6.
 */

import base.SpringTestCase;
import com.starrysky.sys.po.Man;
import com.starrysky.sys.po.Table;
import com.starrysky.sys.service.ManService;
import com.starrysky.sys.service.TableService;
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
public class TableTest extends SpringTestCase {

    @Autowired
    private TableService tableService;

    /**
     * 按条件查询人
     */
    @Test
    public void findByCondition() {
        System.out.println("按条件查询人");
        Table table = new Table();
        //man.setName("z");
       // man.setSex(true);
        //man.setAge(10);
        //man.setPhone("125");
       // man.setAddress("阿");
        System.out.println(tableService.findByCondition(table));
    }
    /**
     * 查询人
     */
    @Test
    public void findById() {
        System.out.println("查询人");
        System.out.println(tableService.findById(2));
    }
    /**
     * 查询所有人
     */
    @Test
    public void findAll() {
        System.out.println("查询所有人");
        System.out.println(tableService.findAll());
    }
    /**
     * 新增人
     */
    @Test
    public void doCreate() {
        System.out.println("新增人");
        Table table =  new Table();
        table.setName_ch("asdsa");
        table.setName_en("asdsadas");
        System.out.println(tableService.doCreate(table));
    }
    /**
     * 更新人
     */
    @Test
    public void doUpdate() {
        System.out.println("更新人");
        Table table =  tableService.findById(22);
        table.setName_ch("asd");
        System.out.println(tableService.doUpdate(table));
    }
    /**
     * 删除人
     */
    @Test
    public void doRemove() {
        System.out.println("删除人");
        System.out.println(tableService.doRemove(24));
    }
    /**
     * 批量删除人
     */
    @Test
    public void doRemoveBatch() {
        System.out.println("批量删除人");
        List list = new ArrayList();
        list.add(22);
        list.add(23);
        System.out.println(tableService.doRemoveBatch(list));
    }


}