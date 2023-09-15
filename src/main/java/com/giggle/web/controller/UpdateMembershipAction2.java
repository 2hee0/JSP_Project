package com.giggle.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.giggle.action.Action;
import com.giggle.action.ActionForward;
import com.giggle.web.dao.GiggleDAO;

public class UpdateMembershipAction2 implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		GiggleDAO gdao = new GiggleDAO();
		
		int user_num = Integer.parseInt(req.getParameter("user_num"));
		String membership_type = "Premium 12개월 이용권";
		
		if(gdao.UpdateMember2(user_num,membership_type)) {
			 try {
                 resp.setContentType("text/html; charset=UTF-8");
                 forward.setRedirect(false);

                 PrintWriter out = resp.getWriter();
                 out.println("<script>alert('멤버십 가입에 성공했습니다.');window.location.href='/mainpage.jsp';</script>");
             } catch (IOException e) {
                 e.printStackTrace();
             }
         } else {
             // 업데이트 실패
             try {
                 resp.setContentType("text/html; charset=UTF-8");
                 forward.setRedirect(false);
                 PrintWriter out = resp.getWriter();
                 out.println("<script>alert('멤버십 가입에 실패했습니다.');history.back();</script>");
             } catch (IOException e) {
                 e.printStackTrace();
             }
         }
		return forward;
	}

}
