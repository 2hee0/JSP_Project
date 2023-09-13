<%@page import="com.giggle.web.dao.GiggleDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String user_id = request.getParameter("user_id");

	GiggleDAO gdao = new GiggleDAO();
	if( !gdao.checkId(user_id) ){
		System.out.println("ok");
		out.print("ok");
	} else {
		System.out.println("not-ok");
		out.print("not-ok");
	}
%>
