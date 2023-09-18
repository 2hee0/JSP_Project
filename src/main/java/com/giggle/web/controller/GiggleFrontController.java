package com.giggle.web.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.giggle.action.ActionForward;
import com.giggle.web.controller.LoginAction;

@WebServlet("*.mo")
public class GiggleFrontController extends HttpServlet{
	@Override
	public void init() throws ServletException {
		super.init();
		System.out.println("init()");
	}
	
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		System.out.println("URI : " + arg0.getRequestURI());
		System.out.println("Context : " + arg0.getContextPath());
		System.out.println("Servlet : " + arg0.getServletPath());
		System.out.println("Path : " + arg0.getPathInfo());
		System.out.println("Method : " + arg0.getMethod());
		super.service(arg0, arg1);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("get");
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("post");
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		 
		ActionForward forward = null;
		
		 
		 switch(requestURI) {
		 
		 	case "/giggle/LoginAction.mo" : System.out.println("오류 추적2"); forward = new LoginAction().execute(request,response); break;
		 	case "/giggle/LogoutAction.mo" : System.out.println("오류 추적3"); forward = new LogoutAction().execute(request,response); break;
		 	case "/BoardList.mo": System.out.println("오류 추적4"); forward= new BoardListAction().execute(request, response); break;
		 	case "/noticeboard.mo": System.out.println("오류 추적5"); forward = new NoticeBoardAction().execute(request, response); break;
		 	case "/BoardView.mo": System.out.println("오류 추적6"); forward = new BoardViewAction().execute(request, response); break;
		 	case "/boardDelete.mo" : forward = new BoardDeleteAction().execute(request, response); break;
		 	case "/NoticeBoardView.mo": System.out.println("오류 추적7"); forward = new NoticeBoardViewAction().execute(request, response); break;
		 	case "/complete.mo" : forward = new JoinAction().execute(request, response); break;
		 	case "/contenView2.mo" : forward = new ContenAction2().execute(request, response); break;
		 	case "/contenView3.mo" : forward = new ContenAction3().execute(request, response); break;
		 	case "/contenView4.mo" : forward = new ContenAction4().execute(request, response); break;
		 	case "/contenView.mo" : forward = new ContenAction().execute(request, response); break;
		 	case "/InsertBoard.mo" : forward = new SessionNameAction().execute(request, response); break;
		 	case "/UpdateMember1.mo" : forward = new UpdateMembershipAction1().execute(request, response); break;
		 	case "/UpdateMember2.mo" : forward = new UpdateMembershipAction2().execute(request, response); break;
		 	case "/UpdateMember3.mo" : forward = new UpdateMembershipAction3().execute(request, response); break;
		 	case "/UpdateMember4.mo" : forward = new UpdateMembershipAction4().execute(request, response); break;
		 	case "/Myinfo.mo" : forward = new MyAction().execute(request, response); break;
		 	case "/Updatemyinfo.mo" : forward = new MynickAction().execute(request, response); break;
		 }
		 // 전송에 대한 일괄처리
		 if(forward != null) {
			 if(forward.isRedirect()) {
				 // true : redirect
				 response.sendRedirect(forward.getPath());
			 }else {
				 // false : forward
				 RequestDispatcher disp 
				 	= request.getRequestDispatcher(forward.getPath());
				 disp.forward(request, response);
			 
			 }}}}
	

