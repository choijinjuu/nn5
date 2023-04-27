package com.semi.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.semi.common.MyFileRenamePolicy;
import com.semi.product.model.service.ProductService;
import com.semi.product.model.vo.Attachment;

/**
 * Servlet implementation class BookRegistration
 */
@WebServlet("/book.regi")
public class BookRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookRegistration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("views/product/bookRegistration.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//멀티파트로 받기
		if(ServletFileUpload.isMultipartContent(request)) {

			int maxSize = 15 * 1024 * 1024; //파일 용량 제한
			
			//저장할 파일 경로
			String savePath = request.getSession().getServletContext().getRealPath("/resources/");
			
			//파일명 저장
			MultipartRequest multiRequest = new MultipartRequest(request, savePath,maxSize,"UTF-8",new MyFileRenamePolicy());
			
			int category = Integer.parseInt(multiRequest.getParameter("category"));
			String productName = multiRequest.getParameter("pro_Name");
			String publisher = multiRequest.getParameter("pro_Publisher");
			String author = multiRequest.getParameter("pro_author");
			int price = Integer.parseInt(multiRequest.getParameter("pro_Price"));
			int sale = Integer.parseInt(multiRequest.getParameter("pro_sales"));
			int stock= Integer.parseInt(multiRequest.getParameter("pro_Stock"));
			String des = multiRequest.getParameter("pro_Des");
			
			ArrayList<Attachment> list = new ArrayList<>();
				
				for(int i=0; i<4; i++) {
					String key = "file"+i;
			
					if(multiRequest.getOriginalFileName(key) != null) {
							Attachment at = new Attachment();
								at.setAttachmentName(multiRequest.getOriginalFileName(key));
								at.setAttachmentChange(multiRequest.getFilesystemName(key));
								at.setAttachmentPath("/resources/");
								
							if(i==1) {
								at.setFileLivel(1);
							}else {
								at.setFileLivel(2);
						}
					list.add(at);
				}
			}
			
			int result = new ProductService().insertProduct(category,productName,publisher,author,price,sale,stock,des,list);
			
			if(result>0) {
				request.getSession().setAttribute("alertMsg", "상품 등록 완료");
			}else {
				if(list!=null) {
//					new File(savePath+list.getAttachmentName()).delete(); 파일 삭제
				}
			}
		};
		
	}
}
