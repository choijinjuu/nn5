<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.semi.member.model.vo.Member"%>
<%
	Member loginMem = (Member)session.getAttribute("loginUser");
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
            height: auto;
            margin: auto;
        }
		#content{
            width: 100%;
            margin-top: 20px;
        }
		#c_1{
            width: 80%;
            height: 100%;
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
</style>
</head>
<body>
	<%
		String memberName = loginMem.getMemberName();
		int memRole = loginMem.getMemberRole();
	%>
	<div class="wrap">
		<div id="content">
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
	                        <b><%=memberName %></b> 님의 <br>
							회원등급은 <b><%=memRole %></b> 입니다.
	                    </p>
	                </div>
                </div>
			</div>
		</div>
</body>
</html>