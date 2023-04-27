package com.semi.member.model.vo;

import java.sql.Date;

public class Member {
	private int memberNo;
	private int grade;
	private int memberRole;
	private String memberId;
	private String memberPwd;
	private String memberName;
	private String memberBirth;
	private String gender;
	private String phone;
	private String email;
	private String address;
	private int memberPoint;
	private Date enrollDate;
	private Date modifyDate;
	private int attendance;
	private String status;
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
	
	public Member(String memberPwd) {
		super();
		this.memberPwd = memberPwd;
	}







	public Member(String memberName, String memberBirth, String phone) {
		super();
		this.memberName = memberName;
		this.memberBirth = memberBirth;
		this.phone = phone;
	}


	




	public Member(String memberId, String memberPwd, String memberName, String memberBirth, String phone) {
		super();
		this.memberId = memberId;
		this.memberPwd = memberPwd;
		this.memberName = memberName;
		this.memberBirth = memberBirth;
		this.phone = phone;
	}







	public Member(String memberId, String memberPwd, String memberName, String memberBirth, String gender, String phone,
			String email, String address) {
		super();
		this.memberId = memberId;
		this.memberPwd = memberPwd;
		this.memberName = memberName;
		this.memberBirth = memberBirth;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.address = address;
	}







	public Member(int memberNo, int grade, int memberRole, String memberId, String memberPwd, String memberName,
			String memberBirth, String gender, String phone, String email, String address, int memberPoint,
			Date enrollDate, Date modifyDate, int attendance, String status) {
		super();
		this.memberNo = memberNo;
		this.grade = grade;
		this.memberRole = memberRole;
		this.memberId = memberId;
		this.memberPwd = memberPwd;
		this.memberName = memberName;
		this.memberBirth = memberBirth;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.memberPoint = memberPoint;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.attendance = attendance;
		this.status = status;
	}







	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getMemberRole() {
		return memberRole;
	}
	public void setMemberRole(int memberRole) {
		this.memberRole = memberRole;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberBirth() {
		return memberBirth;
	}
	public void setMemberBirth(String memberBirth) {
		this.memberBirth = memberBirth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
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
	public int getMemberPoint() {
		return memberPoint;
	}
	public void setMemberPoint(int memberPoint) {
		this.memberPoint = memberPoint;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public Date getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}
	public int getAttendance() {
		return attendance;
	}
	public void setAttendance(int attendance) {
		this.attendance = attendance;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}







	public String getMemberPwd() {
		return memberPwd;
	}







	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}







	@Override
	public String toString() {
		return "Member [memberNo=" + memberNo + ", grade=" + grade + ", memberRole=" + memberRole + ", memberId="
				+ memberId + ", memberPwd=" + memberPwd + ", memberName=" + memberName + ", memberBirth=" + memberBirth
				+ ", gender=" + gender + ", phone=" + phone + ", email=" + email + ", address=" + address
				+ ", memberPoint=" + memberPoint + ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate
				+ ", attendance=" + attendance + ", status=" + status + "]";
	}
	
	
	
	
	
	
	
	
}
