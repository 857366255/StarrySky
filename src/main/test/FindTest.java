/**
 * Created by wz on 2017/7/6.
 */

import base.SpringTestCase;
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
public class FindTest extends SpringTestCase {

    @Autowired
    private FindService findService;

    @Test
    public void find(){
        System.out.println("查询数据");
        List<Map<String, Object>> mapList = findService.getData("s_menu");
        System.out.println(mapList);
    }
}