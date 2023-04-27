package com.semi.shoppingcart.model.vo;

public class ShoppingCart {
	private int cartId; 	//CART_ID
	private int memberNo; 	//MEMBER_NO
	private int productNo;	//PRODUCT_NO
	private int quantity; 	//QUANTITY
	
	private String bookName;
	private int bookPrice;
	private double bookDc;
	private int bookStock;
	
	private int salePrice;
	private int totalPrice;
	
	public ShoppingCart() {
		super();
	}

	public ShoppingCart(int cartId, int productNo, int quantity, String bookName, int bookPrice, double bookDc,
			int bookStock) {
		super();
		this.cartId = cartId;
		this.productNo = productNo;
		this.quantity = quantity;
		this.bookName = bookName;
		this.bookPrice = bookPrice;
		this.bookDc = bookDc;
		this.bookStock = bookStock;
	}
	
	public ShoppingCart(int cartId, int memberNo, int productNo, int quantity) {
		super();
		this.cartId = cartId;
		this.memberNo = memberNo;
		this.productNo = productNo;
		this.quantity = quantity;
	}
	
	public ShoppingCart(int cartId, int memberNo, int productNo, int quantity, String bookName, int bookPrice,
			double bookDc, int salePrice, int totalPrice) {
		super();
		this.cartId = cartId;
		this.memberNo = memberNo;
		this.productNo = productNo;
		this.quantity = quantity;
		this.bookName = bookName;
		this.bookPrice = bookPrice;
		this.bookDc = bookDc;
		this.salePrice = salePrice;
		this.totalPrice = totalPrice;
	}
	
	public ShoppingCart(int cartId, int memberNo, int productNo, int quantity, String bookName, int bookPrice,
			double bookDc, int bookStock, int salePrice, int totalPrice) {
		super();
		this.cartId = cartId;
		this.memberNo = memberNo;
		this.productNo = productNo;
		this.quantity = quantity;
		this.bookName = bookName;
		this.bookPrice = bookPrice;
		this.bookDc = bookDc;
		this.bookStock = bookStock;
		this.salePrice = salePrice;
		this.totalPrice = totalPrice;
	}


	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
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

	public int getquantity() {
		return quantity;
	}

	public void setquantity(int quantity) {
		this.quantity = quantity;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public int getBookPrice() {
		return bookPrice;
	}

	public void setBookPrice(int bookPrice) {
		this.bookPrice = bookPrice;
	}

	public double getBookDc() {
		return bookDc;
	}

	public void setBookDc(double bookDc) {
		this.bookDc = bookDc;
	}
	
	public int getBookStock() {
		return bookStock;
	}


	public void setBookStock(int bookStock) {
		this.bookStock = bookStock;
	}


	public int getSalePrice() {
		salePrice = (int) (this.bookPrice * (1-this.bookDc/100));
		return salePrice;
	}

	public int getTotalPrice() {
		salePrice = (int) (this.bookPrice * (1-this.bookDc/100));
		totalPrice = this.salePrice*this.quantity; 
		return totalPrice;
	}
	
	//setSalePrice, setTotalPrice 대신 사용
	public void initSaleTotal() {
		this.salePrice = (int) (this.bookPrice * (1-this.bookDc));
		this.totalPrice = this.salePrice*this.quantity;
	}

	@Override
	public String toString() {
		return "ShoppingCart [cartId=" + cartId + ", memberNo=" + memberNo + ", productNo=" + productNo + ", quantity="
				+ quantity + ", bookName=" + bookName + ", bookPrice=" + bookPrice + ", bookDc=" + bookDc
				+ ", bookStock=" + bookStock + ", salePrice=" + salePrice + ", totalPrice=" + totalPrice + "]";
	}
	
}
