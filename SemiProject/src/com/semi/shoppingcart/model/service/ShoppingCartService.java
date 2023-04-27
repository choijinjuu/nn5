package com.semi.shoppingcart.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.semi.common.JDBCTemplate;
import com.semi.shoppingcart.model.dao.ShoppingCartDao;
import com.semi.shoppingcart.model.vo.ShoppingCart;

public class ShoppingCartService {

	//장바구니 db 새로운 물품 추가 메소드
	public int newInsertSC(ShoppingCart sc) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new ShoppingCartDao().newInsertSC(conn,sc);
		
		if (result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		
		return result;
	}

	//장바구니 db 조회 메소드
	public ShoppingCart selectCart(int usernum, int productNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		ShoppingCart sc = new ShoppingCartDao().selectCart(conn,usernum,productNo);
		
		JDBCTemplate.close(conn);
		
		return sc;
	}

	//장바구니 수량 증가 메소드
	public int plusQty(int cartId,int productNo ,int cnt) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new ShoppingCartDao().plusQty(conn,cartId,productNo,cnt);
		
		if (result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		
		return result;
	}

	//장바구니 리스트 조회 메소드
	public ArrayList<ShoppingCart> selectCartList(int usernum) {
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<ShoppingCart> scList = new ShoppingCartDao().selectCartList(conn,usernum);
		
		JDBCTemplate.close(conn);
		
		return scList;
	}

	//장바구니 체크된 목록 삭제 메소드
	public int delChecked(int productNums,int userNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new ShoppingCartDao().delChecked(conn,productNums,userNo);
		
		if (result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		
		return result;	
	}

	//장바구니 비우기 메소드
	public int delAll(int usernum) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new ShoppingCartDao().delAll(conn,usernum);
		
		if (result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		
		return result;
	}

	//장바구니 수량 업데이트 메소드
	public int updateQty(int productNo,int userNo ,int qty) {
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new ShoppingCartDao().updateQty(conn,productNo,userNo,qty);
		
		if (result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		
		return result;
	}

	//장바구니에 추가하는 메소드
	public int insertSC(ShoppingCart sc) {
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new ShoppingCartDao().insertSC(conn,sc);
		
		if (result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		
		return result;
	}

	//유저의 장바구니에 이미 물품이 있는지 확인 메소드
	public ShoppingCart selectUserCart(int usernum) {
		Connection conn = JDBCTemplate.getConnection();
		
		ShoppingCart sc = new ShoppingCartDao().selectUserCart(conn,usernum);
		
		JDBCTemplate.close(conn);
		
		return sc;
	}

}
