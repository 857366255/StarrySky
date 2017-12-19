/**
 * Created by wz on 2017/7/6.
 */

import base.SpringTestCase;
import com.starrysky.sys.dao.ConfigurationPageDao;
import com.starrysky.sys.dao.FieldDao;
import com.starrysky.sys.dao.MenuDao;
import com.starrysky.sys.dao.TableDao;
import com.starrysky.sys.po.ConfigurationPage;
import com.starrysky.sys.po.Field;
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
    @Autowired
    private FieldDao fieldDao;

    @org.junit.Test
    public void tsstFind(){
        System.out.println(menuDao.findMenuList());
    }

    @org.junit.Test
    public void tsstAdd(){
        System.out.println("新增");
       /* Field field = new Field();
        field.setCoding("dd");
        field.setName("asd");
        field.setConfigurationPageCoding(null);
        field.setTableCoding(null);
        field.setField("asd");
        field.setAnnotation("as");
        field.setType("ads");
        field.setSize(0);
        field.setInputType("ad");
        field.setEdit(false);
        field.setMust(false);
        field.setEditAnnotation("asd");
        field.setEditSorting(1);
        field.setShowList(false);
        field.setListWidth(2);
        field.setListSorting(3);
        field.setQuerySorting(4);
        field.setQuery(false);
        field.setQueryOccupy(0);
        field.setShowSlave(false);
        field.setSlaveWidth(5);
        field.setSlaveSorting(6);
        System.out.println(fieldDao.doCreate(field));*/
       /* Table table = new Table();
        table.setCoding("cc");
        table.setAnnotation("是");
        table.setConfigurationPageCoding("a");
        table.setCorrelateField("aa");
        table.setName("发");
        table.setSlaveSorting(1);
        table.setType("dss");
        table.setTableEn("res");
        table.setSuperiorCoding("c");
        table.setSuperiorCorrelateField("aass")
        System.out.println(tableDao.doCreate(table));*/
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
        Menu menu = new Menu();
        for(int i=0;i<2;i++){
            menu.setCoding("aaa"+i);
            menu.setConfigurationPageCoding(null);
            menu.setDisplayStyle("das"+i);
            menu.setEnablement(false);
            menu.setIcon("ad"+i);
            menu.setName("看"+i);
            menu.setSorting(i);
            menu.setSuperiorCoding("a0");
            menu.setUrl("uil");
            System.out.println(menuDao.doCreate(menu));
        }/**/
    }

    @org.junit.Test
    public void tsstUpdate(){
        System.out.println("更新");
        Field field = new Field();
        field.setCoding("dd");
        field.setName(null);
        field.setConfigurationPageCoding(null);
        field.setTableCoding(null);
        field.setField(null);
        field.setAnnotation(null);
        field.setType(null);
        field.setSize(null);
        field.setInputType(null);
        field.setEdit(null);
        field.setMust(null);
        field.setEditAnnotation(null);
        field.setEditSorting(null);
        field.setShowList(null);
        field.setListWidth(null);
        field.setListSorting(null);
        field.setQuerySorting(null);
        field.setQuery(null);
        field.setQueryOccupy(null);
        field.setShowSlave(null);
        field.setSlaveWidth(null);
        field.setSlaveSorting(null);
        System.out.println(fieldDao.doUpdate(field));
        /*Table table = new Table();
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
        System.out.println(tableDao.doUpdate(table));*/
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
        System.out.println(fieldDao.doRemove("dd"));
       /* System.out.println(tableDao.doRemove("cc"));*/
       /* System.out.println(configurationPageDao.doRemove("HWAS21123123"));*/
       /* System.out.println(menuDao.doRemove("ba"));*/
    }
}