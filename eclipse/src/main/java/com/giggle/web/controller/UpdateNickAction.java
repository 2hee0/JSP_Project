package com.giggle.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.giggle.action.Action;
import com.giggle.action.ActionForward;
import com.giggle.web.dao.GiggleDAO;

public class UpdateNickAction implements Action {
    public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
        ActionForward forward = new ActionForward();
        GiggleDAO gdao = new GiggleDAO();
        HttpSession session = req.getSession();

        String user_pw = req.getParameter("user_pw");
        String new_nick = req.getParameter("user_nick");

        if (user_pw != null) {
            // user_pw가 있을 경우에만 업데이트 진행
            boolean isSuccess = gdao.updateNick(user_pw, new_nick);

            if (isSuccess) {
                // 업데이트가 성공하면 세션에도 새로운 닉네임을 반영
                session.setAttribute("user_nick", new_nick);
                forward.setRedirect(true);
                forward.setPath("my.jsp"); // 마이페이지로 이동
            } else {
                // 업데이트가 실패한 경우의 처리
                // 실패 메시지 등을 설정하고, 예를 들어 비밀번호가 틀렸다는 메시지를 출력할 수 있습니다.
            }
        } else {
            // user_pw가 없는 경우의 처리
            // 실패 메시지 등을 설정하고, 예를 들어 "비밀번호를 입력해주세요."라는 메시지를 출력할 수 있습니다.
        }

        return forward;
    }
}
