package com.semi.shoppingcart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.semi.shoppingcart.model.service.ShoppingCartService;
import com.semi.shoppingcart.model.vo.ShoppingCart;

/**
 * Servlet implementation class SCSelectController
 */
@WebServlet("/select.sc")
public class SCSelectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SCSelectController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int usernum = Integer.parseInt(request.getParameter("usernum"));
		int productNo = Integer.parseInt(request.getParameter("productnum"));
		ShoppingCart sc = new ShoppingCartService().selectCart(usernum,productNo);
		
		response.setContentType("json/application; charset=UTF-8");
		new Gson().toJson(sc,response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
