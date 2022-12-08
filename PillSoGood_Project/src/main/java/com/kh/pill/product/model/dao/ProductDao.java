package com.kh.pill.product.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.pill.product.model.vo.Product;

@Repository
public class ProductDao {
	
	public ArrayList<Product> selectList(SqlSessionTemplate sqlSession, String filter) {
		
		return (ArrayList)sqlSession.selectList("productMapper.selectList", filter);
	}
	
	public int insertProduct(SqlSessionTemplate sqlSession, Product p) {
		
		return sqlSession.insert("productMapper.insertProduct", p);
	}
	
	public int increaseCount(SqlSessionTemplate sqlSession, int productNo) {
		
		return sqlSession.update("productMapper.increaseCount", productNo);
	}
	
	public Product selectProduct(SqlSessionTemplate sqlSession, int productNo) {
		
	    return sqlSession.selectOne("productMapper.selectProduct", productNo);
	}
	
	public int deleteProduct(SqlSessionTemplate sqlSession, int productNo) {
		
		return sqlSession.update("productMapper.deleteProduct", productNo);
	}
	
	public int updateProduct(SqlSessionTemplate sqlSession, Product p) {
		
		return sqlSession.update("productMapper.updateProduct", p);
	}
	
}
