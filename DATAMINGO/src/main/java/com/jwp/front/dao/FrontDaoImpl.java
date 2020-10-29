package com.jwp.front.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jwp.front.sql.FrontMapper;

@Repository
public class FrontDaoImpl implements FrontDao{
	
	@Autowired
	private SqlSession sqlSession;



}
