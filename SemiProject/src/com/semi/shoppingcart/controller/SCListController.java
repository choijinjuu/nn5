package com.semi.shoppingcart.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.member.model.vo.Member;
import com.semi.shoppingcart.model.service.ShoppingCartService;
import com.semi.shoppingcart.model.vo.ShoppingCart;

/**
 * Servlet implementation class SCListController
 */
@WebServlet("/list.sc")
public class SCListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SCListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int usernum = ((Member)request.getSession().getAttribute("loginUser")).getMemberNo();
		
		ArrayList<ShoppingCart> scList = new ShoppingCartService().selectCartList(usernum);
		request.setAttribute("scList", scList);
		request.getRequestDispatcher("views/product/shoppingCart.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
