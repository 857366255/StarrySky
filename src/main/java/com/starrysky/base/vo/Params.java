package com.starrysky.base.vo;

import java.util.Map;

/**
 * Created by wz on 2017/8/18.
 */
public class Params {
    private int limit;   //页面大小
    private int offset;
    private Map<String, Object> vo;

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public int getOffset() {
        return offset;
    }

    public void setOffset(int offset) {
        this.offset = offset;
    }

    public Map<String, Object> getVo() {
        return vo;
    }

    public void setVo(Map<String, Object> vo) {
        this.vo = vo;
    }

    @Override
    public String toString() {
        return "Params{" +
                "limit=" + limit +
                ", offset=" + offset +
                ", vo=" + vo +
                '}';
    }
}
