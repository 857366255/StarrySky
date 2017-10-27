/**
 * Created by wz on 2017/7/6.
 */

import base.SpringTestCase;
import com.starrysky.base.dao.GeneralPurposeDao;
import com.starrysky.base.po.GeneralPurpose;
import com.starrysky.base.service.CreateService;
import com.starrysky.base.service.GeneralPurposeService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 功能概要：单元测试
 */
@Component("configInfo")
public class GeneralPurposeTest2 extends SpringTestCase {

    @Autowired
    private GeneralPurposeService generalPurposeService;
    @Autowired
    private GeneralPurposeDao generalPurposeDao;

    private final String TABLE_NAME_EN="t_man";


    @Test
    public void init(){
        generalPurposeService.init("s_field");
    }

    @Test
    public void fk(){
        generalPurposeService.init("t_man");
        GeneralPurpose generalPurpose = generalPurposeService.getGeneralPurpose();
        generalPurposeService.init("t_employees");
        Map<String, Object> findMap = new HashMap<String, Object>();
        findMap.put("id",1);
        findMap.put("t_man",generalPurpose);
        System.out.println(generalPurposeService.findByCondition(findMap));
        //System.out.println(generalPurposeDao.getDatabaseFkField());
    }


    /**
     * 新增人
     */
    @Test
    public void doCreate() {
        System.out.println("新增人");
        Map<String, Object> map =  new HashMap<String, Object>();
        map.put("id",20);
        map.put("name","zqq");
        map.put("address","123456");
        generalPurposeService.init(TABLE_NAME_EN);
        System.out.println(generalPurposeService.doCreate(map));
    }

    /**
     * 批量删除人
     */
    @Test
    public void doRemoveBatch() {
        System.out.println("批量删除人");
        generalPurposeService.init(TABLE_NAME_EN);
        List<Map<String, Object>> list = new ArrayList<Map<String, Object>> ();
        Map<String, Object> map = new HashMap<String, Object> ();
        map.put("id",14);
        list.add(map);
        map = new HashMap<String, Object> ();
        map.put("id",15);
        list.add(map);
        System.out.println(generalPurposeService.doRemoveBatch(list));
    }

    /**
     * 删除人
     */
    @Test
    public void doRemove() {
        System.out.println("删除人");
        generalPurposeService.init(TABLE_NAME_EN);
        Map<String, Object> map = new HashMap<String, Object> ();
        map.put("id",17);
        System.out.println(generalPurposeService.doRemove(map));
    }
    /**
     * 更新人
     */
    @Test
    public void doUpdate() {
        generalPurposeService.init(TABLE_NAME_EN);
        System.out.println("更新人");
        Map<String, Object> m = new HashMap<String, Object> ();
        m.put("id",16);
        Map<String, Object> map =  generalPurposeService.findById(m);
        map.put("sex",false);
        map.put("name","私教w123");
        System.out.println(generalPurposeService.doUpdate(map));
      //  System.out.println(generalPurposeService.findById());
    }


    /**
     * 查询所有人
     */
    @Test
    public void findAll() {
        System.out.println("查询所有人");
        generalPurposeService.init(TABLE_NAME_EN);
        System.out.println(generalPurposeService.findAll());
    }
    /**
     * 查询人
     */
    @Test
    public void findById() {
        System.out.println("查询人");
        generalPurposeService.init(TABLE_NAME_EN);
        Map<String, Object> map = new HashMap<String, Object> ();
        map.put("id",1);
        System.out.println(generalPurposeService.findById(map));
    }
    /**
     * 按条件查询人
     */
    @Test
    public void findByCondition() {
        System.out.println("按条件查询人");
        Map<String, Object> map =  new HashMap<String, Object>();
        map.put("sesx",true);
        map.put("name","自行车");
        generalPurposeService.init(TABLE_NAME_EN);
        System.out.println(generalPurposeService.findByCondition(map));
    }

}