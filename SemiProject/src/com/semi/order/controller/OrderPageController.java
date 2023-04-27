package com.semi.order.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.member.model.vo.Member;
import com.semi.order.model.service.OrderService;
import com.semi.order.model.vo.Order;

/**
 * Servlet implementation class OrderPageController
 */
@WebServlet("/order.od")
public class OrderPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderPageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getMemberNo(); 
		
		ArrayList<Order> list = new OrderService().selectList(userNo);
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/product/order.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
