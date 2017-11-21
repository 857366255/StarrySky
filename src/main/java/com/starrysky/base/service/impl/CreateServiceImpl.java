package com.starrysky.base.service.impl;

import com.starrysky.base.service.CreateService;
import com.starrysky.base.service.GeneralPurposeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service
public class CreateServiceImpl implements CreateService{

    @Autowired
    private GeneralPurposeService generalPurposeService;

    public Boolean doCreate(String tableNameEn,Map<String, Object> map) {
        generalPurposeService.init(tableNameEn);
        return generalPurposeService.doCreate(map);
    }
}
