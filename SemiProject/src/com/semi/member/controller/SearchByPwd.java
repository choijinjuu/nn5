package com.semi.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.google.gson.JsonArray;
import com.semi.member.model.service.MemberService;
import com.semi.member.model.vo.Member;

/**
 * Servlet implementation class SearchByPwd
 */
@WebServlet("/findpwd.me")
public class SearchByPwd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchByPwd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String memberId = request.getParameter("memberId");
		String memberName = request.getParameter("memberName");
		String memberBirth = request.getParameter("memberBirth");
		String phone = request.getParameter("phone");
		String memberPwd = "";
		/*
		Member m = new Member();
		m.setMemberId(memberId);
		m.setMemberName(memberName);
		m.setMemberBirth(memberBirth);
		m.setPhone(phone);
		*/
		
		Member srcPwdM = new Member(memberId,memberPwd,memberName,memberBirth,phone);
		System.out.println(srcPwdM);
		
		Member pwdM = new MemberService().searchPwd(srcPwdM);
		
		//m.setMemberPwd(memberPwd);
		
		
		request.setAttribute("member", pwdM);
		//request.setAttribute("membeerId", memberId);
		
		
		System.out.println(pwdM);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("views/member/searchMemberPwd.jsp");
		rd.forward(request, response);
		//response.setContentType("text/html; charset=UTF-8");
		
		//response.getWriter().print(memberPwd);
		
		//response.sendRedirect(request.getContextPath()+"/loginForm.me");
		
		
		
/*		
		if(memberPwd == null || memberPwd.length() == 0) {
	
			
			request.setAttribute("errorMsg", "조회 실패입니다. or null");
			response.sendRedirect(request.getContextPath()+"/searchpwd.me");
			
			
		}else {
			request.getSession().setAttribute("member", m);
			request.getSession().setAttribute("memberPwd", memberPwd);
			response.sendRedirect(request.getContextPath()+"/login.me");
		}
		
 */
	}

}
