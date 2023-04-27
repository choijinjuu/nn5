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
 * Servlet implementation class SCDeleteCheckedController
 */
@WebServlet("/delChecked.sc")
public class SCDeleteCheckedController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SCDeleteCheckedController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userNo = ((Member)request.getSession().getAttribute("loginUser")).getMemberNo();
		String[] productNum = request.getParameterValues("productNums");
		int[] productNums = new int[productNum.length];
		
		for (int i = 0; i < productNum.length; i++) {
			productNums[i] = Integer.parseInt(productNum[i]);
			System.out.println(productNum[i]);
		}
		
//		for (int i = 0; i < cartIds.length; i++) {
//            System.out.println("newArr[" + i + "] = " + cartIds[i]);
//        }
		for (int i = 0; i < productNums.length; i++) {
			new ShoppingCartService().delChecked(productNums[i],userNo);
		}
		
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
