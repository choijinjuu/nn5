package com.semi.shoppingcart.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.shoppingcart.model.service.ShoppingCartService;
import com.semi.shoppingcart.model.vo.ShoppingCart;

/**
 * Servlet implementation class shoppingCartController
 */
@WebServlet("/insert.sc")
public class SCInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SCInsertController() {
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
		
		int usernum = Integer.parseInt(request.getParameter("usernum"));
		int shopnum = Integer.parseInt(request.getParameter("shopnum"));
		int cnt = Integer.parseInt(request.getParameter("cnt"));
		int result = 0;
		
		ShoppingCart sc = new ShoppingCart();
		sc.setMemberNo(usernum);
		sc.setProductNo(shopnum);
		sc.setquantity(cnt);
		
		ShoppingCart scList = new ShoppingCartService().selectCart(usernum,shopnum);
		
		if (scList != null) {//장바구니에 다른 물품 추가
			result = new ShoppingCartService().insertSC(sc);
		}else {//장바구니에 새로운 물품 추가
			result = new ShoppingCartService().newInsertSC(sc);
		}
		
		response.setContentType("json/application; charset=UTF-8");
		response.getWriter().print("1");
		
		if (result>0) {
			System.out.println("성공");
		}else {
			System.out.println("실패");
		}
	
	}

}
