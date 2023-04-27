package com.semi.shoppingcart.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.shoppingcart.model.service.ShoppingCartService;

/**
 * Servlet implementation class SCUpdateQuantityController
 */
@WebServlet("/plusQty.sc")
public class SCPlusQtyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SCPlusQtyController() {
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
		
		int cartId = Integer.parseInt(request.getParameter("cartId"));
		int productNo = Integer.parseInt(request.getParameter("productNo"));
		int cnt = Integer.parseInt(request.getParameter("cnt"));
		int result = new ShoppingCartService().plusQty(cartId,productNo,cnt);
		
		
	}

}
