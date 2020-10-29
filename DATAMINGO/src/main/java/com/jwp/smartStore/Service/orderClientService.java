package com.jwp.smartStore.Service;

import java.util.List;
import java.util.Map;

public interface orderClientService {
	public List ClientOrderList(Map map) ;
	public List ClientOrderDetail(Map map);
	public int selectRowCount();
	public String selectStatusBytx(Map map);
	
	
}
