package com.jwp.smartStore.sql;


import java.util.List;
import java.util.Map;

public interface orderClient_Mapper {
	public List ClientOrderList(Map map);
	public List ClientOrderDetail(Map map);
	public int selectRowCount();
	public String selectStatusBytx(Map map);
	

}
