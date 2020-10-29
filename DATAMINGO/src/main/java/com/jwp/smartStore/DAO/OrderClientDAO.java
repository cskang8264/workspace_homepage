package com.jwp.smartStore.DAO;

import java.util.List;
import java.util.Map;

public interface OrderClientDAO {
	
	public List ClientOrderList(Map map);
	public List ClientOrderDetail(Map map);
	public int selectRowCount() ;
	public String selectStatusBytx(Map map) ;
	
	
	
	

}
