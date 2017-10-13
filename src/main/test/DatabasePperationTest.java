/**
 * Created by wz on 2017/7/6.
 */

import base.SpringTestCase;
import com.starrysky.base.po.Table;
import com.starrysky.base.service.DatabasePperationService;
import com.starrysky.base.service.TableService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;


/**
 * 功能概要：单元测试
 */
@Component("configInfo")
public class DatabasePperationTest extends SpringTestCase {

    @Autowired
    private DatabasePperationService databasePperationService;


    @Test
    public void synchronizing(){
        System.out.println("更新/添加");
        System.out.println(databasePperationService.synchronizing());
    }
}