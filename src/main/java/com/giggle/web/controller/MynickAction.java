package com.giggle.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.giggle.action.Action;
import com.giggle.action.ActionForward;
import com.giggle.web.dao.GiggleDAO;

public class MynickAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		GiggleDAO gdao = new GiggleDAO();
		
		int user_num = Integer.parseInt(req.getParameter("user_num"));
		String user_nick = req.getParameter("user_nick");
       

		if (gdao.updateUserNick(user_num, user_nick)) {
			try {
				resp.setContentType("text/html; charset=UTF-8");
				forward.setRedirect(false);

				PrintWriter out = resp.getWriter();
				out.println("<script>alert('닉네임이 변경되었습니다.');window.location.href='/mainpage.jsp';</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			// 업데이트 실패
			try {
				resp.setContentType("text/html; charset=UTF-8");
				forward.setRedirect(false);
				PrintWriter out = resp.getWriter();
				out.println("<script>alert('변경에 실패했습니다.');history.back();</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return forward;
	}

}
