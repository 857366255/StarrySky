package com.starrysky.base.service.impl;

import com.starrysky.base.service.GeneralPurposeService;
import com.starrysky.base.service.UpdateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class UpdateServiceImpl implements UpdateService {

    @Autowired
    private GeneralPurposeService generalPurposeService;

    public Boolean doUpdate(String tableNameEn,Map<String, Object> map) {
        generalPurposeService.init(tableNameEn);
        return generalPurposeService.doUpdate(map);
    }
}
