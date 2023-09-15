package com.giggle.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.giggle.action.Action;
import com.giggle.action.ActionForward;
import com.giggle.web.dao.GiggleDAO;

public class MyAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		GiggleDAO gdao = new GiggleDAO();
		
		int usernum = Integer.parseInt(req.getParameter("user_num"));
		req.setAttribute("usernum", gdao.getuserdata(usernum));
		forward.setRedirect(false);
		forward.setPath("/my.jsp");
        return forward;
	}
}
