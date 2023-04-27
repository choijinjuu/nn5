package com.semi.order.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.semi.common.JDBCTemplate;
import com.semi.order.model.dao.OrderDao;
import com.semi.order.model.vo.Order;
import com.semi.order.model.vo.Payment;

public class OrderService {

	//장바구니에 체크된 목록 주문 db에 넣는 메소드
	public void insertChecked(int productNo, int userNo) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new OrderDao().insertChecked(conn,productNo,userNo);
		
		if (result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
	}

	//주문 상품 리스트 메소드
	public ArrayList<Order> selectList(int userNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Order> list = new OrderDao().selectList(conn,userNo);
		
		JDBCTemplate.close(conn);
		
		return list;
	}

	//결제정보 입력 메소드
	public int orderPayment(Payment p) {
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new OrderDao().orderPayment(conn,p);
		
		if (result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		
		return result;
	}

	//주문목록 삭제 메소드
	public void deleteOrder(int userNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new OrderDao().deleteOrder(conn,userNo);
		
		if (result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
	}

}
