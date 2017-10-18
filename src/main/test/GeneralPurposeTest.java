/**
 * Created by wz on 2017/7/6.
 */

import base.SpringTestCase;
import com.starrysky.base.dao.GeneralPurposeDao;
import com.starrysky.base.po.GeneralPurpose;
import com.starrysky.base.service.GeneralPurposeService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.util.*;


/**
 * 功能概要：单元测试
 */
@Component("configInfo")
public class GeneralPurposeTest extends SpringTestCase {

    @Autowired
    private GeneralPurposeService generalPurposeService;
    @Autowired
    private GeneralPurposeDao generalPurposeDao;

    @Value("#{db.hwz}")
    private String filePath;

    /**
     * SELECT TABLE_NAME,TABLE_COMMENT FROM information_schema.TABLES WHERE table_schema='starrysky';查看该用户下表信息
     * select * from INFORMATION_SCHEMA.columns where table_schema='starrysky';查看该用户下所以字
     * select * from INFORMATION_SCHEMA.KEY_COLUMN_USAGE where table_schema = 'starrysky' 查看外键
     * fk 外键
     * pk 主键
     * show create table t_man;查看表结构sql语句
     */
    @Test
    public void zxc(){
        System.out.println(filePath);
        GeneralPurpose generalPurpose = new GeneralPurpose();
        generalPurpose.setTableNameEN("t_employees");
        System.out.println(generalPurposeDao.findByTableName(generalPurpose));
    }

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
        generalPurposeService.init("t_employees");
        System.out.println(generalPurposeService.doCreate(map));
    }

    /**
     * 批量删除人
     */
    @Test
    public void doRemoveBatch() {
        System.out.println("批量删除人");
        List<Integer> list = new ArrayList<Integer> ();
        list.add(16);
        list.add(17);
        generalPurposeService.init("t_employees");
        System.out.println(generalPurposeService.doRemoveBatch(list));
    }

    /**
     * 删除人
     */
    @Test
    public void doRemove() {
        System.out.println("删除人");
        generalPurposeService.init("t_employees");
        System.out.println(generalPurposeService.doRemove(15));
    }
    /**
     * 更新人
     */
    @Test
    public void doUpdate() {
        generalPurposeService.init("t_employees");
        System.out.println("更新人");
        Map<String, Object> map =  generalPurposeService.findById();
        System.out.println(map);
        map.put("is_enable",false);
        map.put("role","私教w");
        System.out.println(generalPurposeService.doUpdate(map));
        System.out.println(generalPurposeService.findById());
    }


    /**
     * 查询所有人
     */
    @Test
    public void findAll() {
        System.out.println("查询所有人");
        generalPurposeService.init("t_employees");
        System.out.println(generalPurposeService.findAll());
    }
    /**
     * 查询人
     */
    @Test
    public void findById() {
        System.out.println("查询人");
        generalPurposeService.init("t_employees");
        GeneralPurpose generalPurpose = generalPurposeService.getGeneralPurpose();
        System.out.println(generalPurpose.getFieldPkMap());
        generalPurpose.getFieldPkMap().put("id",2);
        System.out.println(generalPurpose.getFieldPkMap());
        System.out.println(generalPurposeService.findById());
    }
    /**
     * 按条件查询人
     */
    @Test
    public void findByCondition() {
        System.out.println("按条件查询人");
        Map<String, Object> map =  new HashMap<String, Object>();
        map.put("is_enable",true);
       // map.put("id",30);
        generalPurposeService.init("t_employees");
        System.out.println(generalPurposeService.findByCondition(map));
    }

}