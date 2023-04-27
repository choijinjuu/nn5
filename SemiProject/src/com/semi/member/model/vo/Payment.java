package com.semi.member.model.vo;

import java.sql.Date;

public class Payment {
	private int paymentNumber;	//	PAYMENT_NUMBER	NUMBER
	private int orderNo;//	ORDER_NO	NUMBER
	private String productNo;//	PRODUCT_NO	NUMBER
	private String memberNo;//	MEMBER_NO	NUMBER
	private String paymentKey;//	PAYMENT_KEY	VARCHAR2(100 BYTE)
	private Date createAt;//	CREATED_AT	DATE
	private Date approvedAt;//	APPROVED_AT	DATE
	private String paymentCancel;//	PAYMENT_CANCEL_REASON	VARCHAR2(200 BYTE)
	private String receipt;//	RECEIPT	VARCHAR2(150 BYTE)
	private int payment;//	PAYMENT	NUMBER
	private String parcelNumber;//	PARCEL_NUMBER	VARCHAR2(200 BYTE)
	private String orderReauest;//	ORDER_REQUEST	VARCHAR2(600 BYTE)
	private int buyCount;
	
	public Payment() {
		super();
	}
	
	public Payment(int orderNo, Date createAt, String parcelNumber, Date approvedAt, String memberNo, String paymentKey,
					String receipt, String productNo, int buyCount, int payment) {
		super();
		this.orderNo = orderNo;
		this.productNo = productNo;
		this.memberNo = memberNo;
		this.paymentKey = paymentKey;
		this.createAt = createAt;
		this.approvedAt = approvedAt;
		this.receipt = receipt;
		this.payment = payment;
		this.parcelNumber = parcelNumber;
		this.buyCount = buyCount;
	}
	
	
	public Payment(int orderNo, Date createAt, String memberNo, String productNo) {
		this.orderNo = orderNo;
		this.createAt = createAt;
		this.memberNo = memberNo;
		this.productNo = productNo;
	}
	


	public int getBuyCount() {
		return buyCount;
	}

	public void setBuyCount(int buyCount) {
		this.buyCount = buyCount;
	}

	public int getPaymentNumber() {
		return paymentNumber;
	}

	public void setPaymentNumber(int paymentNumber) {
		this.paymentNumber = paymentNumber;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public String getProductNo() {
		return productNo;
	}

	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}

	public String getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}

	public String getPaymentKey() {
		return paymentKey;
	}

	public void setPaymentKey(String paymentKey) {
		this.paymentKey = paymentKey;
	}

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

	public Date getApprovedAt() {
		return approvedAt;
	}

	public void setApprovedAt(Date approvedAt) {
		this.approvedAt = approvedAt;
	}

	public String getPaymentCancel() {
		return paymentCancel;
	}

	public void setPaymentCancel(String paymentCancel) {
		this.paymentCancel = paymentCancel;
	}

	public String getReceipt() {
		return receipt;
	}

	public void setReceipt(String receipt) {
		this.receipt = receipt;
	}

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

	public String getParcelNumber() {
		return parcelNumber;
	}

	public void setParcelNumber(String parcelNumber) {
		this.parcelNumber = parcelNumber;
	}

	public String getOrderReauest() {
		return orderReauest;
	}

	public void setOrderReauest(String orderReauest) {
		this.orderReauest = orderReauest;
	}

	@Override
	public String toString() {
		return "Payment [paymentNumber=" + paymentNumber + ", orderNo=" + orderNo + ", productNo=" + productNo
				+ ", memberNo=" + memberNo + ", paymentKey=" + paymentKey + ", createAt=" + createAt + ", approvedAt="
				+ approvedAt + ", paymentCancel=" + paymentCancel + ", receipt=" + receipt + ", payment=" + payment
				+ ", parcelNumber=" + parcelNumber + ", orderReauest=" + orderReauest + "]";
	}
	
	
	
	
}
