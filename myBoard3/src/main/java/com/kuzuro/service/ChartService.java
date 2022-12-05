package com.kuzuro.service;
 
import java.util.List;

import com.kuzuro.domain.ChartVO;
//json오브젝트는 pom.xml에 추가한 라이브러리 안에 들어있는 것들이다
 
public interface ChartService {
	public List<ChartVO> countChart(String userId) throws Exception ;
}
 