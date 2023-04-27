package com.semi.order.model.vo;

public class Order {
	private int orderNo;
	private int memberNo;
	private int productNo;
	private String productName;
	private int price;
	private int quantity;
	private String productPub;
	private String memberName;
	private String phone;
	private String email;
	private String address;
	private int point;
	
//	PRODUCT_NAME,(PRODUCT_PRICE-PRODUCT_PRICE*PRODUCT_SALES_RATE) PRICE,QUANTITY,PRODUCT_PUBLISHER,MEMBER_NAME,PHONE,EMAIL,ADDRESS
//	상품이미지 이름 판매가 수량 판매자 배송비
//	주문자 이름 번호 이메일
//	주소
	
	public Order() {
		super();
	}
	


public Order(String productName, int price, int quantity, String productPub, String memberName, String phone,
			String email, String address, int point) {
		super();
		this.productName = productName;
		this.price = price;
		this.quantity = quantity;
		this.productPub = productPub;
		this.memberName = memberName;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.point = point;
	}



public Order(int orderNo, int memberNo, int productNo, String productName, int price, int quantity, String productPub,
		String memberName, String phone, String email, String address) {
	super();
	this.orderNo = orderNo;
	this.memberNo = memberNo;
	this.productNo = productNo;
	this.productName = productName;
	this.price = price;
	this.quantity = quantity;
	this.productPub = productPub;
	this.memberName = memberName;
	this.phone = phone;
	this.email = email;
	this.address = address;
}


public Order(int orderNo, int memberNo, int productNo, String productName, int price, int quantity, String productPub,
		String memberName, String phone, String email, String address, int point) {
	super();
	this.orderNo = orderNo;
	this.memberNo = memberNo;
	this.productNo = productNo;
	this.productName = productName;
	this.price = price;
	this.quantity = quantity;
	this.productPub = productPub;
	this.memberName = memberName;
	this.phone = phone;
	this.email = email;
	this.address = address;
	this.point = point;
}



public int getOrderNo() {
	return orderNo;
}

public void setOrderNo(int orderNo) {
	this.orderNo = orderNo;
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

public String getProductName() {
	return productName;
}

public void setProductName(String productName) {
	this.productName = productName;
}

public int getPrice() {
	return price;
}

public void setPrice(int price) {
	this.price = price;
}

public int getQuantity() {
	return quantity;
}

public void setQuantity(int quantity) {
	this.quantity = quantity;
}

public String getProductPub() {
	return productPub;
}

public void setProductPub(String productPub) {
	this.productPub = productPub;
}

public String getMemberName() {
	return memberName;
}

public void setMemberName(String memberName) {
	this.memberName = memberName;
}

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

public int getPoint() {
	return point;
}

public void setPoint(int point) {
	this.point = point;
}

@Override
public String toString() {
	return "Order [orderNo=" + orderNo + ", memberNo=" + memberNo + ", productNo=" + productNo + ", productName="
			+ productName + ", price=" + price + ", quantity=" + quantity + ", productPub=" + productPub
			+ ", memberName=" + memberName + ", phone=" + phone + ", email=" + email + ", address=" + address
			+ ", point=" + point + "]";
}


	
	
}
