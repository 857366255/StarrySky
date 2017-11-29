/**
 * Created by wz on 2017/7/6.
 */

import base.SpringTestCase;
import com.starrysky.sys.dao.MasterFieldDao;
import com.starrysky.sys.po.MasterField;
import com.starrysky.sys.service.DatabasePperationService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


/**
 * 功能概要：单元测试
 */
@Component("configInfo")
public class MasterFirldTest extends SpringTestCase {

    @Autowired
    private MasterFieldDao masterFieldDao;

    @Test
    public void findAll(){
        System.out.println("获得主要字段");
        System.out.println(masterFieldDao.findAll());
    }
    @Test
    public void doCreate(){
        System.out.println("获得主要字段");
        MasterField masterField = new MasterField();
        masterField.setTableName("tabls");
        masterField.setFieldName("id");
        masterField.setCoding("id");
        System.out.println(masterFieldDao.doCreate(masterField));
    }
}