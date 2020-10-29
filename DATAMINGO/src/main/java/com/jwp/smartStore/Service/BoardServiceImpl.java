package com.jwp.smartStore.Service;

import java.util.List;
import java.util.Map;

import javax.swing.border.Border;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jwp.smartStore.DAO.BoardDAO;
import com.jwp.smartStore.DAO.ChartDAO;


@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
		BoardDAO BoardDao;

	@Override
	public List selectBoardList(Map map) {
		// TODO Auto-generated method stub
		
		return BoardDao.selectBoardList(map);
	}

	@Override
	public int insertBoard(Map map) {
		// TODO Auto-generated method stub
		return BoardDao.insertBoard(map);
	}

	@Override
	public int selectRowCount() {
		// TODO Auto-generated method stub
		return BoardDao.selectRowCount();
	}

	@Override
	public int deleteBoard(Map map) {
		// TODO Auto-generated method stub
		return BoardDao.deleteBoard(map);
	}

	@Override
	public List getSelectedBoardbyId(Map map) {
		// TODO Auto-generated method stub
		return BoardDao.getSelectedBoardbyId(map);
	}

	@Override
	public int updateBoardById(Map map) {
		// TODO Auto-generated method stub
		return BoardDao.updateBoardById(map);
	}
	




}
