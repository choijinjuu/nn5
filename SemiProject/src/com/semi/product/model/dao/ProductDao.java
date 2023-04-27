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

	//상품 리스트 조회
<<<<<<< HEAD
	public ArrayList<Product> selectItem(Connection conn) {
		
		ArrayList<Product> list = new ArrayList<>();
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectItem");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(sql);
=======
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
>>>>>>> 7f41d6fd73ef9706befdbff57a83b03339b20b14
			
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
<<<<<<< HEAD
			JDBCTemplate.close(stmt);
=======
			JDBCTemplate.close(pstmt);
>>>>>>> 7f41d6fd73ef9706befdbff57a83b03339b20b14
		}
		return list;
	}
	
	//도서 총 게시글 수
	public int selectListCount(Connection conn) {
		
		int listCount = 0;
		ResultSet rset = null;
		Statement stmt = null;
		
<<<<<<< HEAD
		String sql = prop.getProperty("selectListCount");
=======
		String sql = prop.getProperty("selectProListCount");
>>>>>>> 7f41d6fd73ef9706befdbff57a83b03339b20b14
		
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
<<<<<<< HEAD
=======
	
	//도서 총 게시글 수
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
				p = new Product(rset.getString("PRODUCT_NAME"),
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
>>>>>>> 7f41d6fd73ef9706befdbff57a83b03339b20b14


}