package com.starrysky.tool;



import org.apache.commons.beanutils.BeanUtils;

import java.beans.BeanInfo;
import java.beans.Introspector;

import java.beans.PropertyDescriptor;
import java.lang.reflect.Method;
import java.util.HashMap;

import java.util.Map;

/**
 * Created by wz on 2017/8/19.
 */
public class Transformation {


    /**
     *map 转 bean
     * @param map
     * @return
     */
    public static void  mapToBean(Map<String, Object> map, Object obj) {
        if (map == null || obj == null) {
            return;
        }
        try {
            BeanUtils.populate(obj, map);
        } catch (Exception e) {
            System.out.println("mapToBean Error " + e);
        }
    }


        /**
         * bean 转 map
         * @param obj
         * @return
         */
    public static void  beanToMap(Map<String, Object> map, Object obj) {
        try {
            BeanInfo beanInfo = Introspector.getBeanInfo(obj.getClass());
            PropertyDescriptor[] propertyDescriptors = beanInfo.getPropertyDescriptors();
            for (PropertyDescriptor property : propertyDescriptors) {
                String key = property.getName();
                if (map.containsKey(key)) {
                    Object value = map.get(key);
                    // 得到property对应的setter方法
                    Method setter = property.getWriteMethod();
                    setter.invoke(obj, value);
                }
            }
        } catch (Exception e) {
            System.out.println("transMap2Bean Error " + e);
        }
        return;
    }


}
