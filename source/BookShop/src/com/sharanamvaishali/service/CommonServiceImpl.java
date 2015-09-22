package com.sharanamvaishali.service;

import com.sharanamvaishali.dao.CommonDAO;
import java.sql.Blob;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CommonServiceImpl implements CommonService {
    @Autowired
    private CommonDAO commonDAO;
    
    @Transactional
    @Override
    public Blob getBlob(byte[] is) {
        return commonDAO.getBlob(is);        
    }
}
