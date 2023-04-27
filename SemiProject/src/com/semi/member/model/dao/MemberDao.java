package com.semi.member.model.dao;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.InvalidPropertiesFormatException;
import java.util.Properties;

import com.semi.common.JDBCTemplate;
import com.semi.member.model.vo.Member;
import com.semi.member.model.vo.Payment;

public class MemberDao {
	
	private Properties prop  = new Properties();
	
	public MemberDao() {
		String filePath = MemberDao.class.getResource("/sql/member/member-mapper.xml").getPath();
		
		try {
			
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (InvalidPropertiesFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	//로그인 할 회원 정보 조회 메소드
	public Member loginMember(Connection conn, String memberId, String memberPwd) {
		//SELECT문 - ResultSet 객체 필요 - 0 또는 하나의 유저정보가 나온다면 Member 객체로 담아서 돌아가기
		Member m = null;
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("loginMember");
	
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			pstmt.setString(2, memberPwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member ( rset.getInt("MEMBER_NO")
								,rset.getInt("GRADE")
								,rset.getInt("MEMBER_ROLE")
								,rset.getString("MEMBER_ID")
								,rset.getString("MEMBER_PWD")
								,rset.getString("MEMBER_NAME")
								,rset.getString("MEMBER_BIRTH")
								,rset.getString("GENDER")
								,rset.getString("PHONE")
								,rset.getString("EMAIL")
								,rset.getString("ADDRESS")
								,rset.getInt("MEMBER_POINT")
								,rset.getDate("ENROLL_DATE")
								,rset.getDate("MODIFY_DATE")
								,rset.getInt("ATTENDANCE")
								,rset.getString("STATUS"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		
		return m;
	}

	//중복 아이디 체크 메소드
	public int checkId(Connection conn, String memberId) {
		//select문 조회지만 결과값은 count하나만 받아올것
		int idCheck = 0 ;
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("checkId");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next() || memberId.equals("")) {
				idCheck = 0;
			}else {
				idCheck = 1;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return idCheck;
	}


	public int insertMember(Connection conn, Member m) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getMemberId());
			pstmt.setString(2, m.getMemberPwd());
			pstmt.setString(3, m.getMemberName());
			pstmt.setString(4, m.getMemberBirth());
			pstmt.setString(5, m.getGender());
			pstmt.setString(6, m.getPhone());
			pstmt.setString(7, m.getEmail());
			pstmt.setString(8, m.getAddress());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		
		
		
		return result;
	}


	public String selectId(Connection conn, Member m) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
				
		String selectId="";
		String sql = prop.getProperty("selectId");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getMemberName());
			pstmt.setString(2, m.getMemberBirth());
			pstmt.setString(3, m.getPhone());
			
			
			rset = pstmt.executeQuery();
			System.out.println(rset.next());
			while(rset.next()) {
				selectId = rset.getString("MEMBER_ID");
				System.out.println(selectId);
				System.out.println(rset.getString("MEMBER_ID"));
				System.out.println(rset.getString(1));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(selectId);
		
		
		
		return selectId;
	}

/*
	public String findId(Member m) {
		String memberId = null;
		Connection conn = JDBCTemplate.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("findId");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getMemberName());
			pstmt.setString(2, m.getPhone());
			pstmt.setString(3, m.getMemberBirth());
			
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				memberId = rset.getString("MEMBER_ID");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(conn);
		}
		return memberId;
	}
*/

	public Member searchPwd(Connection conn,Member srcPwdM) {
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchPwd");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, srcPwdM.getMemberId());
			pstmt.setString(2, srcPwdM.getMemberName());
			pstmt.setString(3, srcPwdM.getMemberBirth());
			pstmt.setString(4, srcPwdM.getPhone());
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				srcPwdM.setMemberPwd(rset.getString("MEMBER_PWD"));
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return srcPwdM;
	}


	public ArrayList<Payment> selectShoppingList(Connection conn) {
		ArrayList<Payment> list = new ArrayList<>();
		ResultSet rset = null;
		Statement stmt = null;
		
		String sql = prop.getProperty("selectShoppingList");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				list.add(new Payment(rset.getInt("ORDER_NO"),
									 rset.getDate("CREATED_AT"),
									 rset.getString("MEMBER_NAME"),
									 rset.getString("PRODUCT_NAME")));
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(stmt);
		}
		
		
		return list;
	}

}
