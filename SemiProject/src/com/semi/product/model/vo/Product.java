package com.semi.product.model.vo;

import java.sql.Connection;
import java.sql.Date;

public class Product {
	
	private int productNo;				//	PRODUCT_NO	NUMBER
	private String productCategory;		//	PRODUCT_CATEGORY	VARCHAR2(30 BYTE)
	private String productName;			//	PRODUCT_NAME	VARCHAR2(100 BYTE)
	private String productPublisher;	//	PRODUCT_PUBLISHER	VARCHAR2(50 BYTE)
	private String productText;			//	PRODUCT_TEXT	VARCHAR2(4000 BYTE)
	private int productPrice;			//	PRODUCT_PRICE	NUMBER
	private int productSalesRate;		//	PRODUCT_SALES_RATE	NUMBER
	private int productStock;			//	PRODUCT_STOCK	NUMBER
	private String author;				//	AUTHOR	VARCHAR2(30 BYTE)
	private Date createDate;			//	CREATE_DATE	DATE
	private String status;				//	STATUS	CHAR(2 BYTE)
	
	//썸네일 이미지 (경로+파일명)담을 필드 생성
	private String titleImg;

	public Product() {
		super();
	}
	public Product(String titleImg) {
		super();
		this.titleImg = titleImg;
	}
	//메인페이지 도서 쇼핑 리스트
	public Product(int productNo, String productName, String productPublisher, int productPrice, int productSalesRate,
			String titleImg) {
		super();
		this.productNo = productNo;
		this.productName = productName;
		this.productPublisher = productPublisher;
		this.productPrice = productPrice;
		this.productSalesRate = productSalesRate;
		this.titleImg = titleImg;
	}
	public Product(int productNo, String productName, String productPublisher, String productText, int productPrice,
			int productSalesRate, String author,String titleImg) {
		super();
		this.productNo = productNo;
		this.productName = productName;
		this.productPublisher = productPublisher;
		this.productText = productText;
		this.productPrice = productPrice;
		this.productSalesRate = productSalesRate;
		this.author = author;
		this.titleImg = titleImg;
	}
	public Product(int productNo, String productName, String productPublisher, String productText, int productPrice,
			int productSalesRate, Date createDate, String titleImg) {
		super();
		this.productNo = productNo;
		this.productName = productName;
		this.productPublisher = productPublisher;
		this.productText = productText;
		this.productPrice = productPrice;
		this.productSalesRate = productSalesRate;
		this.createDate = createDate;
		this.titleImg = titleImg;
	}
	public Product(int productNo, String productCategory, String productName, String productPublisher,
			String productText, int productPrice, int productSalesRate, String author,
			Date createDate, String titleImg) {
		super();
		this.productNo = productNo;
		this.productCategory = productCategory;
		this.productName = productName;
		this.productPublisher = productPublisher;
		this.productText = productText;
		this.productPrice = productPrice;
		this.productSalesRate = productSalesRate;
		this.author = author;
		this.createDate = createDate;
		this.titleImg = titleImg;
	}

	public Product(int productNo, String productCategory, String productName, String productPublisher,
			String productText, int productPrice, int productSalesRate, int productStock, String author,
			Date createDate, String status) {
		super();
		this.productNo = productNo;
		this.productCategory = productCategory;
		this.productName = productName;
		this.productPublisher = productPublisher;
		this.productText = productText;
		this.productPrice = productPrice;
		this.productSalesRate = productSalesRate;
		this.productStock = productStock;
		this.author = author;
		this.createDate = createDate;
		this.status = status;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public String getProductCategory() {
		return productCategory;
	}

	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductPublisher() {
		return productPublisher;
	}

	public void setProductPublisher(String productPublisher) {
		this.productPublisher = productPublisher;
	}

	public String getProductText() {
		return productText;
	}

	public void setProductText(String productText) {
		this.productText = productText;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public int getProductSalesRate() {
		return productSalesRate;
	}

	public void setProductSalesRate(int productSalesRate) {
		this.productSalesRate = productSalesRate;
	}

	public int getProductStock() {
		return productStock;
	}

	public void setProductStock(int productStock) {
		this.productStock = productStock;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
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

	public String getTitleImg() {
		return titleImg;
	}

	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
	}

	@Override
	public String toString() {
		return "Product [productNo=" + productNo + ", productCategory=" + productCategory + ", productName="
				+ productName + ", productPublisher=" + productPublisher + ", productText=" + productText
				+ ", productPrice=" + productPrice + ", productSalesRate=" + productSalesRate + ", productStock="
				+ productStock + ", author=" + author + ", status=" + status + ", titleImg=" + titleImg + "]";
	}
}
