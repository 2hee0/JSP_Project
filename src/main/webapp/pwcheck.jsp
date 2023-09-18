<%@page import="com.giggle.web.dao.GiggleDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String user_pw = request.getParameter("user_pw");

	GiggleDAO gdao = new GiggleDAO();
	if( !gdao.checkPw(user_pw) ){
		System.out.println("ok");
		out.print("ok");
	} else {
		System.out.println("not-ok");
		out.print("not-ok");
	}
%>
