package com.semi.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.member.model.service.MemberService;

/**
 * Servlet implementation class MemberIdCheck
 */
@WebServlet("/idCheck.me")
public class MemberIdCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberIdCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	String checkId = request.getParameter("checkId");
//		
//		int count = new MemberService().checkId(checkId);
//		
//		if(count>0) { //조회가 되었다(중복)-사용 불가능 NNNNN
//			response.getWriter().print("NNNNN");
//		}else {//조회가 되지 않음(중복아님) -사용가능 NNNNY
//			response.getWriter().print("NNNNY");
//		}
//		
		doPost(request,response);
	}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doGet(request,response);
		// 아이디 중복 확인 요청을 처리하는 메소드
		request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("EUC-KR");
		  // 클라이언트에서 전송한 아이디 확인 요청 처리
	        String memberId = request.getParameter("memberId");
//	        boolean isDuplicate = false; // 아이디 중복 여부를 저장할 변수 (예시로는 false로 초기화)
//
//	        // 아이디 중복 확인 로직 수행
	    	int idCheck = new MemberService().checkId(memberId);
	    	
	    	PrintWriter out = response.getWriter();
			
	    	
	    	//성공 여부 확인 : 개발자용
			if(idCheck == 0) { //조회가 되었다(중복)-사용 불가능 NNNNN
				System.out.println("이미 존재하는 아이디입니다.");
			}else if(idCheck == 1){//조회가 되지 않음(중복아님) -사용가능 NNNNY
				System.out.println("사용 가능한 아이디입니다");
			}
			
			out.write(idCheck + "");   // -> ajax 결과값이 result가 됨
			
			//-> String 으로 값을 내보낼 수 있도록 + ""를 해준다.
		}
			
		

	}