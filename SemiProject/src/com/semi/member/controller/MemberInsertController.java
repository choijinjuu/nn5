package com.semi.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.member.model.service.MemberService;
import com.semi.member.model.vo.Member;

/**
 * Servlet implementation class MemberInsertController
 */
@WebServlet("/insert.me")
public class MemberInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String memberId = request.getParameter("memberId");
		String memberPwd = request.getParameter("memberPwd");
		String memberName = request.getParameter("memberName");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		String addressNum = request.getParameter("addressNum");
		String loadAddress = request.getParameter("loadAddress");
		String detailAddress = request.getParameter("detailAddress");
		String extraAddress = request.getParameter("extraAddress");
		
		String address = request.getParameter("address");

		address = addressNum + loadAddress + detailAddress + extraAddress;
		
		
		
		
		String birthYear = request.getParameter("birthYear");
		String birthMonth = request.getParameter("birthMonth");
		String birthDay = request.getParameter("birthDay");
		String dotCom = request.getParameter("dotCom");
		
		
		if(Integer.parseInt(birthMonth)<10) {
			
			birthMonth="0"+(String)birthMonth;
		}
		if(Integer.parseInt(birthDay)<10) {
			birthDay= "0"+(String)birthDay;
		}
		String memberBirth = "";
		
		memberBirth = birthYear+birthMonth+birthDay;
		
		email = email + "@"+dotCom;
		
		
		Member m = new Member(memberId,memberPwd,memberName,memberBirth,gender,phone,email,address);
				
		
		
		int result = new MemberService().insertMember(m);
		
		
		//성공시 index로 돌아가서(재요청) alertMsg로 회원가입을 환영합니다
		if(result>0) {
			request.getSession().setAttribute("alertMsg", "회원가입을 환영합니다 !");
			response.sendRedirect(request.getContextPath());
		}else {
			//실패시 errorPage가서 (위임)회원가입에 실패아였습니다
			request.setAttribute("errorPage", "회원가입에 실패하였습니다.");
			request.getRequestDispatcher("semiViews/common/errorPage.jsp").forward(request, response);
		}
		
		
		
		
	}

}
