package com.jwp.smartStore.DAO;

import java.util.List;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jwp.smartStore.sql.menu_Mapper;
import com.jwp.smartStore.sql.order_Mapper;

@Repository
public class OrderDAOImpl implements OrderDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List selectOrder(Map map) {

		order_Mapper mapper = sqlSession.getMapper(order_Mapper.class);
		return mapper.selectOrder(map);
	}

	@Override
	public List selectOrderDetail(Map map) {
		order_Mapper mapper = sqlSession.getMapper(order_Mapper.class);
		return mapper.selectOrderDetail(map);
	}

	@Override
	public List updateOrderCancel(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertOrder(Map map) {
		order_Mapper mapper = sqlSession.getMapper(order_Mapper.class);
		return mapper.insertOrder(map);
	}

//	@Override
//	public int updateOrderCancel(Map map) {
//		order_Mapper mapper = sqlSession.getMapper(order_Mapper.class);
//		return mapper.updateOrderCancel(map);
//	}

}
