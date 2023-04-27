package com.semi.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.semi.member.model.service.MemberService;
import com.semi.member.model.vo.Member;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login.me")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//한글값 인코딩
		request.setCharacterEncoding("UTF-8");
		//요청해서 받아온 데이터를 추출
		String memberId = request.getParameter("memberId");
		String memberPwd = request.getParameter("memberPwd");
		
		
		//조회해온  Member 객체 loginUser
		Member loginUser = new MemberService().loginMember(memberId,memberPwd);
		
		/* -servlet scope
			1)application : application 에 담은 데이터는 웹 애플리케이션 전역에서 꺼내쓸수 있다
			2)session : session  에 담은 데이터는 모든  jsp와 servlet에서 꺼내쓸수있다
			한번 담은 데이터는 직접 지우기 전까지 서버가 멈추기 전까지 브라우저가 종료되기 전까지는 사용가능하다
			3)request : request에 담은 데이터 해당 request를 포워딩한 응답 jsp에서만 꺼내쓸수있다.
			4)page L 해당 jsp 페이지에서만 꺼내쓸수 있음
			
			공통적으로 데이터를 담고자 한다면
			-setAttribute("key","value");
			데이터를꺼내고자 한다면
			-getAttribute("키");
			데이터를 지우고자 한다면
			-removeAttribute("키");
		
		*/
		
		if(loginUser == null) {   //로그인 실패시 에러페이지로 응답
			//보내고자 하는 에러페이지에 에러 메세지를 포워딩
			request.setAttribute("errorMsg","로그인에 실패하였습니다");
			
			//응답페이지에 jsp에 위임할때 필요한 객체 (RequestDispatcher)
			RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
			//포워딩 (위임) - 해당 경로로 view 화면은 보여지지만 url은 변경되지 않는다 (맨처음 요청했을떄의 url이 남아있음
			view.forward(request, response);
		}else {  //로그인 성공 - index 페이지로 돌아가기
			//로그인한 회원의 정보를 계속 가지고 다닐것이기 때문에 session 에 담아준다
			
			//session에 담으려면 session 객체를 먼저 가지고 와야한다
			HttpSession session = request.getSession();
			
			//조회된 유저 정보객체를 담아주기
			session.setAttribute("loginUser", loginUser);
			session.setAttribute("alertMsg", "성공적으로 로그인 되었습니다.");
			
			response.sendRedirect(request.getContextPath());
			/*
			 * 응답 방식 2가지
			 * 
			 * 1. 위임(포워딩) - 요청을 유지한채로 위임하는 방법 (url에 기존 주소가 남아있게 된다)
			 *  RequestDispatcher view = request.getRequestDispatcher("응답페이지경로");
			 *  view.forward(request,response);
			 *  
			 *  2. 재요청(리다이렉트) - 새 페이지를 보여줘 (url에 기존주소 남아있지 않음)
			 *  response.sendRedirect("경로");
			 *  response.sendRedirect("/semi");  - localhost:8889/semi  context 루트로 기존페이지
			 * 
			 * 
			 * */		
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
