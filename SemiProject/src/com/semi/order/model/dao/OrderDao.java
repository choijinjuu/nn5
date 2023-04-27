package com.semi.order.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.semi.common.JDBCTemplate;
import com.semi.order.model.vo.Order;
import com.semi.order.model.vo.Payment;

public class OrderDao {
	
	private Properties prop = new Properties();
	
	public OrderDao() {
		
		String filePath = OrderDao.class.getResource("/sql/order/order-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	//장바구니에 체크된 목록 주문 db에 넣는 메소드
	public int insertChecked(Connection conn, int productNo, int userNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertChecked");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, productNo);
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

	//주문페이지 상품 리스트 메소드
	public ArrayList<Order> selectList(Connection conn, int userNo) {
		ArrayList<Order> list = new ArrayList<>();
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Order(rset.getInt("ORDER_NO")
								  ,rset.getInt("MEMBER_NO")
						  	  	  ,rset.getInt("PRODUCT_NO")
								  ,rset.getString("PRODUCT_NAME")
								  ,rset.getInt("PRICE")
								  ,rset.getInt("QUANTITY")
								  ,rset.getString("PRODUCT_PUBLISHER")
								  ,rset.getString("MEMBER_NAME")
								  ,rset.getString("PHONE")
								  ,rset.getString("EMAIL")
								  ,rset.getString("ADDRESS")
								  ,rset.getInt("MEMBER_POINT")));
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

	//결제정보 입력 메소드
	public int orderPayment(Connection conn, Payment p) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("orderPayment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, p.getOrderNo());
			pstmt.setInt(2, p.getMemberNo());
			pstmt.setString(3, p.getProductNo());
			pstmt.setInt(4, p.getPayment());
			pstmt.setString(5, p.getOrderRequest());
			pstmt.setString(6, p.getBankName());
			pstmt.setString(7, p.getDepositName());
			pstmt.setInt(8, p.getUsePoint());
			pstmt.setString(9, p.getAddressName());
			pstmt.setString(10, p.getPost());
			pstmt.setString(11, p.getRoadAddress());
			pstmt.setString(12, p.getDetailAddress());
			pstmt.setInt(13, p.getDeliveryCost());
			pstmt.setString(14, p.getPhone());
			pstmt.setString(15, p.getEmail());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	public int deleteOrder(Connection conn, int userNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteOrder");
		
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, userNo);
				
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCTemplate.close(pstmt);
			}
		return result;
	}

}
