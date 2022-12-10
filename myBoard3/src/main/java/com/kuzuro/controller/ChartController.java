package com.kuzuro.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kuzuro.domain.ChartVO;
import com.kuzuro.service.ChartService;

@Controller //json을 리턴하는 method가 있는 경우
@RequestMapping("/chart/*") //공통적인 맵핑 url

public class ChartController {
    
private static final Logger logger = LoggerFactory.getLogger(ChartController.class);
	
	@Inject 
	ChartService service;
	
	//차트그리기(chart)
	@RequestMapping(value = "/chart2", method = RequestMethod.GET)
	public String makeChart(HttpSession session, Model model) throws Exception {
		logger.info("get makeChart");
		
	//	List<ChartVO> cntChart = service.getChartJSON(userId);
	//	model.addAttribute("makeChart", cntChart);
	//	session.setAttribute("makeChart", cntChart);
		
		
		Object loginInfo = session.getAttribute("member");
		
		if(loginInfo == null) {
		model.addAttribute("msg", false);
		}
				
		return "/chart/chart2";//json데이터를 호출한 곳으로 되돌려준다.
			}
	
	//리스트 조회(cart)
	@RequestMapping(value = "/chart_json" , method = RequestMethod.POST)
	public JSONObject getChartList(Model model,HttpSession session, ChartVO vo, @RequestParam("userId") String userId) throws Exception {
		logger.info("post chart");
		

	//      Object loginInfo = session.getAttribute("member");
	//      MemberVO memberVO = (MemberVO) loginInfo;
	//      String userId1 = memberVO.getUserName();

	      
		return service.getChartJSON(userId);
		

	}
	}
