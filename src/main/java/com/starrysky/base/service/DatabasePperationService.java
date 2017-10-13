package com.starrysky.base.service;


import java.util.List;
import java.util.Map;

/**
 * 数据库操作类
 * Created by wz on 2017/10/13.
 */
public interface DatabasePperationService {
    /**
     * 同步数据库表
     * @return 新增/更新 字段
     */
    public List<Map<String, Object>> synchronizing();
}
