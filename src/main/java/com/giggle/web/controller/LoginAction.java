package com.giggle.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;

import com.giggle.action.Action;
import com.giggle.action.ActionForward;
import com.giggle.web.dao.GiggleDAO;
import com.giggle.web.dto.GiggleDTO;


public class LoginAction implements Action {
    public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
        ActionForward forward = new ActionForward();
        GiggleDAO mdao = new GiggleDAO();
        GiggleDTO gmto = new GiggleDTO();
        HttpSession session = req.getSession();

        String user_id = req.getParameter("user_id");
        String user_pw = req.getParameter("user_pw");

        // Fetch user_name and user_num
        String user_name = mdao.getUserNameByCredentials(user_id, user_pw);
        int user_num = mdao.getUserNum(user_id, user_pw);
   String user_nick = mdao.getUserNick(user_id, user_pw);

        if (user_name != null && user_num > 0) {
            // If user_name and user_num are valid
            String welcomeMessage = user_name + "님, 환영합니다.";
            try {
                resp.setContentType("text/html; charset=UTF-8");
                forward.setRedirect(false);

                // Store user_name and user_num in the session
                session.setAttribute("user", user_name);
                session.setAttribute("user_num", user_num);
              session.setAttribute("user_nick", user_nick);

                PrintWriter out = resp.getWriter();
                out.println("<script>alert('" + welcomeMessage + "');window.location.href='/mainpage.jsp';</script>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            // Handle login failure
            try {
                resp.setContentType("text/html; charset=UTF-8");
                forward.setRedirect(false);
                PrintWriter out = resp.getWriter();
                out.println("<script>alert('아이디와 비밀번호를 잘못 입력했습니다.\\n입력하신 내용을 다시 한번 확인해주세요.');history.back();</script>");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return forward;
    }
}
	