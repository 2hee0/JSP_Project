package com.giggle.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.giggle.action.Action;
import com.giggle.action.ActionForward;

public class LogoutAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession();
		String user = (String) session.getAttribute("user");
		String user_nick = (String) session.getAttribute("user_nick");
		
		if (user != null) {
			 
		session.removeAttribute("user");
		session.removeAttribute("user_nick");
		forward.setPath("../mainpage.jsp"); // giggle 폴더가 없기 때문에 ..으로 두 칸을 넘어갔다.  
		forward.setRedirect(true);
		}
		
		
		return forward;
	}

}
