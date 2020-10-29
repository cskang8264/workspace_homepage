package com.jwp.smartStore.Service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jwp.smartStore.DAO.OrderClientDAO;

@Service
public class orderClientServiceImpl  implements orderClientService{
	
	@Autowired
		OrderClientDAO orderClientDAO  ;

	@Override
	public List ClientOrderList(Map map) {
		// TODO Auto-generated method stub
		return orderClientDAO.ClientOrderList( map);
	}

	@Override
	public List ClientOrderDetail(Map map) {
		// TODO Auto-generated method stub
		return orderClientDAO.ClientOrderDetail(map);
	}

	@Override
	public int selectRowCount() {
		// TODO Auto-generated method stub
		return orderClientDAO.selectRowCount();
	}

	@Override
	public String selectStatusBytx(Map map) {
		// TODO Auto-generated method stub
		return orderClientDAO.selectStatusBytx(map);
	}
	

}
