package com.kuzuro.service;

import java.util.List;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import com.kuzuro.domain.ChartVO;
import com.kuzuro.persistence.ChartDAO;

@Service
public class ChartServiceImpl implements ChartService{
	

	
	@Inject
	private ChartDAO dao;
	
	
	@SuppressWarnings("unchecked")
	@Override
	public JSONObject getChartJSON(String userId) throws Exception {
		List<ChartVO> list = dao.getChartList(userId);
		
		 //리턴할 json 객체
        JSONObject data = new JSONObject(); //{}
        
        //json의 칼럼 객체
        JSONObject col1 = new JSONObject();
        JSONObject col2 = new JSONObject();
        JSONObject col3 = new JSONObject();
        JSONObject col4 = new JSONObject();
        JSONObject col5 = new JSONObject();
        
        //json 배열 객체, 배열에 저장할때는 JSONArray()를 사용
        JSONArray title = new JSONArray();
        col1.put("label","날짜"); //col1에 자료를 저장 ("필드이름","자료형")
        col1.put("type", "string");
        col2.put("label", "smile");
        col2.put("type", "number");
        col3.put("label", "sad");
        col3.put("type", "number");
        col4.put("label", "angry");
        col4.put("type", "number");
        col5.put("label", "surprise");
        col5.put("type", "number");
        
        //테이블행에 컬럼 추가
        title.add(col1);
        title.add(col2);
        title.add(col3);
        title.add(col4);
        title.add(col5);
        
        
        //json 객체에 타이틀행 추가
        data.put("cols", title);//제이슨을 넘김
        //이런형식으로 추가가된다. {"cols" : [{"label" : "상품명","type":"string"}
        //,{"label" : "금액", "type" : "number"}]}
        
        JSONArray body = new JSONArray(); //json 배열을 사용하기 위해 객체를 생성
        for (ChartVO vo : list) { //items에 저장된 값을 dto로 반복문을 돌려서 하나씩 저장한다.
            
        	JSONObject date = new JSONObject(); //json
            date.put("v", vo.getDate()); 
            
            JSONObject smile = new JSONObject(); //json오브젝트 객체를 생성
            smile.put("v", vo.getSmile()); //name변수에 dto에 저장된 금액을 v라고 저장한다.
            
            JSONObject sad = new JSONObject(); //json오브젝트 객체를 생성
            sad.put("v", vo.getSad()); //name변수에 dto에 저장된 금액을 v라고 저장한다.
            
            JSONObject angry = new JSONObject(); //json오브젝트 객체를 생성
            angry.put("v", vo.getAngry()); //name변수에 dto에 저장된 금액을 v라고 저장한다.
            
            JSONObject surprise = new JSONObject(); //json오브젝트 객체를 생성
            surprise.put("v", vo.getSurprise()); //name변수에 dto에 저장된 금액을 v라고 저장한다.
            
            JSONArray row = new JSONArray(); //json 배열 객체 생성 (위에서 저장한 변수를 칼럼에 저장하기위해)
            row.add(date);
            row.add(smile); //name을 row에 저장 (테이블의 행)
            row.add(sad); //name을 row에 저장 (테이블의 행)
            row.add(angry);
            row.add(surprise);
            
            JSONObject cell = new JSONObject(); 
            cell.put("c", row); //cell 2개를 합쳐서 "c"라는 이름으로 추가
            body.add(cell); //레코드 1개 추가
                
        }
        data.put("rows", body); //data에 body를 저장하고 이름을 rows라고 한다.

		return data;
			
			
	}
}