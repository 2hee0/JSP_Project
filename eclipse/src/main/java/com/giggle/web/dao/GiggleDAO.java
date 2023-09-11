package com.giggle.web.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.giggle.mybatis.SqlMapConfig;
import com.giggle.web.dto.BoardDTO;
import com.giggle.web.dto.BoardNoticeDTO;
import com.giggle.web.dto.GiggleDTO;

public class GiggleDAO {
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public GiggleDAO() {
		sqlsession = factory.openSession(true);
	}
	
	public boolean LoginAction(String user_id , String user_pw) {
		
		int cnt = 0;
		boolean result = false;
		
		Map<String, String> data = new HashMap<>();
		data.put("user_id", user_id);
		data.put("user_pw", user_pw);
		
		cnt = sqlsession.selectOne("Giggle.LoginAction",data); 
		if(cnt==1) {result = true;}
		
		return result;
	}

//public GiggleDTO getUserById(int userId) {
//    GiggleDTO user = null;
//    try {
//        user = sqlsession.selectOne("Giggle.getUserById", userId);
//    } catch (Exception e) {
//        e.printStackTrace();
//    }
//    return user;
//}
//}

//	public String getUserName(String user_id) {
//		
//		String user_name = null;
//    
//		try {
//			// 사용자 이름을 조회하는 SQL 쿼리를 실행
//			user_name = sqlsession.selectOne("Giggle.getUserName", user_id);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//    
//		return user_name;
//}

	public String getUserNameByCredentials(String user_id, String user_pw) {
	    String user_name = null;
	    try {
	        Map<String, String> credentials = new HashMap<>();
	        credentials.put("user_id", user_id);
	        credentials.put("user_pw", user_pw);

	        // MyBatis를 사용하여 SQL 쿼리 실행
	        user_name = sqlsession.selectOne("Giggle.getUserNameByCredentials", credentials);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return user_name;
	}

	public List<BoardDTO> getBoardList() {
		List<BoardDTO> list=sqlsession.selectList("Giggle.getBoardList");
		return list;
	} 
	
	public List<BoardNoticeDTO> getBoardNotice() {
		List<BoardNoticeDTO> list=sqlsession.selectList("Giggle.getBoardNotice");
		return list;
	}
	
	
	
	public BoardDTO getDetail(int boardnum) {
		return sqlsession.selectOne("Giggle.getDetail", boardnum);
	}

	
	
}
