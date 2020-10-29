package com.mingo.myapp.DAO;

import java.util.List;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mingo.myapp.sql.menu_Mapper;

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
