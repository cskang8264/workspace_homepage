package com.jwp.smartStore.Service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jwp.smartStore.DAO.MenuDAO;
import com.jwp.smartStore.DAO.OrderDAO;


@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	OrderDAO orderDao;

	@Override
	public List selectOrder(Map map) {
		// TODO Auto-generated method stub
		 return orderDao.selectOrder(map);
	}

	@Override
	public List selectOrderDetail(Map map) {
		// TODO Auto-generated method stub
		return orderDao.selectOrderDetail(map);
	}

	@Override
	public int updateOrderCancel(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

//	@Override
//	public int updateOrderCancel(Map map) {
//		// TODO Auto-generated method stub
//		return orderDao.updateOrderCancel(map);
//	}

}
