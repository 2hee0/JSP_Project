package com.giggle.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.giggle.action.Action;
import com.giggle.action.ActionForward;
import com.giggle.web.dao.GiggleDAO;


public class LoginAction implements Action {

//	@Override
//	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
//		
//		ActionForward forward = new ActionForward();
//		GiggleDAO mdao = new GiggleDAO();
//		HttpSession session = req.getSession();
//		
//		String user_id = req.getParameter("user_id");
//		String user_pw = req.getParameter("user_pw");
//		
//		if(mdao.LoginAction(user_id, user_pw)) {
//			session.setAttribute("user_id", user_id);
//			forward.setPath("/mainpage.jsp");
//			forward.setRedirect(true);
//			
//		}else {
//			try {
//				forward.setRedirect(false);
//				PrintWriter out = resp.getWriter();
//				out.println("<script>alert('로그인에 실패했습니다.');history.back();</script>");
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//		}
//		
//		return forward;
//	}
//
//}
	
//	@Override
//	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
//	    ActionForward forward = new ActionForward();
//	    GiggleDAO mdao = new GiggleDAO();
//	    HttpSession session = req.getSession();
//
//	    String user_id = req.getParameter("user_id");
//	    String user_pw = req.getParameter("user_pw");
////	    String user_name = mdao.getUserNameByCredentials(user_id, user_pw);
//	    String user_name = mdao.getUserName(user_id); // 사용자 이름 조회
//	    
//	    if (user_name != null) {
//	        // 사용자 이름이 조회되었을 경우
//	        // 환영 메시지를 생성합니다.
//	        String welcomeMessage = user_name + "님, 환영합니다.";
//
//	        // JavaScript를 사용하여 alert 창에 환영 메시지를 표시합니다.
//	        try {
//	            forward.setRedirect(false);
//	            PrintWriter out = resp.getWriter();
//	            out.println("<script>alert('" + welcomeMessage + "');window.location.href='/mainpage.jsp';</script>");
//	        } catch (IOException e) {
//	            e.printStackTrace();
//	        }
//	    } else {
//	        // 사용자 이름이 조회되지 않았을 경우
//	        try {
//	            forward.setRedirect(false);
//	            PrintWriter out = resp.getWriter();
//	            out.println("<script>alert('로그인에 실패했습니다.');history.back();</script>");
//	        } catch (IOException e) {
//	            e.printStackTrace();
//	        }
//	    }
//
//	    return forward;
//	}}	
	
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
	    ActionForward forward = new ActionForward();
	    GiggleDAO mdao = new GiggleDAO();
	    HttpSession session = req.getSession();
	    
	    String user_id = req.getParameter("user_id");
	    String user_pw = req.getParameter("user_pw");

	    // 사용자 이름 조회
	    String user_name = mdao.getUserNameByCredentials(user_id, user_pw);

	    if (user_name != null) {
	        // 사용자 이름이 조회되었을 경우
	        // 환영 메시지를 생성합니다.
	        String welcomeMessage = user_name + "님, 환영합니다.";

	        // JavaScript를 사용하여 alert 창에 환영 메시지를 표시합니다.
	        try {
	        	resp.setContentType("text/html; charset=UTF-8");
	            forward.setRedirect(false);
	            session.setAttribute("user", user_name);
	            PrintWriter out = resp.getWriter();
	            out.println("<script>alert('" + welcomeMessage + "');window.location.href='/mainpage.jsp';</script>");
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	    } else {
	        // 사용자 이름이 조회되지 않았을 경우
	        try {
	        	resp.setContentType("text/html; charset=UTF-8");
	            forward.setRedirect(false);
	            PrintWriter out = resp.getWriter();
	            out.println("<script>alert('로그인에 실패했습니다.');history.back();</script>");
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	    }

	    return forward;
	} }
	