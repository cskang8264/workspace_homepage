package com.jwp.erp.service;

import java.util.List;
import java.util.Map;

public interface ErpService {
	public List selectProduct(Map map);
	public List selectSales(Map map);
	public List selectPurchase(Map map);
	public List selectCategoryA(Map map);
	public List selectCategoryB(Map map);
	public List selectCategoryC(Map map);

	public int countCategoryA(Map map);
	public int countCategoryB(Map map);
	public int countCategoryC(Map map);
	
	public int insertOneProduct(Map map);
	public int insertOneSales(Map map);
	public int insertOnePurchase(Map map);
	public int insertOneCategoryA(Map map);
	public int insertOneCategoryB(Map map);
	public int insertOneCategoryC(Map map);

	public int deleteOneProduct(Map map);
	public int deleteOneSales(Map map);
	public int deleteOnePurchase(Map map);
	public int deleteOneCategoryA(Map map);
	public int deleteOneCategoryB(Map map);
	public int deleteOneCategoryC(Map map);

	public int updateOneProduct(Map map);
	public int updateOneSales(Map map);
	public int updateOnePurchase(Map map);
	public int updateProductCnt(Map map);
	public int updateOneCategoryA(Map map);
	public int updateOneCategoryB(Map map);
	public int updateOneCategoryC(Map map);

	public int deleteSalesByProduct(Map map);
	public int deletePurchaseByProduct(Map map);
}
