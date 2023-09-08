package com.giggle.web.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.giggle.action.Action;
import com.giggle.action.ActionForward;
import com.giggle.web.dao.GiggleDAO;
import com.giggle.web.dto.GiggleDTO;

public class JoinAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		
		// DB 연결, insert
		GiggleDAO gdao = new GiggleDAO();

		// DTO
		GiggleDTO gdto = new GiggleDTO();
		
		forward.setRedirect(true);
		if( gdao.JoinAction(gdto) ) {
			// 회원가입 성공
			forward.setPath("/mainpage.jsp");
		} else {
			// 회원가입 실패
            forward.setPath("/join2.jsp");
		}
		
		return forward;	
	}
	 
}
