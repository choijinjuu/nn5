package com.semi.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.semi.member.model.dao.MemberDao;
import com.semi.member.model.service.MemberService;
import com.semi.member.model.vo.Member;

/**
 * Servlet implementation class SelectById
 */
@WebServlet("/selectbyid.me")
public class SelectById extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectById() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 이름 과 폰번호 생년월일로 아이디 찾기
		
		request.setCharacterEncoding("UTF-8");
		//HttpSession session = request.getSession();
		
		Member m = new Member();
		
		m.setMemberName(request.getParameter("memberName"));
		m.setMemberBirth(request.getParameter("memberBirth"));
		m.setPhone(request.getParameter("phone"));
		
		String srcIdM = new MemberService().selectId(m);
		m.setMemberId(srcIdM);
		System.out.println(m);
		
		System.out.println(srcIdM);
		
		//String memberName = request.getParameter("memberName");
		//String phone = request.getParameter("phone");
		//String memberBirth = request.getParameter("memberBirth");
		
		
		
		//Member m = new Member(memberName,phone,memberBirth);
		
		//String selectId = new MemberService().selectId(m);
		
		//m.setMemberId(memberId);
		
		//System.out.println(memberId);
		
		//if(memberId!=null) {
		
		
		
			request.setAttribute("member", m);
			request.setAttribute("memberId", srcIdM);
			request.getRequestDispatcher("views/member/searchMemberId.jsp").forward(request, response);
			
		//}else {
			
			//request.setAttribute("errorMsg", "조회되는 아이디가 없습니다");
			//request.getRequestDispatcher("semiViews/common/errorPage.jsp").forward(request, response);
		//}
		
	}

}
