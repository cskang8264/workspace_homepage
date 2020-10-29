package com.jwp.smartStore.DAO;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jwp.smartStore.sql.orderClient_Mapper;


@Repository
public class OrderClientDAOImpl implements OrderClientDAO{
	
	
	@Autowired
	SqlSession sqlSession;
	

	@Override
	public List ClientOrderList(Map map) {
		// TODO Auto-generated method stub
		
		orderClient_Mapper mapper =sqlSession.getMapper(orderClient_Mapper.class);
		
		return mapper.ClientOrderList(map);
	}


	@Override
	public List ClientOrderDetail(Map map) {
		// TODO Auto-generated method stub
		orderClient_Mapper mapper =sqlSession.getMapper(orderClient_Mapper.class);
		return mapper.ClientOrderDetail(map);
	}


	@Override
	public int selectRowCount() {
		// TODO Auto-generated method stub
		orderClient_Mapper mapper = sqlSession.getMapper(orderClient_Mapper.class);
		return mapper.selectRowCount();
	}


	@Override
	public String selectStatusBytx(Map map) {
		// TODO Auto-generated method stub
		orderClient_Mapper mapper = sqlSession.getMapper(orderClient_Mapper.class);
		return mapper.selectStatusBytx(map);
	}
	
	

}
