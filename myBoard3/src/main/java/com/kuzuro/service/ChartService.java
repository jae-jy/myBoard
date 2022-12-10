package com.kuzuro.service;
 
import org.json.simple.JSONObject;
 
public interface ChartService {
	
	//리스트 조회(cart)
	public JSONObject getChartJSON(String userId) throws Exception ;

}
 