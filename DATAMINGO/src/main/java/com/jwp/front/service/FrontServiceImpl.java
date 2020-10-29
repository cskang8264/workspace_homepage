package com.jwp.front.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jwp.front.dao.FrontDao;

@Service
public class FrontServiceImpl implements FrontService{
	
	@Autowired
	FrontDao datamingoDao;
	

}
