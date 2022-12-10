package com.kuzuro.persistence;

import java.util.List;

import com.kuzuro.domain.ChartVO;

public interface ChartDAO {
	
	public List<ChartVO> getChartList(String userId) throws Exception;

	

}