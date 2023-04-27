package com.semi.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.board.model.service.BoardService;
import com.semi.board.model.vo.Board;

/**
 * Servlet implementation class QnainsertController
 */
@WebServlet("/qna.in") //1:1문의 인설트
public class QnainsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnainsertController() {
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
		String boardTitle = request.getParameter("boardTitle");
		String boardContent = request.getParameter("boardContent");
		
		Board b = new Board();
		b.setMemberNo(memberNo);
		b.setProductNo(productNo);
		b.setBoardTitle(boardTitle);
		b.setBoardContent(boardContent);
		
		int result = new BoardService().insertQna(b);
		
		response.getWriter().print(result);
	}

}
