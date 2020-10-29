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
public class MenuDAOImpl  implements MenuDAO{
	
	@Autowired
	private SqlSession sqlSession;
	

	@Override
	public List selectMenu(Map map) {
		
		menu_Mapper mapper =sqlSession.getMapper(menu_Mapper.class);
		return mapper.selectMenu(map);
	}



}