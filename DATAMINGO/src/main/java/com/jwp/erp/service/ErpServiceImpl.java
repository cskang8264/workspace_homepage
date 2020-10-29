package com.jwp.erp.service;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jwp.erp.dao.ErpDao;

@Service
public class ErpServiceImpl implements ErpService{
	
	@Autowired
	ErpDao erpDao;
	
	@Override
	public List selectProduct(Map map) {
		return erpDao.selectProduct(map);
	}
	@Override
	public List selectSales(Map map) {
		return erpDao.selectSales(map);
	}
	@Override
	public List selectPurchase(Map map) {
		return erpDao.selectPurchase(map);
	}
	@Override
	public List selectCategoryA(Map map) {
		return erpDao.selectCategoryA(map);
	}
	@Override
	public List selectCategoryB(Map map) {
		return erpDao.selectCategoryB(map);
	}
	@Override
	public List selectCategoryC(Map map) {
		return erpDao.selectCategoryC(map);
	}
	@Override
	public int countCategoryA(Map map) {
		return erpDao.countCategoryA(map);
	}
	@Override
	public int countCategoryB(Map map) {
		return erpDao.countCategoryB(map);
	}
	@Override
	public int countCategoryC(Map map) {
		return erpDao.countCategoryC(map);
	}


	@Override
	public int insertOneProduct(Map map) {
		return erpDao.insertOneProduct(map);
	}
	@Override
	public int insertOneSales(Map map) {
		return erpDao.insertOneSales(map);
	}
	@Override
	public int insertOnePurchase(Map map) {
		return erpDao.insertOnePurchase(map);
	}
	@Override
	public int insertOneCategoryA(Map map) {
		return erpDao.insertOneCategoryA(map);
	}
	@Override
	public int insertOneCategoryB(Map map) {
		return erpDao.insertOneCategoryB(map);
	}
	@Override
	public int insertOneCategoryC(Map map) {
		return erpDao.insertOneCategoryC(map);
	}

	
	@Override
	public int deleteOneProduct(Map map) {
		return erpDao.deleteOneProduct(map);
	}
	@Override
	public int deleteOneSales(Map map) {
		return erpDao.deleteOneSales(map);
	}
	@Override
	public int deleteOnePurchase(Map map) {
		return erpDao.deleteOnePurchase(map);
	}
	@Override
	public int deleteSalesByProduct(Map map) {
		return erpDao.deleteSalesByProduct(map);
	}
	@Override
	public int deletePurchaseByProduct(Map map) {
		return erpDao.deletePurchaseByProduct(map);
	}	
	@Override
	public int deleteOneCategoryA(Map map) {
		return erpDao.deleteOneCategoryA(map);
	}
	@Override
	public int deleteOneCategoryB(Map map) {
		return erpDao.deleteOneCategoryB(map);
	}
	@Override
	public int deleteOneCategoryC(Map map) {
		return erpDao.deleteOneCategoryC(map);
	}


	@Override
	public int updateOneProduct(Map map) {
		return erpDao.updateOneProduct(map);
	}
	@Override
	public int updateOneSales(Map map) {
		return erpDao.updateOneSales(map);
	}
	@Override
	public int updateOnePurchase(Map map) {
		return erpDao.updateOnePurchase(map);
	}
	@Override
	public int updateProductCnt(Map map) {
		return erpDao.updateProductCnt(map);
	}
	@Override
	public int updateOneCategoryA(Map map) {
		return erpDao.updateOneCategoryA(map);
	}
	@Override
	public int updateOneCategoryB(Map map) {
		return erpDao.updateOneCategoryB(map);
	}
	@Override
	public int updateOneCategoryC(Map map) {
		return erpDao.updateOneCategoryC(map);
	}
}
