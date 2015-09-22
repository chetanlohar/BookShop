package com.sharanamvaishali.service;

import com.sharanamvaishali.dao.StateDAO;
import com.sharanamvaishali.model.State;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class StateServiceImpl implements StateService {
    @Autowired
    private StateDAO stateDAO;
    
    @Transactional
    @Override
    public void saveState(State state) {
        stateDAO.saveState(state);
    }

    @Transactional
    @Override
    public List<State> listState() {
        return stateDAO.listState();
    }

    @Transactional
    @Override
    public void removeState(Integer stateNo) {
        stateDAO.removeState(stateNo);
    }

    @Transactional
    @Override
    public State getStateById(Integer stateNo) {
        return stateDAO.getStateById(stateNo);
    }
}
