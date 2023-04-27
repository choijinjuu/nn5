package com.semi.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.member.model.vo.Member;
import com.semi.order.model.service.OrderService;
import com.semi.order.model.vo.Payment;
import com.semi.shoppingcart.model.service.ShoppingCartService;

/**
 * Servlet implementation class OrderPayController
 */
@WebServlet("/orderPay.od")
public class OrderPayController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderPayController() {
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
		request.setCharacterEncoding("UTF-8");
		int orderNo = Integer.parseInt(request.getParameter("orderNum"));
		int userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getMemberNo();
		String productNo = request.getParameter("productNum");
		int price = Integer.parseInt(request.getParameter("finalPrice"));
		String msg = request.getParameter("selectMsg");
		String bankName = request.getParameter("select-bank");
		String depositName = request.getParameter("inputName");
		int usePoint = Integer.parseInt(request.getParameter("inputPoint"));
		String name = request.getParameter("selectName");
		String phone = request.getParameter("selectPhone");
		String email = request.getParameter("selectEmail");
		String post = request.getParameter("selectPost");
		String road = request.getParameter("selectRoad");
		String detail = request.getParameter("selectDetail");
		int deliveryCost = Integer.parseInt(request.getParameter("deliveryCost"));
		
		Payment p = new Payment(orderNo,userNo,productNo,price,msg,bankName,depositName,usePoint,name,phone,email,post,road,detail,deliveryCost);
		
		int result = new OrderService().orderPayment(p);
		
		String[] productNum = productNo.split(",");
		System.out.println(productNum);
		int[] productNums = new int[productNum.length];
		for (int i = 0; i < productNum.length; i++) {
			productNums[i] = Integer.parseInt(productNum[i]);
		}
		
//		System.out.println(p);
		
		if (result>0) {
			for (int i = 0; i < productNums.length; i++) {
				new ShoppingCartService().delChecked(productNums[i],userNo);
			}
			response.sendRedirect(request.getContextPath()+"/orderCp.od");
		}else {
			System.out.println("결제실패");
			
		}
	}

}
