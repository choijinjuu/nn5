package com.semi.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutController
 */
@WebServlet("/logout.me")
public class LogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogoutController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//로그아웃 처리
		//로그인 되어있는 loginUser 객체 session 에서 삭제 시키기
		HttpSession session = request.getSession();
		
		//로그인된 회원정보 객체 삭제 
		session.removeAttribute("loginUser");
		
		//만약 세션을 초기화하고싶다면?
		//session.invalidate();   세션 만료 (초기화) 담긴 데이터가 다 날라감
		
		//재요청 방식으로 메인페이지로 돌아가기
		response.sendRedirect(request.getContextPath());
		//jsp 로 돌아간다
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
