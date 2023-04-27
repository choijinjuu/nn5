package com.semi.member.model.vo;

import java.sql.Date;

public class Payment {
	private int paymentNumber;	//	PAYMENT_NUMBER	NUMBER 결제번호
	private String memberNo;	//	MEMBER_NO	NUMBER 회원번호
	private Date createdAt;//	CREATED_AT	DATE 결제일시
	private int payment;	//	PAYMENT	NUMBER 결제금액
	private String orderRequest;	//	ORDER_REQUEST	VARCHAR2(600 BYTE) 요청사항
	private String bankName;	//	BANK_NAME	VARCHAR2(20 BYTE) 은행이름
	private String depositName;	//	DEPOSIT_NAME	VARCHAR2(20 BYTE) 입금자명
	private int usePoint;//	USE_POINT	NUMBER 사용한 포인트
	private String addressName;	//	ADDRESS_NAME	VARCHAR2(20 BYTE) 배송받을 사람
	private String post;	//	POST	VARCHAR2(20 BYTE) 우편번호
	private String roadAddress;	//	ROAD_ADDRESS	VARCHAR2(100 BYTE) 도로명주소
	private String detailAddress;//	DETAIL_ADDRESS	VARCHAR2(100 BYTE) 상세주소
	private String state;	//	STATE	VARCHAR2(30 BYTE) 배송상태
	private int deliveryCost;	//	DELIVERY_COST	NUMBER 배송비
	private int orderNo;	//	ORDER_NO	NUMBER	주문번호
	private String productNo;	//	PRODUCT_NO	NUMBER	상품번호
	
	public Payment() {
		super();
	}

	public Payment(int orderNo, String productNo, String depositName, int payment) {
		super();
		this.orderNo = orderNo;
		this.productNo = productNo;
		this.depositName = depositName;
		this.payment = payment;
	}
	
	public Payment(int paymentNumber, String memberNo, Date createdAt, int payment, String orderRequest,
			String bankName, String depositName, String addressName, String post, String roadAddress,
			String detailAddress, String state, int deliveryCost, int orderNo,String productNo, int usePoint) {
		super();
		this.paymentNumber = paymentNumber;
		this.memberNo = memberNo;
		this.createdAt = createdAt;
		this.payment = payment;
		this.orderRequest = orderRequest;
		this.bankName = bankName;
		this.depositName = depositName;
		this.addressName = addressName;
		this.post = post;
		this.roadAddress = roadAddress;
		this.detailAddress = detailAddress;
		this.state = state;
		this.deliveryCost = deliveryCost;
		this.orderNo = orderNo;
		this.productNo = productNo;
		this.usePoint = usePoint;
	}


	public String getProductNo() {
		return productNo;
	}

	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}

	public int getPaymentNumber() {
		return paymentNumber;
	}

	public void setPaymentNumber(int paymentNumber) {
		this.paymentNumber = paymentNumber;
	}

	public String getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

	public String getOrderRequest() {
		return orderRequest;
	}

	public void setOrderRequest(String orderRequest) {
		this.orderRequest = orderRequest;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getDepositName() {
		return depositName;
	}

	public void setDepositName(String depositName) {
		this.depositName = depositName;
	}

	public int getUsePoint() {
		return usePoint;
	}

	public void setUsePoint(int usePoint) {
		this.usePoint = usePoint;
	}

	public String getAddressName() {
		return addressName;
	}

	public void setAddressName(String addressName) {
		this.addressName = addressName;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getRoadAddress() {
		return roadAddress;
	}

	public void setRoadAddress(String roadAddress) {
		this.roadAddress = roadAddress;
	}

	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public int getDeliveryCost() {
		return deliveryCost;
	}

	public void setDeliveryCost(int deliveryCost) {
		this.deliveryCost = deliveryCost;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	@Override
	public String toString() {
		return "Payment [paymentNumber=" + paymentNumber + ", memberNo=" + memberNo + ", createdAt=" + createdAt
				+ ", payment=" + payment + ", orderRequest=" + orderRequest + ", bankName=" + bankName
				+ ", depositName=" + depositName + ", usePoint=" + usePoint + ", addressName=" + addressName + ", post="
				+ post + ", roadAddress=" + roadAddress + ", detailAddress=" + detailAddress + ", state=" + state
				+ ", deliveryCost=" + deliveryCost + ", orderNo=" + orderNo + "]";
	}

	
	
	
	
	
	
}
