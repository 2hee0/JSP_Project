<%@page import="com.giggle.web.dao.GiggleDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String user_nick = request.getParameter("user_nick");
	
	GiggleDAO gdao = new GiggleDAO();
	if( !gdao.checkNick(user_nick) ){
		System.out.println("ok");
		out.print("ok");
	} else {
		System.out.println("not-ok");
		out.print("not-ok");
	}

%>
