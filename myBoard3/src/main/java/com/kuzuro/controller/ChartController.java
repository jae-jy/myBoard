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

import com.kuzuro.domain.MemberVO;
import com.kuzuro.service.ChartService;



@Controller //json을 리턴하는 method가 있는 경우
@RequestMapping("/chart/*") //공통적인 맵핑 url
public class ChartController {
    
private static final Logger logger = LoggerFactory.getLogger(ChartController.class);
	
	@Inject 
	ChartService service;
	
	//차트그리기(chart)
	@RequestMapping(value = "/chart2", method = RequestMethod.GET)
	public void makeChart(HttpSession session, Model model) throws Exception {
		logger.info("get makeChart");
		
	//	List<ChartVO> cntChart = service.getChartJSON(userId);
	//	model.addAttribute("makeChart", cntChart);
	//	session.setAttribute("makeChart", cntChart);
		
		
		Object loginInfo = session.getAttribute("member");
	      MemberVO memberVO = (MemberVO) loginInfo;
	      String userName = memberVO.getUserName();

		
		//return "/board/listPage";
		

		if(userName == null) {
		model.addAttribute("msg", false);
		}else if (userName != null) {
			JSONObject jo = service.getChartJSON(userName);
			model.addAttribute("jo", jo);
		}
				
		//return "/chart/chart2";//json데이터를 호출한 곳으로 되돌려준다.
		
		
			}
	
	@RequestMapping(value = "/dayChart", method = RequestMethod.GET)
	public void makeDayChart(HttpSession session, Model model) throws Exception {
		logger.info("get dayChart");
		
	//	List<ChartVO> cntChart = service.getChartJSON(userId);
	//	model.addAttribute("makeChart", cntChart);
	//	session.setAttribute("makeChart", cntChart);

		
		Object loginInfo = session.getAttribute("member");
	      MemberVO memberVO = (MemberVO) loginInfo;
	      String userName = memberVO.getUserName();

		
		//return "/board/listPage";
		

		
		JSONObject jo = service.dayChartJSON(userName);
		model.addAttribute("jo", jo);

		if(loginInfo == null) {
		model.addAttribute("msg", false);
		}
				
		//return "/chart/chart2";//json데이터를 호출한 곳으로 되돌려준다.
		
		
			}



	}
