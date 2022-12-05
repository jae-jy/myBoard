package com.kuzuro.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.kuzuro.domain.ChartVO;
import com.kuzuro.persistence.ChartDAO;

@Service
public class ChartServiceImpl implements ChartService{
	
	@Inject
	private ChartDAO dao;
	
	@Override
	public List<ChartVO> countChart(String userId) throws Exception {
		List<ChartVO> list = new ArrayList<ChartVO>();
		

			ChartVO vo = new ChartVO();
			
			vo.setDate("2023-03-01");
			vo.setSmile(50);
			vo.setSad(25);
			vo.setAngry(10);
			vo.setSurprise(70);
			list.add(vo);

			vo = new ChartVO();
			vo.setDate("2023-03-02");
			vo.setSmile(50);
			vo.setSad(25);
			vo.setAngry(10);
			vo.setSurprise(70);
			list.add(vo);

			vo = new ChartVO();
			vo.setDate("2023-03-03");
			vo.setSmile(50);
			vo.setSad(25);
			vo.setAngry(10);
			vo.setSurprise(70);
			list.add(vo);

			vo = new ChartVO();
			vo.setDate("2023-03-04");
			vo.setSmile(50);
			vo.setSad(25);
			vo.setAngry(10);
			vo.setSurprise(70);
			list.add(vo);

			vo = new ChartVO();
			vo.setDate("2023-03-05");
			vo.setSmile(50);
			vo.setSad(25);
			vo.setAngry(10);
			vo.setSurprise(70);
			list.add(vo);

			
			return dao.makeChart(userId);
			
	}
}