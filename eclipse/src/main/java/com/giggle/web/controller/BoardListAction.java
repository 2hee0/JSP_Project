package com.giggle.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.giggle.action.Action;
import com.giggle.action.ActionForward;
import com.giggle.web.dao.GiggleDAO;

public class BoardListAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		GiggleDAO gdao = new GiggleDAO();
		
		gdao.getBoardList();
		gdao.getBoardNotice();
		req.setAttribute("boardList", gdao.getBoardList());
		req.setAttribute("boardNotice", gdao.getBoardNotice());
		forward.setRedirect(false);
		forward.setPath("/board.jsp");
		
		return forward;
		
	}

}
