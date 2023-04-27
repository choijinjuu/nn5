package com.semi.product.model.vo;

import java.sql.Date;

public class Attachment {
	
	private int attachmentId;		//	ATTACHMENT_ID	NUMBER
	private int boardNo;			//	BOARD_NO	NUMBER
	private String attachmentName;	//	ATTACHMENT_NAME	VARCHAR2(50 BYTE)
	private String attachmentChange;
	private String attachmentPath;	//	ATTACHMENT_PATH	VARCHAR2(100 BYTE)
	private Date updateDate;		//	UPDATE_DATE	DATE
	private int fileLevel;
	
	public Attachment() {
		super();
	}
	public Attachment(int attachmentId, int boardNo, String attachmentName, String attachmentPath, String attachmentChange,
			Date updateDate) {
		super();
		this.attachmentId = attachmentId;
		this.boardNo = boardNo;
		this.attachmentName = attachmentName;
		this.attachmentChange = attachmentChange;
		this.attachmentPath = attachmentPath;
		this.updateDate = updateDate;
	}
	public Attachment(int attachmentId, int boardNo, String attachmentName, String attachmentChange,
			String attachmentPath, Date updateDate, int fileLevel) {
		super();
		this.attachmentId = attachmentId;
		this.boardNo = boardNo;
		this.attachmentName = attachmentName;
		this.attachmentChange = attachmentChange;
		this.attachmentPath = attachmentPath;
		this.updateDate = updateDate;
		this.fileLevel = fileLevel;
	}
	public int getAttachmentId() {
		return attachmentId;
	}
	public void setAttachmentId(int attachmentId) {
		this.attachmentId = attachmentId;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getAttachmentName() {
		return attachmentName;
	}
	public void setAttachmentName(String attachmentName) {
		this.attachmentName = attachmentName;
	}
	public String getAttachmentPath() {
		return attachmentPath;
	}
	public void setAttachmentPath(String attachmentPath) {
		this.attachmentPath = attachmentPath;
	}
	public String getAttachmentChange() {
		return attachmentChange;
	}
	public void setAttachmentChange(String attachmentChange) {
		this.attachmentChange = attachmentChange;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public int getFileLivel() {
		return fileLevel;
	}
	public void setFileLivel(int fileLivel) {
		this.fileLevel = fileLivel;
	}
	
	@Override
	public String toString() {
		return "Attachment [attachmentId=" + attachmentId + ", boardNo=" + boardNo + ", attachmentName="
				+ attachmentName + ", attachmentPath=" + attachmentPath + ", attachmentSize=" + attachmentChange
				+ ", updateDate=" + updateDate + "]";
	}
}
