package com.semi.board.model.vo;

import java.sql.Date;

public class Board {
	
	private	int	boardNo;			//	BOARD_NO	NUMBER
	private	int	memberNo;			//	MEMBER_NO	NUMBER
	private	int productNo;			//	PRODUCT_NO	NUMBER
	private	int	boardCategory;		//	BOARD_CATEGORY	NUMBER
	private String boardTitle;		//	BOARD_TITLE	VARCHAR2(100 BYTE)
	private String boardContent;	//	BOARD_CONTENT	VARCHAR2(1000 BYTE)
	private String boardAnswered;	//	BOARD_ANSWERED	CHAR(3 BYTE)
	private	int	boardCount;			//	BOARD_COUNT	NUMBER
	private Date createDate;		//	CREATE_DATE	DATE
	private String status;			//	STATUS	CHAR(3 BYTE)
	
	public Board() {
		super();
	}
	public Board(int boardNo, int memberNo, int productNo, int boardCategory, String boardTitle, String boardContent,
			String boardAnswered, int boardCount, Date createDate, String status) {
		super();
		this.boardNo = boardNo;
		this.memberNo = memberNo;
		this.productNo = productNo;
		this.boardCategory = boardCategory;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardAnswered = boardAnswered;
		this.boardCount = boardCount;
		this.createDate = createDate;
		this.status = status;
	}
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public int getBoardCategory() {
		return boardCategory;
	}
	public void setBoardCategory(int boardCategory) {
		this.boardCategory = boardCategory;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardAnswered() {
		return boardAnswered;
	}
	public void setBoardAnswered(String boardAnswered) {
		this.boardAnswered = boardAnswered;
	}
	public int getBoardCount() {
		return boardCount;
	}
	public void setBoardCount(int boardCount) {
		this.boardCount = boardCount;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", memberNo=" + memberNo + ", productNo=" + productNo + ", boardCategory="
				+ boardCategory + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent + ", boardAnswered="
				+ boardAnswered + ", boardCount=" + boardCount + ", createDate=" + createDate + ", status=" + status
				+ "]";
	}
}
