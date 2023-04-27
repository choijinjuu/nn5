package com.semi.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.member.model.vo.Member;
import com.semi.order.model.service.OrderService;

/**
 * Servlet implementation class OrderInsertController
 */
@WebServlet("/orderInsert.od")
public class OrderInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderInsertController() {
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
		String[] productNo = request.getParameterValues("products");
		int[] productNos = new int[productNo.length];
		int userNo = ((Member)request.getSession().getAttribute("loginUser")).getMemberNo();
		
		for (int i = 0; i < productNo.length; i++) {
			productNos[i] = Integer.parseInt(productNo[i]);
		}
		
//		for (int i = 0; i < cartIds.length; i++) {
//            System.out.println("newArr[" + i + "] = " + cartIds[i]);
//        } 확인용
		new OrderService().deleteOrder(userNo);
		for (int i = 0; i < productNos.length; i++) {
			new OrderService().insertChecked(productNos[i],userNo);
		}
		
		//값을 넘겨줘야 success
		response.setContentType("json/application; charset=UTF-8");
		response.getWriter().print(1);
	}

}
