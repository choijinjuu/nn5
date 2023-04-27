package com.semi.member.model.vo;

import java.sql.Date;

public class Coupon {
	private int couponNo;	//	COUPON_NO	NUMBER
	private String memberNo;	//	MEMBER_NO	NUMBER
	private String couponName;	//	COUPON_NAME	VARCHAR2(30 BYTE)
	private int couponDc;	//	COUPON_DC	NUMBER
	private Date couponPeriod;	//	COUPON_PERIOD	DATE
	private Date couponSdate;	//	COUPON_SDATE	DATE
	private String status;	//	STATUS	CHAR(2 BYTE)
	
	public Coupon() {
		super();
	}
	

	public Coupon(int couponNo, String memberNo, String couponName, int couponDc, Date couponPeriod, Date couponSdate,
			String status) {
		super();
		this.couponNo = couponNo;
		this.memberNo = memberNo;
		this.couponName = couponName;
		this.couponDc = couponDc;
		this.couponPeriod = couponPeriod;
		this.couponSdate = couponSdate;
		this.status = status;
	}

	public int getCouponNo() {
		return couponNo;
	}

	public void setCouponNo(int couponNo) {
		this.couponNo = couponNo;
	}

	public String getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}

	public String getCouponName() {
		return couponName;
	}

	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}

	public int getCouponDc() {
		return couponDc;
	}

	public void setCouponDc(int couponDc) {
		this.couponDc = couponDc;
	}

	public Date getCouponPeriod() {
		return couponPeriod;
	}

	public void setCouponPeriod(Date couponPeriod) {
		this.couponPeriod = couponPeriod;
	}

	public Date getCouponSdate() {
		return couponSdate;
	}

	public void setCouponSdate(Date couponSdate) {
		this.couponSdate = couponSdate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Coupon [couponNo=" + couponNo + ", memberNo=" + memberNo + ", couponName=" + couponName + ", couponDc="
				+ couponDc + ", couponPeriod=" + couponPeriod + ", couponSdate=" + couponSdate + ", status=" + status
				+ "]";
	}
	
	
}
