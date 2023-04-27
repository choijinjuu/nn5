package com.semi.product.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.product.model.service.ProductService;
import com.semi.product.model.vo.Review;

/**
 * Servlet implementation class ReplyInsertController
 */
@WebServlet("/review.in")
public class ReviewInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int memberNo = Integer.parseInt(request.getParameter("memberNo"));
		int productNo = Integer.parseInt(request.getParameter("productNo"));
		int reviewStar = Integer.parseInt(request.getParameter("reviewStar"));
		String reviewContent = request.getParameter("reviewContent");
		
		Review r = new Review();
		r.setMemberNo(memberNo);
		r.setProductNo(productNo);
		r.setReviewStar(reviewStar);
		r.setReviewContent(reviewContent);
		
		int result = new ProductService().insertReview(r);
		
		response.getWriter().print(result);
		
	}

}
