/**
 * Created by wz on 2017/7/6.
 */

import base.SpringTestCase;
import com.starrysky.sys.dao.ConfigurationPageDao;
import com.starrysky.sys.dao.MenuDao;
import com.starrysky.sys.dao.TableDao;
import com.starrysky.sys.po.ConfigurationPage;
import com.starrysky.sys.po.Menu;
import com.starrysky.sys.po.Table;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


/**
 * 功能概要：单元测试
 */
@Component("configInfo")
public class Test extends SpringTestCase {

    @Autowired
    private ConfigurationPageDao configurationPageDao;
    @Autowired
    private MenuDao menuDao;
    @Autowired
    private TableDao tableDao;

    @org.junit.Test
    public void tsstAdd(){
        System.out.println("新增");
        Table table = new Table();
        table.setCoding("cc");
        table.setAnnotation("是");
        table.setConfigurationPageCoding("a");
        table.setCorrelateField("aa");
        table.setName("发");
        table.setSlaveSorting(1);
        table.setType("dss");
        table.setTableEn("res");
        table.setSuperiorCoding("c");
        table.setSuperiorCorrelateField("aass");
        System.out.println(tableDao.doCreate(table));
        /*ConfigurationPage configurationPage = new ConfigurationPage();
        configurationPage.setCoding("HWAS21123123");
        configurationPage.setListHeight(1000);
        configurationPage.setListRows(20);
        configurationPage.setName("坤");
        configurationPage.setQuerysStyle("assad");
        configurationPage.setShownQuerys(true);
        configurationPage.setSlaveHeight(500);
        configurationPage.setTableEn("s_asd");
        configurationPage.setSlaveRows(10);
        System.out.println(configurationPageDao.doCreate(configurationPage));*/
        /*Menu menu = new Menu();
        menu.setCoding("baa");
        menu.setConfigurationPageCoding("asa");
        menu.setDisplayStyle("das");
        menu.setEnablement(false);
        menu.setIcon("ad");
        menu.setName("看");
        menu.setSorting(12);
        menu.setSuperiorCoding("b");
        menu.setUrl("uil");
        System.out.println(menuDao.doCreate(menu));*/
    }

    @org.junit.Test
    public void tsstUpdate(){
        System.out.println("更新");
        Table table = new Table();
        table.setCoding("cc");
        table.setAnnotation(null);
        table.setConfigurationPageCoding(null);
        table.setCorrelateField(null);
        table.setName(null);
        table.setSlaveSorting(null);
        table.setType(null);
        table.setTableEn(null);
        table.setSuperiorCoding(null);
        table.setSuperiorCorrelateField(null);
        System.out.println(tableDao.doUpdate(table));
       /* ConfigurationPage configurationPage = new ConfigurationPage();
        configurationPage.setCoding("HWAS21123123");
        configurationPage.setListHeight(2000);
        configurationPage.setListRows(50);
        configurationPage.setName("坤123");
        configurationPage.setQuerysStyle("adadasdadasdasda");
        configurationPage.setShownQuerys(false);
        configurationPage.setSlaveHeight(1500);
        configurationPage.setTableEn("s_asd");
        configurationPage.setSlaveRows(100);
        System.out.println(configurationPageDao.doUpdate(configurationPage));*/
        /*Menu menu = new Menu();
        menu.setCoding("ba");
        menu.setConfigurationPageCoding(null);
        menu.setDisplayStyle(null);
        menu.setEnablement(null);
        menu.setIcon(null);
        menu.setName(null);
        menu.setSorting(1);
        menu.setSuperiorCoding(null);
        menu.setUrl(null);
        System.out.println(menuDao.doUpdate(menu));*/
    }
    @org.junit.Test
    public void doRemove(){
        System.out.println("删除");
        System.out.println(tableDao.doRemove("cc"));
       /* System.out.println(configurationPageDao.doRemove("HWAS21123123"));*/
       /* System.out.println(menuDao.doRemove("ba"));*/
    }
}