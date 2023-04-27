package com.semi.shoppingcart.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.semi.common.JDBCTemplate;
import com.semi.shoppingcart.model.vo.ShoppingCart;

public class ShoppingCartDao {
	
	private Properties prop = new Properties();
	
	public ShoppingCartDao() {
		
		String filePath = ShoppingCartDao.class.getResource("/sql/shoppingcart/shoppingcart-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//장바구니 db에 새로운 물품 넣는 메소드
	public int newInsertSC(Connection conn, ShoppingCart sc) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("newInsertSC");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sc.getMemberNo());
			pstmt.setInt(2, sc.getProductNo());
			pstmt.setInt(3, sc.getquantity());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	//장바구니 추가 메소드
	public int insertSC(Connection conn, ShoppingCart sc) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertSC");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sc.getMemberNo());
			pstmt.setInt(2, sc.getMemberNo());
			pstmt.setInt(3, sc.getProductNo());
			pstmt.setInt(4, sc.getquantity());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	
	//장바구니 db에서 상품번호 찾는 메소드
	public ShoppingCart selectCart(Connection conn, int usernum, int productNo) {
		ShoppingCart sc = null;
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, usernum);
			pstmt.setInt(2, productNo);
			
			rset = pstmt.executeQuery();
			
			if (rset.next()) {
				sc = new ShoppingCart(rset.getInt("CART_ID"),
									  rset.getInt("MEMBER_NO"),
									  rset.getInt("PRODUCT_NO"),
									  rset.getInt("QUANTITY")
									 );
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return sc;
	}

	//장바구니 수량 증가 메소드
	public int plusQty(Connection conn, int cartId, int productNo, int cnt) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("plusQty");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cnt);
			pstmt.setInt(2, cartId);
			pstmt.setInt(3, productNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}

	//장바구니 리스트 조회 메소드
	public ArrayList<ShoppingCart> selectCartList(Connection conn, int usernum) {
		ArrayList<ShoppingCart> scList = new ArrayList<>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectCartList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, usernum);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				scList.add(new ShoppingCart(rset.getInt("CART_ID")
								  ,rset.getInt("PRODUCT_NO")
								  ,rset.getInt("QUANTITY")
								  ,rset.getString("PRODUCT_NAME")
								  ,rset.getInt("PRODUCT_PRICE")
								  ,rset.getDouble("PRODUCT_SALES_RATE")
								  ,rset.getInt("PRODUCT_STOCK")));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		
		return scList;
	}
	
	//장바구니 체크 삭제 메소드
	public int delChecked(Connection conn, int productNums,int userNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("delChecked");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, productNums);
			pstmt.setInt(2, userNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
	
		return result;
	}

	//장바구니 비우기 메소드
	public int delAll(Connection conn, int usernum) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("delAll");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, usernum);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
	
		return result;
	}

	//장바구니 수량 수정 메소드
	public int updateQty(Connection conn, int productNo, int userNo, int qty) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateQty");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, qty);
			pstmt.setInt(2, productNo);
			pstmt.setInt(3, userNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}

	//유저의 장바구니에 이미 물품이 있는지 확인 메소드
	public ShoppingCart selectUserCart(Connection conn, int usernum) {
		ShoppingCart sc = null;
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("selectUserCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, usernum);
			
			rset = pstmt.executeQuery();
			
			if (rset.next()) {
				sc = new ShoppingCart(rset.getInt("CART_ID"),
									  rset.getInt("MEMBER_NO"),
									  rset.getInt("PRODUCT_NO"),
									  rset.getInt("QUANTITY")
									 );
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return sc;
	}

	
	
}
