package com.semi.product.model.vo;

import java.sql.Date;

public class Review {

	private int reviewNo;			//	REVIEW_NO	NUMBER
	private int memberNo;			//	MEMBER_NO	NUMBER
	private int productNo;			//	PRODUCT_NO	NUMBER
	private int reviewStar;				//	REVIEW_STAR	NUMBER
	private String reviewContent;	//	REVIEW_CONTENT	VARCHAR2(600 BYTE)
	private String createDate;		//	CREATE_DATE	DATE
	private String status;			//	STATUS	CHAR(3 BYTE)
	
	//리뷰 리스트에서 불러올 아이디
	private String userId;
	
	public Review() {
		super();
	}
	public Review(int reviewStar, String reviewContent, String createDate, String userId) {
		super();
		this.reviewStar = reviewStar;
		this.reviewContent = reviewContent;
		this.createDate = createDate;
		this.userId = userId;
	}
	public Review(int memberNo, int productNo, int reviewStar, String reviewContent) {
		super();
		this.memberNo = memberNo;
		this.productNo = productNo;
		this.reviewStar = reviewStar;
		this.reviewContent = reviewContent;
	}
	public Review(int reviewNo, int memberNo, int productNo, int reviewStar, String reviewContent, String createDate,
			String status) {
		super();
		this.reviewNo = reviewNo;
		this.memberNo = memberNo;
		this.productNo = productNo;
		this.reviewStar = reviewStar;
		this.reviewContent = reviewContent;
		this.createDate = createDate;
		this.status = status;
	}
	
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
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
	public int getReviewStar() {
		return reviewStar;
	}
	public void setReviewStar(int review) {
		this.reviewStar = review;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
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
		return "Review [reviewNo=" + reviewNo + ", memberNo=" + memberNo + ", productNo=" + productNo + ", reviewStar="
				+ reviewStar + ", reviewContent=" + reviewContent + ", createDate=" + createDate + ", status=" + status
				+ "]";
	}
}
