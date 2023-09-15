package com.giggle.web.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.giggle.action.Action;
import com.giggle.action.ActionForward;
import com.giggle.web.dao.GiggleDAO;
import com.giggle.web.dto.JoinDTO;

public class JoinAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		
		// DB 연결, insert
		GiggleDAO gdao = new GiggleDAO();

		// DTO
		JoinDTO gdto = new JoinDTO();
		
	    gdto.setUser_id(req.getParameter("user_id"));
	    gdto.setUser_nick(req.getParameter("user_nick"));
	    gdto.setUser_pw(req.getParameter("user_pw"));
	    gdto.setUser_name(req.getParameter("user_name"));
	    gdto.setUser_gender(req.getParameter("user_gender"));
	    gdto.setUser_birth(req.getParameter("user_birth"));
	    gdto.setUser_phone(req.getParameter("user_phone"));
//	    gdto.setMembership_type(req.getParameter("membership_type"));
//	    gdto.setMembership_signup(req.getParameter("membership_signup"));
//	    gdto.setMembership_expire(req.getParameter("membership_expire"));

	    forward.setRedirect(true);

		if( gdao.JoinAction(gdto) ) {
			// 회원가입 성공
			try {
				resp.setContentType("text/html; charset=UTF-8");
				forward.setRedirect(false);
				PrintWriter out = resp.getWriter();
	            out.println("<script>alert('"+"회원가입이 완료되었습니다."+"');window.location.href='/login.jsp';</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		} else {
			// 회원가입 실패
            forward.setPath("/join2.jsp");
		}
		
		return forward;	
	}
	 
}
