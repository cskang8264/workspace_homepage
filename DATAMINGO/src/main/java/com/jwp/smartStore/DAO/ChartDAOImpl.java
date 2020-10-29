package com.jwp.smartStore.DAO;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jwp.smartStore.sql.chart_Mapper;

@Repository
public class ChartDAOImpl implements ChartDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List orderCountByManagerId(Map map) {

		chart_Mapper mapper = sqlSession.getMapper(chart_Mapper.class);

		// TODO Auto-generated method stub
		return mapper.orderCountByManagerId(map);
	}

	@Override
	public List accuOrderCountByManagerId(Map map) {
		// TODO Auto-generated method stub
		chart_Mapper mapper = sqlSession.getMapper(chart_Mapper.class);
		return mapper.accuOrderCountByManagerId(map);
	}

	@Override
	public List orderCountByMenu(Map map) {
		// TODO Auto-generated method stub
		chart_Mapper mapper = sqlSession.getMapper(chart_Mapper.class);
		return mapper.orderCountByMenu(map);
	}

	@Override
	public List orderCountByTime(Map map) {
		// TODO Auto-generated method stub
		chart_Mapper mapper = sqlSession.getMapper(chart_Mapper.class);
		return mapper.orderCountByTime(map);
	}

	@Override
	public List getEnterEmoProbByTime(Map map) {
		// TODO Auto-generated method stub
		chart_Mapper mapper = sqlSession.getMapper(chart_Mapper.class);
		return mapper.getEnterEmoProbByTime(map);
	}

	@Override
	public List getOutEmoProbByTime(Map map) {
		// TODO Auto-generated method stub
		chart_Mapper mapper = sqlSession.getMapper(chart_Mapper.class);
		return mapper.getOutEmoProbByTime(map);
	}

	@Override
	public List CountByAge(Map map) {
		// TODO Auto-generated method stub
		chart_Mapper mapper = sqlSession.getMapper(chart_Mapper.class);

		return mapper.CountByAge(map);
	}

	@Override
	public List getTargetValue(Map map) {
		// TODO Auto-generated method stub
		chart_Mapper mapper = sqlSession.getMapper(chart_Mapper.class);

		return mapper.getTargetValue(map);
	}

	@Override
	public List getOrderCountWeek(Map map) {
		chart_Mapper mapper = sqlSession.getMapper(chart_Mapper.class);

		return mapper.getOrderCountWeek(map);
	}

	@Override
	public List getUsersByDate(Map map) {
		// TODO Auto-generated method stub
		chart_Mapper mapper = sqlSession.getMapper(chart_Mapper.class);
		return mapper.getUsersByDate(map);
	}

	@Override
	public List getNewUsersByDate(Map map) {
		// TODO Auto-generated method stub
		chart_Mapper mapper = sqlSession.getMapper(chart_Mapper.class);
		return  mapper.getNewUsersByDate(map);
	}
	@Override
	public List getAdCountByManger(Map map) {
		// TODO Auto-generated method stub
		chart_Mapper mapper = sqlSession.getMapper(chart_Mapper.class);
		return mapper.getAdCountByManger(map);
	}

	@Override
	public List selectOrderYear(Map map) {
		// TODO Auto-generated method stub
		chart_Mapper mapper = sqlSession.getMapper(chart_Mapper.class);
		return mapper.selectOrderYear(map);
	}

	@Override
	public List getRatingWithMenu(Map map) {
		// TODO Auto-generated method stub
		chart_Mapper mapper = sqlSession.getMapper(chart_Mapper.class);
		return mapper.getRatingWithMenu(map);
	}

	@Override
	public int selectRowCount() {
		// TODO Auto-generated method stub
		chart_Mapper mapper = sqlSession.getMapper(chart_Mapper.class);
		return mapper.selectRowCount();
	}

	@Override
	public List getRatingbyMenu(Map map) {
		// TODO Auto-generated method stub
		chart_Mapper mapper = sqlSession.getMapper(chart_Mapper.class);
		return mapper.getRatingbyMenu(map);
	}


}
