package com.semi.product.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.semi.common.JDBCTemplate;
import com.semi.common.vo.PageInfo;
import com.semi.product.model.dao.ProductDao;
import com.semi.product.model.vo.Attachment;
import com.semi.product.model.vo.Product;
import com.semi.product.model.vo.Review;

public class ProductService {
	
	//도서등록
	public int insertProduct(int category, String productName, String publisher, String author, int price, int sale,
			int stock, String des, ArrayList<Attachment> list) {
		
		Connection conn = JDBCTemplate.getConnection();
		//첨부파일 없어도 커밋해야됨
		int result = new ProductDao().insertProduct(conn,category,productName,publisher,author,price,sale,stock,des);
		
		int result2 = 1; //첨부파일
		
		if(list!=null) {//첨부파일 있는 경우
			result2 = new ProductDao().insertAttachment(conn,list);
		}
		
		if(result>0 && result2>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result*result2;
	}

	//상품등록
	public int insertProduct(int category, String productName,String publisher, int price, int sale, int stock, String des,
			ArrayList<Attachment> list) {
		
		Connection conn = JDBCTemplate.getConnection();
		//첨부파일 없어도 커밋해야됨
		int result = new ProductDao().insertProduct(conn,category,productName,publisher,price,sale,stock,des);
		
		int result2 = 1; //첨부파일
		
		if(list!=null) {//첨부파일 있는 경우
			result2 = new ProductDao().insertAttachment(conn,list);
		}
		
		if(result>0 && result2>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result*result2;
	}

	//도서리스트 조회
	public ArrayList<Product> selectAttachmentList(PageInfo pi) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Product> list = new ProductDao().selectAttachment(conn,pi);
		
		JDBCTemplate.close(conn);
		
		return list;
	}
	
	//신간도서리스트 조회
		public ArrayList<Product> selectNewAttachList(PageInfo pi) {
			
			Connection conn = JDBCTemplate.getConnection();
			
			ArrayList<Product> list = new ProductDao().selectNewAttachList(conn,pi);
			
			JDBCTemplate.close(conn);
			
			return list;
		}
	
	//카테고리 클릭시 출력되는 도서 리스트 조회
	public ArrayList<Product> selectAttachmentCList(PageInfo pi, String cate) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Product> list = new ProductDao().selectAttachmentC(conn,pi,cate);
		
		JDBCTemplate.close(conn);
		
		return list;
	}
	
	//상품 리스트 조회
	public ArrayList<Product> selectItem(PageInfo pi) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Product> list = new ProductDao().selectItem(conn,pi);
		
		JDBCTemplate.close(conn);
		
		return list;
	}

	//도서 총 게시글 개수 
	public int selectListCount() {

		Connection conn = JDBCTemplate.getConnection();
		
		int listCount = new ProductDao().selectListCount(conn);
		
		JDBCTemplate.close(conn);
		
		return listCount;
	}
	
	//상품 총 게시글 개수 
		public int selectProListCount() {

			Connection conn = JDBCTemplate.getConnection();
			
			int listCount = new ProductDao().selectListCount(conn);
			
			JDBCTemplate.close(conn);
			
			return listCount;
		}

	//도서,상품 상세 페이지
	public Product productDetail(int pno) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		Product p = new ProductDao().productDetail(conn,pno);
		
		JDBCTemplate.close(conn);
		
		return p;
	}
	//도서,상품 상세 페이지.. 상세이미지
	public Product productDetail2(int pno) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		Product p2 = new ProductDao().productDetail2(conn,pno);
		
		JDBCTemplate.close(conn);
		
		return p2;
	}
	
	//메인페이지 신간 도서 4개
	public ArrayList<Product> newBookList() {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Product> newBook = new ProductDao().newBookList(conn);
		
		JDBCTemplate.close(conn);
		
		return newBook;
	}

	//메인페이지 쇼핑 목록 4개
	public ArrayList<Product> newProList() {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Product> newPro = new ProductDao().newProList(conn);
		
		JDBCTemplate.close(conn);
		
		return newPro;
	}

	//댓글 작성
	public int insertReview(Review r) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new ProductDao().insertReview(conn,r);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}

	//댓글 목록 조회
	public ArrayList<Review> selectReview(int productNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Review> rlist = new ProductDao().selectReview(conn,productNo);
		
		JDBCTemplate.close(conn);
		
		return rlist;
	}
}