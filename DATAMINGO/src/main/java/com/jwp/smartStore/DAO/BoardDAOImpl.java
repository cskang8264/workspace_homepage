package com.jwp.smartStore.DAO;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jwp.smartStore.sql.chart_Mapper;
import com.jwp.smartStore.sql.noticeBoard_Mapper;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List selectBoardList(Map map) {
		// TODO Auto-generated method stub
		noticeBoard_Mapper mapper = sqlSession.getMapper(noticeBoard_Mapper.class);
		return mapper.selectBoardList(map);
	}

	@Override
	public int insertBoard(Map map) {
		// TODO Auto-generated method stub
		noticeBoard_Mapper mapper = sqlSession.getMapper(noticeBoard_Mapper.class);
		return mapper.insertBoard(map);
	}

	@Override
	public int selectRowCount() {
		// TODO Auto-generated method stub
		noticeBoard_Mapper mapper = sqlSession.getMapper(noticeBoard_Mapper.class);
		return mapper.selectRowCount();
	}

	@Override
	public int deleteBoard(Map map) {
		// TODO Auto-generated method stub
		noticeBoard_Mapper mapper = sqlSession.getMapper(noticeBoard_Mapper.class);
		return mapper.deleteBoard(map);
	}

	@Override
	public List getSelectedBoardbyId(Map map) {
		// TODO Auto-generated method stub
		noticeBoard_Mapper mapper = sqlSession.getMapper(noticeBoard_Mapper.class);
		return mapper.getSelectedBoardbyId(map);
	}

	@Override
	public int updateBoardById(Map map) {
		// TODO Auto-generated method stub
		noticeBoard_Mapper mapper = sqlSession.getMapper(noticeBoard_Mapper.class);
		return mapper.updateBoardById(map);
	}

	


}
