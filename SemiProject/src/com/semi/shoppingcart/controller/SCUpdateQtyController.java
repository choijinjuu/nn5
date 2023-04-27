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
 * Servlet implementation class SCUpdateQtyController
 */
@WebServlet("/updateQty.sc")
public class SCUpdateQtyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SCUpdateQtyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productNo = Integer.parseInt(request.getParameter("productNo"));
		int userNo = ((Member)request.getSession().getAttribute("loginUser")).getMemberNo();
		int qty = Integer.parseInt(request.getParameter("qty"));
		
		int result = new ShoppingCartService().updateQty(productNo,userNo,qty);
	}

}
