package com.semi.board.model.service;

import java.sql.Connection;

import com.semi.board.model.dao.BoardDao;
import com.semi.board.model.vo.Board;
import com.semi.common.JDBCTemplate;
import com.semi.product.model.dao.ProductDao;

public class BoardService {

	public int insertQna(Board b) {
		
		//qna 작성
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new BoardDao().insertQna(conn,b);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
		
	}

}
