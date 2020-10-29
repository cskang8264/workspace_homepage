package com.jwp.erp.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jwp.erp.sql.ErpMapper;
//import com.jwp.ruby.sql.RubyMapper;

@Repository
public class ErpDaoImpl implements ErpDao{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List selectProduct(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.selectProduct(map);
	}
	@Override
	public List selectSales(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.selectSales(map);
	}
	@Override
	public List selectPurchase(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.selectPurchase(map);
	}
	@Override
	public List selectCategoryA(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.selectCategoryA(map);
	}
	@Override
	public List selectCategoryB(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.selectCategoryB(map);
	}
	@Override
	public List selectCategoryC(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.selectCategoryC(map);
	}
	@Override
	public int countCategoryA(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.countCategoryA(map);
	}
	@Override
	public int countCategoryB(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.countCategoryB(map);
	}
	@Override
	public int countCategoryC(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.countCategoryC(map);
	}

	@Override
	public int insertOneProduct(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.insertOneProduct(map);
	}
	@Override
	public int insertOneSales(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.insertOneSales(map);
	}
	@Override
	public int insertOnePurchase(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.insertOnePurchase(map);
	}
	@Override
	public int insertOneCategoryA(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.insertOneCategoryA(map);
	}
	@Override
	public int insertOneCategoryB(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.insertOneCategoryB(map);
	}
	@Override
	public int insertOneCategoryC(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.insertOneCategoryC(map);
	}

	@Override
	public int deleteOneProduct(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.deleteOneProduct(map);
	}
	@Override
	public int deleteOneSales(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.deleteOneSales(map);
	}
	@Override
	public int deleteOnePurchase(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.deleteOnePurchase(map);
	}
	@Override
	public int deleteOneCategoryA(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.deleteOneCategoryA(map);
	}
	@Override
	public int deleteOneCategoryB(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.deleteOneCategoryB(map);
	}
	@Override
	public int deleteOneCategoryC(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.deleteOneCategoryC(map);
	}
	
	@Override
	public int updateOneProduct(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.updateOneProduct(map);
	}
	@Override
	public int updateOneSales(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.updateOneSales(map);
	}
	@Override
	public int updateOnePurchase(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.updateOnePurchase(map);
	}
	@Override
	public int updateProductCnt(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.updateProductCnt(map);
	}
	@Override
	public int updateOneCategoryA(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.updateOneCategoryA(map);
	}
	@Override
	public int updateOneCategoryB(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.updateOneCategoryB(map);
	}
	@Override
	public int updateOneCategoryC(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.updateOneCategoryC(map);
	}

	@Override
	public int deleteSalesByProduct(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.deleteSalesByProduct(map);
	}
	@Override
	public int deletePurchaseByProduct(Map map) {
		ErpMapper mapper = sqlSession.getMapper(ErpMapper.class);
		return mapper.deletePurchaseByProduct(map);
	}

}
