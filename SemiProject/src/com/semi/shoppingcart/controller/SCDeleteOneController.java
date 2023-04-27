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
 * Servlet implementation class SCDeleteOneController
 */
@WebServlet("/delOne.sc")
public class SCDeleteOneController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SCDeleteOneController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productNum = Integer.parseInt(request.getParameter("productNum"));
		int userNo = ((Member)request.getSession().getAttribute("loginUser")).getMemberNo();
		
		int result = new ShoppingCartService().delChecked(productNum,userNo);
		
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
