package com.jwp.smartStore.Service;

import java.util.List;
import java.util.Map;

public interface OrderService {
	public List selectOrder(Map map);
	public List selectOrderDetail(Map map);
	public int updateOrderCancel(Map map);
	
}
