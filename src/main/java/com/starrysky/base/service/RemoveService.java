package com.starrysky.base.service;

import java.util.List;
import java.util.Map;

public interface RemoveService {

    /**
     * 更新数据
     * @param tableNameEn 表名称
     * @param map 数据
     * @return 是否成功
     */
    public Boolean doRemove(String tableNameEn, Map<String, Object> map);

}
