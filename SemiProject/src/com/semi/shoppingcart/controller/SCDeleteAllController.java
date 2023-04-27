package com.semi.shoppingcart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.member.model.vo.Member;
import com.semi.shoppingcart.model.service.ShoppingCartService;

/**
 * Servlet implementation class SCDeleteAllController
 */
@WebServlet("/delAll.sc")
public class SCDeleteAllController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SCDeleteAllController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//int usernum = Integer.parseInt(request.getParameter("usernum"));
		int usernum = ((Member)request.getSession().getAttribute("loginUser")).getMemberNo();
		
		int result = new ShoppingCartService().delAll(usernum);
		
		//값을 넘겨줘야 success
		response.setContentType("json/application; charset=UTF-8");
		response.getWriter().print(1);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
