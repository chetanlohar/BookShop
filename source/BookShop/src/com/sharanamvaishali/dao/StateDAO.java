package com.sharanamvaishali.dao;

import com.sharanamvaishali.model.State;
import java.util.List;

public interface StateDAO {
    public void saveState(State state);
    public List<State> listState();
    public void removeState(Integer stateNo);
    public State getStateById(Integer stateNo);
}
