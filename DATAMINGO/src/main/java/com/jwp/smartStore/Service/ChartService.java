package com.jwp.smartStore.Service;

import java.util.List;
import java.util.Map;

public interface ChartService {
	public List selectOrderYear(Map map);
	public List orderCountByManagerId(Map map);
	public List accuOrderCountByManagerId(Map map);
	public List orderCountByMenu(Map map);
    public List orderCountByTime(Map map);
    public List getEnterEmoProbByTime(Map map);
    public List getOutEmoProbByTime(Map map);
    public List CountByAge(Map map);
    public List getTargetValue(Map map);
    public List getOrderCountWeek(Map map);
    public List getUsersByDate(Map map);
    public List getNewUsersByDate(Map map);
    public List getAdCountByManger(Map map);
    public List getRatingWithMenu(Map map);
    public int selectRowCount();
	public List getRatingbyMenu(Map map);
    

}
