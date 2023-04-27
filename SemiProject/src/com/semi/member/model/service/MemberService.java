package com.semi.member.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.semi.common.JDBCTemplate;
import com.semi.member.model.dao.MemberDao;
import com.semi.member.model.vo.Coupon;
import com.semi.member.model.vo.Member;
import com.semi.member.model.vo.Payment;

public class MemberService {


	public Member loginMember(String memberId, String memberPwd) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		Member m = new MemberDao().loginMember(conn,memberId,memberPwd);
		
		//조회는 commit  / rollback 할필요 x
		JDBCTemplate.close(conn);
		
		return m;
	}
	
	public int checkId(String memberId) {
		Connection conn = JDBCTemplate.getConnection();
		
		int idCheck = new MemberDao().checkId(conn,memberId);
		
		JDBCTemplate.close(conn);
				
		
		
		return idCheck;
	}
	
	public int insertMember(Member m) {
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new MemberDao().insertMember(conn,m);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}
	
	
	public String selectId(Member m) {
		Connection conn = JDBCTemplate.getConnection();
		
		
		String srcIdM = new MemberDao().selectId(conn,m);
		
		
		
		JDBCTemplate.close(conn);
		return srcIdM;
	}
	
	public Member searchPwd(Member srcPwdM) {
		Connection conn = JDBCTemplate.getConnection();
		
		Member pwdM = new MemberDao().searchPwd(conn,srcPwdM);
		
		 
		
		
		
		JDBCTemplate.close(conn);
		return pwdM;
	}
	
	public ArrayList<Coupon> selectCoupon(int memNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Coupon> clist = new MemberDao().selectCoupon(conn, memNo);
		
		JDBCTemplate.close(conn);
		
		return clist;
	}
	
	public ArrayList<Payment> selectShoppingList(int memNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Payment> list = new MemberDao().selectShoppingList(conn,memNo);
		
		JDBCTemplate.close(conn);

		
		return list;
	}

	public ArrayList<Payment> selectModal(int orderNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Payment> plist = new MemberDao().selectModal(conn,orderNo);

		JDBCTemplate.close(conn);
		
		return plist;
	}

	public int deleteMember(String loginId, String loginPwd) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new MemberDao().deleteMember(conn, loginId, loginPwd);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		return result;
	}

	public Member updateMember(Member m) {
		
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new MemberDao().updateMember(conn,m);
		
		Member memUpdate = null;
		
		if(result>0) {
			JDBCTemplate.commit(conn);
			memUpdate = new MemberDao().selectMember(conn,m.getMemberId());
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return memUpdate;
	}


	
}
