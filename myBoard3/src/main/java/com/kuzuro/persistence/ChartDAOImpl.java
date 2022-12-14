package com.kuzuro.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kuzuro.domain.ChartVO;

@Repository
public class ChartDAOImpl implements ChartDAO {

	// 마이바티스 
	@Inject
	private SqlSession sql;
	
	// 매퍼 
	private static String namespace = "com.kuzuro.mappers.chartMapper";
	
	@Override
	public List<ChartVO> getChartList(String userId) throws Exception {
		return sql.selectList(namespace + ".getChartList", userId);
	}
	
	@Override
	public List<ChartVO> dayChartList(String userId) throws Exception {
		return sql.selectList(namespace + ".dayChartList", userId);
	}
	

}
		