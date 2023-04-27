package com.semi.board.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.semi.board.model.vo.Board;
import com.semi.common.JDBCTemplate;
import com.semi.product.model.dao.ProductDao;

public class BoardDao {
	
	private Properties prop = new Properties();
	
	public BoardDao() {
		
		String filePath = ProductDao.class.getResource("/sql/board/board-mapper.xml").getPath();
		
		try {
			
			prop.loadFromXML(new FileInputStream(filePath));
		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	//qna 작성
	public int insertQna(Connection conn, Board b) {
		
		int result = 0;
		PreparedStatement pstmt =null;
		
		String sql = prop.getProperty("insertQna");
		
		try {
			pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, b.getMemberNo());
				pstmt.setInt(2, b.getProductNo());
				pstmt.setString(3, b.getBoardTitle());
				pstmt.setString(4, b.getBoardContent());
			
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
