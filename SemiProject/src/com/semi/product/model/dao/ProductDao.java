package com.semi.product.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.semi.common.JDBCTemplate;
import com.semi.common.vo.PageInfo;
import com.semi.member.model.dao.MemberDao;
import com.semi.product.model.vo.Attachment;
import com.semi.product.model.vo.Product;
import com.semi.product.model.vo.Review;

public class ProductDao {
	
	private Properties prop = new Properties();
	
	public ProductDao() {
		
		String filePath = ProductDao.class.getResource("/sql/product/product-mapper.xml").getPath();
		
		try {
			
			prop.loadFromXML(new FileInputStream(filePath));
		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//도서 등록
	public int insertProduct(Connection conn, int category, String productName, String publisher, String author,
			int price, int sale, int stock, String des) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, category);
				pstmt.setString(2, productName);
				pstmt.setString(3, publisher);
				pstmt.setString(4, author);
				pstmt.setInt(5, price);
				pstmt.setInt(6, sale);
				pstmt.setInt(7, stock);
				pstmt.setString(8, des);
				
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}

	//상품 등록
	public int insertProduct(Connection conn, int category, String productName,String publisher, int price, int sale, int stock,
			String des) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertProductItem");
		
		try {
			pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, category);
				pstmt.setString(2, productName);
				pstmt.setString(3, publisher);
				pstmt.setInt(4, price);
				pstmt.setInt(5, sale);
				pstmt.setInt(6, stock);
				pstmt.setString(7, des);
				
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		return result;
		
		
		
	}

	//첨부파일 등록
	public int insertAttachment(Connection conn, ArrayList<Attachment> list) {

		int result = 1;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertAttachment");
		
		try {
			for(Attachment at : list) {
				pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, at.getAttachmentName());
					pstmt.setString(2, at.getAttachmentChange());
					pstmt.setString(3, at.getAttachmentPath());
					pstmt.setInt(4, at.getFileLivel());
				
				result = pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}

	//도서리스트 조회
	public ArrayList<Product> selectAttachment(Connection conn, PageInfo pi) {
		
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectAttachmentList");
		
		try {
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit()+1;
			int endRow = (startRow+pi.getBoardLimit())-1;
			
			pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PRODUCT_NO")
						,rset.getString("PRODUCT_CATEGORY")
						,rset.getString("PRODUCT_NAME")
						,rset.getString("PRODUCT_PUBLISHER")
						,rset.getString("PRODUCT_TEXT")
						,rset.getInt("PRODUCT_PRICE")
						,rset.getInt("PRODUCT_SALES_RATE")
						,rset.getString("AUTHOR")
						,rset.getDate("CREATE_DATE")
						,rset.getString("titleImg")));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
	}

	//카테고리 클릭시 출력되는 도서 리스트 조회
	public ArrayList<Product> selectAttachmentC(Connection conn, PageInfo pi, String cate) {

		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectAttachmentListC");
		
		try {
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit()+1;
			int endRow = (startRow+pi.getBoardLimit())-1;
			
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, cate);
				pstmt.setInt(2, startRow);
				pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PRODUCT_NO")
						,rset.getString("PRODUCT_CATEGORY")
						,rset.getString("PRODUCT_NAME")
						,rset.getString("PRODUCT_PUBLISHER")
						,rset.getString("PRODUCT_TEXT")
						,rset.getInt("PRODUCT_PRICE")
						,rset.getInt("PRODUCT_SALES_RATE")
						,rset.getString("AUTHOR")
						,rset.getDate("CREATE_DATE")
						,rset.getString("titleImg")));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
	}
	
	//신간도서리스트 조회
		public ArrayList<Product> selectNewAttachList(Connection conn, PageInfo pi) {
			
			ArrayList<Product> list = new ArrayList<>();
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			
			String sql = prop.getProperty("selectNewAttachList");
			
			try {
				int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit()+1;
				int endRow = (startRow+pi.getBoardLimit())-1;
				
				pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, startRow);
					pstmt.setInt(2, endRow);
				
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					list.add(new Product(rset.getInt("PRODUCT_NO")
							,rset.getString("PRODUCT_CATEGORY")
							,rset.getString("PRODUCT_NAME")
							,rset.getString("PRODUCT_PUBLISHER")
							,rset.getString("PRODUCT_TEXT")
							,rset.getInt("PRODUCT_PRICE")
							,rset.getInt("PRODUCT_SALES_RATE")
							,rset.getString("AUTHOR")
							,rset.getDate("CREATE_DATE")
							,rset.getString("titleImg")));
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCTemplate.close(rset);
				JDBCTemplate.close(pstmt);
			}
			return list;
		}


	//상품 리스트 조회
	public ArrayList<Product> selectItem(Connection conn, PageInfo pi) {
		
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectAttachmentListP");
		
		try {
			int startRow = (pi.getCurrentPage()-1) * pi.getBoardLimit()+1;
			int endRow = (startRow+pi.getBoardLimit())-1;
			
			pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PRODUCT_NO")
						,rset.getString("PRODUCT_NAME")
						,rset.getString("PRODUCT_PUBLISHER")
						,rset.getString("PRODUCT_TEXT")
						,rset.getInt("PRODUCT_PRICE")
						,rset.getInt("PRODUCT_SALES_RATE")
						,rset.getDate("CREATE_DATE")
						,rset.getString("titleImg")));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
	}
	
	//도서 총 게시글 수
	public int selectListCount(Connection conn) {
		
		int listCount = 0;
		ResultSet rset = null;
		Statement stmt = null;
		
		String sql = prop.getProperty("selectProListCount");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				listCount = rset.getInt("COUNT");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(stmt);
		}
		
		return listCount;
	}
	
	//상품 총 게시글 수
		public int selectProListCount(Connection conn) {
			
			int listCount = 0;
			ResultSet rset = null;
			Statement stmt = null;
			
			String sql = prop.getProperty("selectProListCount");
			
			try {
				stmt = conn.createStatement();
				
				rset = stmt.executeQuery(sql);
				
				if(rset.next()) {
					listCount = rset.getInt("COUNT");
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCTemplate.close(rset);
				JDBCTemplate.close(stmt);
			}
			
			return listCount;
		}

	//도서, 상품 상세 페이지
	public Product productDetail(Connection conn, int pno) {
		
		Product p = null;
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("productDetail");
		
		try {
			pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, pno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				p = new Product(rset.getInt("PRODUCT_NO"),
								rset.getString("PRODUCT_NAME"),
								rset.getString("PRODUCT_PUBLISHER"),
								rset.getString("PRODUCT_TEXT"),
								rset.getInt("PRODUCT_PRICE"),
								rset.getInt("PRODUCT_SALES_RATE"),
								rset.getString("AUTHOR"),
								rset.getString("TITLEIMG"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return p;
	}
	//도서, 쇼핑 상세페이지의 상세이미지..
	public Product productDetail2(Connection conn, int pno) {
		
		Product p2 = null;
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("productDetail2");
		
		try {
			pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, pno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				p2 = new Product(rset.getString("TITLEIMG"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return p2;
	}

	//메인페이지 신간 도서 리스트 4개
	public ArrayList<Product> newBookList(Connection conn) {
		
		ArrayList<Product> newBook = new ArrayList<>();
		ResultSet rset = null;
		Statement stmt = null;
		
		String sql = prop.getProperty("newBookList");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				newBook.add(new Product(rset.getInt("PRODUCT_NO")
										,rset.getString("PRODUCT_NAME")
										,rset.getString("PRODUCT_PUBLISHER")
										,rset.getInt("PRODUCT_PRICE")
										,rset.getInt("PRODUCT_SALES_RATE")
										,rset.getString("titleImg")));
			}
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(stmt);
		}
		return newBook;
	}
	
	//메인페이지 상품 리스트 4개
	public ArrayList<Product> newProList(Connection conn) {
		
		ArrayList<Product> newPro = new ArrayList<>();
		ResultSet rset = null;
		Statement stmt = null;
		
		String sql = prop.getProperty("newProList");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				newPro.add(new Product(rset.getInt("PRODUCT_NO")
									,rset.getString("PRODUCT_NAME")
									,rset.getString("PRODUCT_PUBLISHER")
									,rset.getInt("PRODUCT_PRICE")
									,rset.getInt("PRODUCT_SALES_RATE")
									,rset.getString("titleImg")));
			}
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(stmt);
		}
		return newPro;
	}

	//리플 작성
	public int insertReview(Connection conn, Review r) {
		
		int result = 0;
		PreparedStatement pstmt =null;
		
		String sql = prop.getProperty("insertReview");
		
		try {
			pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, r.getMemberNo());
				pstmt.setInt(2, r.getProductNo());
				pstmt.setInt(3, r.getReviewStar());
				pstmt.setString(4, r.getReviewContent());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}

	//댓글 목록 조회
	public ArrayList<Review> selectReview(Connection conn, int productNo) {
		
		ArrayList<Review> rlist = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectReview");
		
		try {
			pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, productNo);
				
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				rlist.add(new Review(rset.getInt("REVIEW_STAR"),
									rset.getString("REVIEW_CONTENT"),
									rset.getString("CREATE_DATE"),
									rset.getString("MEMBER_ID")));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return rlist;
	}


}