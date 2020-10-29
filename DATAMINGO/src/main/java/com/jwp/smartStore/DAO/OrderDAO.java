package com.jwp.smartStore.DAO;


import java.util.List;
import java.util.Map;

import com.jwp.smartStore.VO.MenuVO;

public interface OrderDAO {
	public List selectOrder(Map map);
	public List selectOrderDetail(Map map);
	public List updateOrderCancel(Map map);
	public int insertOrder(Map map);
}
