package com.giggle.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.giggle.action.Action;
import com.giggle.action.ActionForward;
import com.giggle.web.dao.GiggleDAO;

public class BoardDeleteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		GiggleDAO gdao = new GiggleDAO();
		
		String boardNumParam = req.getParameter("boardnum");
        if (boardNumParam != null && !boardNumParam.isEmpty()) {
            try {
                int boardNum = Integer.parseInt(boardNumParam);

                if (gdao.deleteBoard(boardNum)) {
                    forward.setRedirect(false);
                    forward.setPath("/BoardList.mo");
                } else {
                    // Handle the case where deletion failed
                    // You can set an error message or redirect to an error page.
                }
            } catch (NumberFormatException e) {
                // Handle the case where the parameter is not a valid integer
                // You can set an error message or redirect to an error page.
            }
        } else {
            // Handle the case where the parameter is null or empty
            // You can set an error message or redirect to an error page.
        }
		
		return forward;
	}

}
