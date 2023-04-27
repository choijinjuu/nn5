<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	///SemiProject 
	String contextPath1 = request.getContextPath();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
		div{
            /* border: 1px solid black; */
            box-sizing: border-box;
        }
        .wrap{
            width: 1400px;
            margin: auto;
        }
		#content{
            width: 100%;
            margin-top: 20px;
        }
        /*--------------마이페이지 사용자 프로필 영역-----------------*/
        #c_2{
            width: 20%;
            height: 300px;
            text-align: center;
            padding: 10px 0px;
            border-right: 1px solid lightgray;
        }
        #pro_img {
            margin: 0%;
        }
        #c_2 img{
            width: 130px;
            height: 130px;
            border: 1px solid white;
            border-radius: 50%;
            margin: 10px 0px 0px 0px;
        }
        #userName{
            margin: 10px 0px 0px 0px;
        }

        /*--------------마이페이지 사용자 카테고리 영역-----------------*/
        #c_3{
            width: 20%;
            height: 700px;
            border-top: 1px solid lightgray;
            padding: 10px 0px;
            border-right: 1px solid lightgray;
        }
        #my_nav {
            list-style: none;
            
        }
        #my_nav>ul{
            list-style: none;
            padding: 0%;
            margin-bottom: 15%;
        }
        #my_nav>ul li{
            padding-bottom: 5px;
        }
        #my_nav>ul a{
            text-decoration: none;
            color: black;
        }
        #my_nav a:hover{
            font-weight: bold;
            text-decoration: underline;
		}
		
</style>
</head>
<body>
	<div class="wrap">
		<div id="content">
			<div id="c_2"> <!--마이페이지 메인-->
	                <h2>마이페이지</h2>
	                <div id="pro_img">
	                    <img src="resources/profile_img.jpg">
	                </div>
	                <h3 id="userName">홍길동</h3>
	            </div>
	
	            <div id="c_3">
	                <ul id="my_nav">
	                    <li>
	                        <li><h3>쇼핑정보</h3></li>
	                        <ul>
	                            <li><a href="<%=contextPath1%>/shoppingList.me">주문목록 / 배송조회</a></li>
                            	<li><a href="<%=contextPath1%>/cancelList.me">취소 / 반품 / 교환 내역</a></li>
	                            <li><a href="">환불 / 입금 내역</a></li>
	                            <li><a href="<%=contextPath1%>/myReviewList.me">나의 쇼핑 후기</a></li>
	                        </ul>
	                    </li>
	                    <li>
	                        <li><h3>혜택관리</h3></li>
	                        <ul>
	                            <li><a href="<%=contextPath1%>/myCouponList.me">나의 쿠폰</a></li>
	                            <li><a href="<%=contextPath1%>/myPointList.me">나의 적립금</a></li>
	                        </ul>
	                   </li>
	                   <li>
	                        <li><h3>회원정보</h3></li>
	                        <ul>
	                            <li><a href="<%=contextPath1%>/chkPwd.me">회원 정보 수정</a></li>
	                        </ul>
	                   </li>
	                   <li>
	                       <li><h3>고객센터</h3></li>
	                        <ul>
	                            <li><a href="">나의 문의 내역</a></li>
	                            <li><a href="">FAQ</a></li>
	                            <li><a href="">공지사항</a></li>
	                        </ul>
	                   </li>
	                </ul>
	            </div>
		</div>
	</div>
</body>
</html>