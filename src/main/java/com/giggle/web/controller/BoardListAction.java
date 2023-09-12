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
		int totalCnt = gdao.getBoardCnt();
		
		String temp = req.getParameter("page");
		int page = 0;
		page = temp == null ? 1 : Integer.parseInt(temp);
		
//		if( temp == null) {
//			page =1 ;
//		} else {
//			page = Integer.parseInt(temp);
//		}
		
		int pageSize = 10;
		int endRow = page * 10; // 1페이지 : 10, 4페이지, 40
		int startRow = endRow - 9; // 1페이지 : 1, 4페이지 : 31
		
		// [1][2]...[10] : 1 , [11],[12],....,[20]:[11]
		int startPage = (page - 1)/pageSize*pageSize+1;
		// [1][2]...[10] : 1 , [11],[12],....,[20]:[20]		
		int endPage = startPage + pageSize -1;
		int totalPage = (totalCnt - 1)/pageSize +1;
		
		endPage = endPage > totalPage ? totalPage : endPage;
		
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("nowPage", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("boardList", gdao.getBoardList(startRow,endRow));
		req.setAttribute("boardNotice", gdao.getBoardNotice());
		forward.setRedirect(false);
		forward.setPath("/board.jsp");
		
		return forward;
		
	}

}
