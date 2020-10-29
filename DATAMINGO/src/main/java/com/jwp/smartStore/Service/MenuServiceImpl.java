 package com.jwp.smartStore.Service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jwp.smartStore.DAO.MenuDAO;


@Service
public class MenuServiceImpl implements MenuService {
	
	@Autowired
	MenuDAO menuDao;

	@Override
	public List selectMenu(Map map) {
		// TODO Auto-generated method stub
		 return menuDao.selectMenu(map);
	}

}
