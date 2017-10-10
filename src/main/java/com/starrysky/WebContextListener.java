package com.starrysky;

/**
 * Created by wz on 2017/10/10.
 */
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
//创建的类名根据需要定义，但一定要实现ServletContextListener接口
public class WebContextListener implements ServletContextListener {


    public void contextInitialized(ServletContextEvent arg0) {
        // TODO Auto-generated method stub
        //这里可以放你要执行的代码或方法
        System.out.println("项目启动执行代码");
    }

    public void contextDestroyed(ServletContextEvent arg0) {
        // TODO Auto-generated method stub

    }


}