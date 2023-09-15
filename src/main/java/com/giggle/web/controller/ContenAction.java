package com.giggle.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.giggle.action.Action;
import com.giggle.action.ActionForward;
import com.giggle.web.dao.GiggleDAO;

public class ContenAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		GiggleDAO gdao = new GiggleDAO();
		
		String contentIndexParam = req.getParameter("content_index");
	    if (contentIndexParam != null && !contentIndexParam.isEmpty()) {
	        int content_index = Integer.parseInt(contentIndexParam);
	        req.setAttribute("director_index", gdao.getcontent(content_index));
	        forward.setRedirect(false);
	        forward.setPath("/yourwedding.jsp");
	    } else {
	        // content_index가 null 또는 빈 문자열인 경우 처리할 내용을 여기에 추가하세요.
	        // 예를 들어 오류 메시지를 설정하거나 다른 페이지로 리다이렉트할 수 있습니다.
	    }
		
		return forward;
		
	}

}
