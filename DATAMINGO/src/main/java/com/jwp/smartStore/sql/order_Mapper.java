package com.jwp.smartStore.sql;


import java.util.List;
import java.util.Map;

public interface order_Mapper {
	public List selectOrder(Map map);
	public List selectOrderDetail(Map map);
	public int updateOrderCancel(int  order_id );
	public int updateOrderCancel(Map map);
	public int insertOrder(Map map);

}
