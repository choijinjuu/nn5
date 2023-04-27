<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.semi.member.model.vo.Member"%>
<%
	///SemiProject 
	String contextPath = request.getContextPath();
	
	//로그인 유저 정보 꺼내오기
	Member loginUser = (Member)session.getAttribute("loginUser");
	//로그인 되어있다면 해당 유저정보가 담긴 Member객체가 반환 
	//로그인 되어있지 않으면 null (attribute에 loginUser라는 키값에 해당하는 데이터가 없으니)
	//알림 메세지도 꺼내주기
	String alertMsg = (String)session.getAttribute("alertMsg");
%>
<!DOCTYPE html>
<html lang="en">
    <head>
    <!-- 제이쿼리 -->
    <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <style>
        html,body{
            box-sizing: border-box;
        }
        
        
        div{
            /* border: 1px solid black; */
            box-sizing: border-box;
        }
        /*----------------------------로고--------------------------*/
        #header{
            width: 1420px;
            height: 170px;
            margin: auto;
            box-sizing: border-box;
        }
        #header_1{
            width: 100%;
            height: 65%;
            position: relative;
        }
        #header_2{
            width: 100%;
            height: 35%;
            border-top-style: solid; /*메뉴바 상 선*/
            border-top-width: 1px;
            border-top-color: rgb(148, 146, 146);
            border-bottom-style: solid; /*메뉴바 하 선*/
            border-bottom-width: 1px;
            border-bottom-color: rgb(148, 146, 146);
        }
        #header_1>div{
            height: 100%;
            float: left;
        }
        #logo{
            width: 70%;
        }
        #login{
            width: 30%;
        }
        #logo_img{
            height: 65px;
            width: 230px;
            position: absolute; /*로고 이미지 중간으로 위치 잡기*/
            margin: auto;
            top: 0px;
            bottom: 0px;
            left: 550px;
        }
        /*--------------------------로그인 버튼----------------------*/
        #login>a{
            color: rgb(148, 146, 146);
            font-size: 15px;
            font-weight: 600;
            text-decoration: none;
            margin: 6px;
            position: relative;
            top: 84px;
            left: 190px;
            z-index: 1;
        }
        /*------------------------메뉴바------------------------------*/
        #header_2>div{
            height: 100%;
            float: left;
        }
        #category_all{
            width: 23%;
        }
        #category_area{
            width: 43%;
        }
        #search_form_area{
            width: 34%;
        }
        #header_2 li{
            list-style-type: none;
        }
        #header_2 a{
            text-decoration: none;
        }
        #ca_1_text{
            cursor:default;
        }
        #ca_1{ /*ul의 기본 마진,패딩 없애기*/
            margin: 0px;
            padding: 0px;
            height: 100%;
        }
        #ca_1>li{ /*li영역 먼저 잡아주기*/
            float: right;
            height: 100%;
            width: 63%;
            text-align: center;
        }
        #ca_1 a{ /*태그 크기 li에 맞춰주기*/
            display: inline-block;
            width: 100%;
            height: 100%;
            line-height: 58px;
            font-size: 18px;
            font-weight: 700;
            background-color: rgb(33, 6, 106);
            color: rgb(237, 231, 231);
        }
        #ca_1 a:hover{
            background-color: rgb(58, 40, 100);
        }
        #ca_2{
            margin: 0px;
            padding: 0px;
            height: 100%;
        }
        #ca_2>li{ /*li영역 먼저 잡아주기*/
            /* left: 2%; */
            float:left;
            height: 100%;
            width: 23%;
            text-align: center;
            position: relative; /*위치 옮기기*/
            left: 19px;
            
        }
        #ca_2 a{ /*태그 크기 li에 맞춰주기*/
            display: inline-block;
            width: 100%;
            height: 100%;
            line-height: 58px;
            font-size: 18px;
            font-weight: 700;
            /* background-color: rgb(33, 6, 106); */
            color: rgb(65, 61, 61);
        }

        #ca_2 a:hover,#all_list a:hover{
            background-color: rgb(227, 225, 230);
        }
        /*안보이게하기=====================================*/
        #customer_li,#book_li,#all_list{
       	 	background-color: rgb(255, 255, 255);
            width: 100%;
            margin: 0px;
            padding: 0px;
        }
        #customer_li a,#book_li a{
            font-size: 14px;
            color: rgb(104, 101, 101);
        }
        #all_list a{
            background-color: white;
            color: rgb(46, 43, 43);
        }
        #ca_2>li>ul,#ca_1>li>ul{/*안보이게하기 1단계*/
            display: none;
        }
        #ca_2>li>a:hover+ul,#ca_1>li>a:hover+ul{/*안보이게하기 2단계*/
            display: block;
        }
        #ca_2>li>ul:hover,#ca_1>li>ul:hover{/*안보이게하기 3단계*/
            display: block;
        }
        #book_li,#customer_li,#all_list{
            border-top-style: solid; /*메뉴바 하 선*/
            border-top-width: 1px;
            border-top-color: rgb(148, 146, 146);
        }
        #book_li li{
        	background-color: white;
        	position: relative;
            z-index: 1;
        }
        #all_list li{
        	position: relative;
        	z-index: 1;
        }
        #all_list_1 a,#customer_1 a{
            font-size: 15px;
            position: relative;
            line-height: 2;
            /* background-color: aqua; */
        }
        #all_list_1>li,#customer_1>li{
            /* border: 1px solid red; */
            padding: 0px;
            width: 100%;
            height: 30px;
            margin: 0px;
        }
        #all_list_1,#customer_1{
            padding: 0px;
            margin: 0px;
            width: 58%;
            height: 100%;
            float: right;
            text-align: left;
            /* background-color: white; */
        }
        #all_list_1 a:hover{
            background-color: white;
        }
        #customer_1 a:hover{
            background-color: white;
        }
        /*--------------------검색창--------------------------*/
        #search_form_area form{
            height: 100%;
            width: 80%;
        }
        #search_form>*{
            float: left;
        }
        #search_text{
            height: 100%;
            width: 80%;
            border: none;
            border-left-style: solid; /*검색 좌 선*/
            border-left-width: 1px;
            border-left-color: rgb(148, 146, 146);
            /*background:url(resources/돋보기.png) no-repeat center right 15px;*/
    		background-size: 20px;
    		background-color: #fff;
        }
        #search_btn{
            width: 20%;
            height: 100%;
            cursor: pointer;
            border: none;
            color: rgb(148, 146, 146);
            background-color: white;
            border-right-style: solid; /*검색 우 선*/
            border-right-width: 1px;
            border-right-color: rgb(148, 146, 146);
        }
        input:focus{ /*클릭시 테두리*/
            outline: none;
        }
        /*-----------------콘텐츠------------------------*/



        
        /*베스트-----------------------------------------------------*/
        #best>p{
            margin: 0px;
            width: 100%;
            height: 25%;
            text-align: center;
            font-weight: 800;
            font-size: 40px;
            position: relative;
            line-height: 100px;
            
        }
        #best>div{
            width: 100%;
            height: 75%;
            border-top-style: solid; /*검색 우 선*/
            border-top-width: 3px;
            border-top-color: rgb(148, 146, 146);
        }
        </style>
</head>
<body>
        <div id="header">
            <div id="header_1">
                <div id="logo">
                    <a href="<%=contextPath %>">
                        <img src="resources/사이트이름.png" alt="" id="logo_img"><!--클릭시 메인페이지-->
                    </a>
                </div>
                
                <%if(loginUser == null) {%>
                <div id="login">
                    <a href="<%=contextPath %>/logform.me" id="login_btn">로그인</a>
                    <a href="<%=contextPath %>/enrollForm.me" id="mem_btn">회원가입</a>
                </div>
             
                <%}else if(loginUser != null){ %>
                <div id="login_mem" style="background-color: blueviolet;">
                    <a href="<%=contextPath %>/myPage.me" id="login_btn">마이페이지</a>
                    <a href="<%=contextPath%>/list.sc" id="mem_btn">장바구니</a>
                    <a href="<%=contextPath %>/logout.me" id="mem_btn">로그아웃</a>
                </div>
                 <%} %>
                 <!--  <%//}else{ %>
	                <div id="login_mem">
	                    <a href="" id="login_btn">관리페이지</a>
	                    <a href="<%//=contextPath %>/logout.me" id="mem_btn">로그아웃</a>
	                </div>
               <%//} %>  -->
               
            </div>
            <div id="header_2">
                <div id="category_all">
                    <ul id="ca_1">
                    
                        <li><a id="ca_1_text">&#8801; 전체 카테고리</a>
                            <ul id="all_list">
                                <li><a href="<%=contextPath %>/book.list?currentPage=1">도서</a>
                                    <ul id="all_list_1">
                                        <li><a href="" style="float: right; width: 206px; text-align:center;">베스트 셀러</a></li>
                                        <li><a href="<%=contextPath %>/book.new?currentPage=1"" style="float: right; width: 206px; text-align:center;">신간 도서</a></li>
                                    </ul>
                                </li>
                                <li><a href="<%=contextPath%>/item.list?currentPage=1">쇼핑</a></li>
                                <li><a href="<%=contextPath %>/attendance.v"">출석체크</a></li>
                                <li><a href="">고객센터</a>
                                    <ul id="customer_1">
                                        <li><a href="" style="float: right; width: 206px; text-align:center;">공지사항</a></li>
                                        <li><a href="" style="float: right; width: 206px; text-align:center;">자주묻는 질문</a></li>
                                        <li><a href="" style="float: right; width: 206px; text-align:center;">1:1 문의</a></li>
                                        
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div id="category_area">
                    <ul id="ca_2">
                        <li id="book"><a href="<%=contextPath %>/book.list?currentPage=1">도서</a>
                            <ul id="book_li">
                                <li><a href="">베스트 도서</a></li>
                                <li><a href="<%=contextPath %>/book.new?currentPage=1"">신간 도서</a></li>
                            </ul>
                        </li>
                        <li><a href="<%=contextPath%>/item.list?currentPage=1">쇼핑</a></li>
                        <li><a href="<%=contextPath %>/attendance.v">출석체크</a></li>
                        <li id="customer"><a href="">고객센터</a>
                            <ul id="customer_li">
                                <li><a href="">공지사항</a></li>
                                <li><a href="">자주묻는 질문</a></li>
                                <li><a href="">1:1 문의</a></li>
                                
                            </ul>
                        </li>
                    </ul>
                </div>
                <div id="search_form_area">
                    <form action="test.do" id="search_form">
                        <input type="search" id="search_text" placeholder="도서, 상품 검색">
                        <button type="submit" id="search_btn">
                        <img src="resources/돋보기.png" width="20px" height="20px" alt="" style="position: relative; left: 2px; top: 4px;">
                        	검색</button> <!--검색창에 보내기-->
                    </form>

                </div>
            </div>
        </div>
</body>
</html>