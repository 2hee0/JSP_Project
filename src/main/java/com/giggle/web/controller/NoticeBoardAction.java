package com.giggle.web.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.giggle.action.Action;
import com.giggle.action.ActionForward;
import com.giggle.web.dao.GiggleDAO;
import com.giggle.web.dto.BoardDTO;

public class NoticeBoardAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		GiggleDAO gdao = new GiggleDAO();
		BoardDTO addntc = new BoardDTO();
		
		String user_id = req.getParameter("user_id");
		String user_nick = req.getParameter("user_nick");
		String boardtitle = req.getParameter("boardtitle");
		String boardcontent = req.getParameter("boardcontent");
		
		addntc.setUser_id(user_id);
		addntc.setUser_nick(user_nick);
		addntc.setBoardtitle(boardtitle);
		addntc.setBoardcontent(boardcontent);
		
		if(gdao.addNotice(addntc)) {
			// 등록성공
			forward.setRedirect(true);
			forward.setPath("/BoardList.mo");
		} else {
			try {
				forward.setRedirect(false);
				PrintWriter out = resp.getWriter();
				out.println("<script>alert('오류발생');history.back();</script>");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return forward;
	}

}
