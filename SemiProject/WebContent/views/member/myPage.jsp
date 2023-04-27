<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/7f4a340891.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
<style>
	div{
	    /* border: 1px solid black; */
	    box-sizing: border-box;
	}
	.wrap{
            height: 100%;
            width: 1400px;
            margin: auto;
        }
	#c_1{
	    width: 80%;
	    height: 1000px;
	    border-left: 1px solid lightgray;
	    float: right;
	}
	#my_info{
	    height: 200px;
	    background-color: lightgrey;
	    margin-top: 50px;
	    margin: 50px 0px 0px 30px;
	    display: flex;
	}
	#my_info p{
	    width: 100%;
	    text-align: center;
	    font-size: 15px;
	    margin: auto;
	}
	#my_benefit{
	    width: 60%;
	    height: 200px;
	    /* background-color: lightgreen; */
	    border: 5px solid lightgrey;
	    margin: 50px 30px 0px 0px;
	    float: right;
	    display : flex;
	    justify-content: center;
	    align-items : center;
	}
	
	#benefit_wrapper{
	    width: 550px;
	    margin: 0 auto;
	}
	#coupon{
	    width: 10%;
	    text-align: center;
	    float: left;
	    font-size: 50px;
	    margin: 0px 100px;
	}
	#point {
	    display: inline-block;
	    width: 10%;
	    text-align: center;
	    font-size: 50px;
	    margin: 0px 100px;
	}
	#coupon i, #point i{
	    color: steelblue;
	}
	#coupon a, #point a{
	    text-decoration: none;
	    color: tomato;
	}
	
	/*--------------마이페이지 쿠폰 상세 조회 영역-----------------*/
	#c_info{
	    margin: 50px 0px 0px 30px;
	    box-sizing: border-box;
	}
	#c_info h2{
	    margin: 0px 0px 10px 0px;
	}
	#c_info section{
	    display: none;
	    margin: 0px 30px 0px 0px;
	    padding: 20px 0 0;
	    border-top: 1px solid #b6b6b6;
	}
	
	#c_info table {
	    border-collapse: collapse;
	    border-left: 0;
	    border-right: 0;
	    width: 95%;
	    margin: auto;
	    line-height: 2;
	}
	#c_info table th, table td {
	    text-align: center;
	    border: 1px solid gray;
	}
	#c_info table th:first-child, table td:first-child {
	    border-left: 0;
	}
	#c_info table th:last-child, table td:last-child {
	    border-right: 0;
	}
	
	
	#c_info input{
	    display: none;
	}
	#c_info label{
	    display: inline-block;
	    margin: 0 0 -1px;
	    padding: 15px 25px;
	    font-weight: bold;
	    text-align: center;
	    color: #b6b6b6;
	    border: 1px solid transparent;
	}
	#c_info label:hover{
	    color: rgb(34, 93, 255);
	    cursor: pointer;
	}
	
	#c_info input:checked + label{
	    color: #555;
	    border: 1px solid #b6b6b6;
	    border-left: 5px solid lightblue;
	    border-bottom: 1px solid #ffffff;
	}
	#available:checked ~ #available_cont,
	#unavailable:checked ~ #unavailable_cont {
	    display: block;
	}
	
	/*--------------마이페이지 적립금 상세 조회 영역-----------------*/
	#p_info{
	    margin: 50px 0px 0px 30px;
	    box-sizing: border-box;
	}
	#p_info h2{
	    margin: 0px 0px 10px 0px;
	}
	
	#p_info section{
	    margin: 0px 30px 0px 0px;
	    padding: 10px;
	}
	
	#p_info table {
	    border-collapse: collapse;
	    border-left: 0;
	    border-right: 0;
	    width: 100%;
	    margin: auto;
	    line-height: 2;
	}
	#p_info table th, table td {
	    text-align: center;
	    border: 1px solid gray;
	}
	#p_info table th:first-child, table td:first-child {
	    border-left: 0;
	}
	#p_info table th:last-child, table td:last-child {
	    border-right: 0;
	}

</style>
</head>
<body>
	<%@ include file = "../common/header.jsp" %>
	<!-- 해당 페이지에 있는 변수 사용하려면 include가 더 위에 있어야한다. -->
	<%
		String userId = loginUser.getMemberId();
		String userPwd = loginUser.getMemberPwd();
		String userName = loginUser.getMemberName();
		String phone = (loginUser.getPhone() == null) ? "" : loginUser.getPhone();
		String email = (loginUser.getEmail() == null) ? "" : loginUser.getEmail();
		String address = (loginUser.getAddress() == null) ? "" : loginUser.getAddress();
		/* String interest = (loginUser.getInterest() == null) ? "" : loginUser.getInterest(); */
	//운동,게임,요리
	%>
	
	<div class="wrap">
	<div id="c_1">
	                <div id="my_benefit">
	                    <div id="benefit_wrapper">
	                        <div id="coupon">
	                            <i class="fa-solid fa-coins"></i> <br>
	                            <a href="">0</a>
	                        </div>
	                        <div id="point">
	                            <i class="fa-solid fa-ticket"></i> <br>
	                            <a href="">0</a> 
	                        </div>
	                    </div>
	                </div>
	                <div id="my_info">
	                    <p>
	                        <b>홍길동</b> 님의 <br>
							회원등급은 <b>일반회원등급</b> 입니다.
	                    </p>
	                </div>
	
	                <div id="c_info">
	                    <h2>My 쿠폰</h2>
	                    <input type="radio" id="available" name="tab" checked>
	                    <label for="available">사용가능</label>
	
	                    <input type="radio" id="unavailable" name="tab">
	                    <label for="unavailable">사용불가능</label>
	
	                    <section id="available_cont">
	                        <table border="1">
	                            <th colspan="3">쿠폰명</th>
	                            <th colspan="3">혜택</th>
	                            <th colspan="3">유효기간</th>
	                            <th colspan="2">발급일</th>
	                            <tr>
	                                <td colspan="3">신작 도서 할인</td>
	                                <td colspan="3">10%</td>
	                                <td colspan="3">2023/04/01 ~ 2023/04/10</td>
	                                <td colspan="2">2023/03/31</td>
	                            </tr>
	                            <tr>
	                                <td colspan="3">컴백 회원 도서 할인</td>
	                                <td colspan="3">5%</td>
	                                <td colspan="3">2023/02/01 ~ 2023/04/30</td>
	                                <td colspan="2">2023/02/01</td>
	                            </tr>
	                        </table>
	                    </section>
	
	                    <section id="unavailable_cont">
	                        <table border="1">
	                            <tr>
	                                <th colspan="3">쿠폰명</th>
	                                <th colspan="3">혜택</th>
	                                <th colspan="3">유효기간</th>
	                                <th colspan="2">발급일</th>
	                            </tr>
	                            <tr>
	                                <td colspan="3">신작 도서 할인</td>
	                                <td colspan="3">10%</td>
	                                <td colspan="3">2018/04/01 ~ 2018/04/10</td>
	                                <td colspan="2">2018/03/31</td>
	                            </tr>
	                            <tr>
	                                <td colspan="3">신규 회원 도서 할인</td>
	                                <td colspan="3">5%</td>
	                                <td colspan="3">2018/02/01 ~ 2018/04/30</td>
	                                <td colspan="2">2018/02/01</td>
	                            </tr>
	                        </table>
	                    </section>
	                </div>
	
	                <div id="p_info">
	                    <h2>My 적립금</h2>
	
	                    <section id="point_section">
	                        <table border="1">
	                            <th colspan="2">적립 날짜</th>
	                            <th colspan="3">내용</th>
	                            <th colspan="3">유효기간</th>
	                            <th colspan="2">적립 마일리지</th>
	                            <th colspan="2">총 마일리지</th>
	                            <tr>
	                                <td colspan="2">2023/03/01</td>
	                                <td colspan="3">도서 3권 구매</td>
	                                <td colspan="3">2023/03/01 ~ 2023/04/01</td>
	                                <td colspan="2">30</td>
	                                <td colspan="2">1030</td>
	                            </tr>
	                            <tr>
	                                <td colspan="2">2023/03/15</td>
	                                <td colspan="3">도서 1권 구매</td>
	                                <td colspan="3">2023/03/15 ~ 2023/04/15</td>
	                                <td colspan="2">10</td>
	                                <td colspan="2">1040</td>
	                            </tr>
	                        </table>
	                    </section>
	                </div>
	            </div>
	</div>
	<%@ include file = "../common/mypageCate.jsp" %>
	<!-- ../ : 상위폴더로(현재 폴더벗어나기-상위로 한번) -->
	
	<%@ include file = "../common/footer.jsp" %>
</body>
</html>