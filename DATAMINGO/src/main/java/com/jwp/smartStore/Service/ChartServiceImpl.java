package com.jwp.smartStore.Service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jwp.smartStore.DAO.ChartDAO;


@Service
public class ChartServiceImpl implements ChartService{
	
	@Autowired
		ChartDAO chartDao;
	

	@Override
	public List orderCountByManagerId(Map map){
		// TODO Auto-generated method stub
		return chartDao.orderCountByManagerId(map);
	}


	@Override
	public List accuOrderCountByManagerId(Map map) {
		// TODO Auto-generated method stub
		return chartDao.accuOrderCountByManagerId(map);
	}


	@Override
	public List orderCountByMenu(Map map) {
		// TODO Auto-generated method stub
		
		return chartDao.orderCountByMenu(map);
	}


	@Override
	public List orderCountByTime(Map map) {
		// TODO Auto-generated method stub
		return chartDao.orderCountByTime(map);
	}


	@Override
	public List getEnterEmoProbByTime(Map map) {
		// TODO Auto-generated method stub
		return chartDao.getEnterEmoProbByTime(map);
	}


	@Override
	public List getOutEmoProbByTime(Map map) {
		// TODO Auto-generated method stub
		return chartDao.getOutEmoProbByTime(map);
	}
	@Override
	public List CountByAge(Map map) {
		
		return chartDao.CountByAge(map);
	}


	@Override
	public List getTargetValue(Map map) {
		// TODO Auto-generated method stub
		return chartDao.getTargetValue(map);
	}


	@Override
	public List getOrderCountWeek(Map map) {
		// TODO Auto-generated method stub
		return chartDao.getOrderCountWeek(map);
	}


	@Override
	public List getUsersByDate(Map map) {
		// TODO Auto-generated method stub
		return chartDao.getUsersByDate(map);
	}


	@Override
	public List getNewUsersByDate(Map map) {
		// TODO Auto-generated method stub
		return chartDao.getNewUsersByDate(map);
	}


	@Override
	public List getAdCountByManger(Map map) {
		// TODO Auto-generated method stub
		return chartDao.getAdCountByManger(map);
	}


	@Override
	public List selectOrderYear(Map map) {
		// TODO Auto-generated method stub
		return chartDao.selectOrderYear(map);
	}


	@Override
	public List getRatingWithMenu(Map map) {
		// TODO Auto-generated method stub
		return chartDao.getRatingWithMenu(map);
	}


	@Override
	public int selectRowCount() {
		// TODO Auto-generated method stub
		return chartDao.selectRowCount();
	}


	@Override
	public List getRatingbyMenu(Map map) {
		// TODO Auto-generated method stub
		return chartDao.getRatingbyMenu(map);
	}



}
