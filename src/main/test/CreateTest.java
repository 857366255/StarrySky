/**
 * Created by wz on 2017/7/6.
 */

import base.SpringTestCase;
import com.starrysky.base.service.CreateService;
import com.starrysky.base.service.FindService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;


/**
 * 功能概要：单元测试
 */
@Component("configInfo")
public class CreateTest extends SpringTestCase {

    @Autowired
    private CreateService createService;

    @Test
    public void getFieldList(){
        //System.out.println("查询字段信息："+createService.getFieldList("s_field"));
    }
}