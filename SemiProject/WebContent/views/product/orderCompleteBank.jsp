<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        *{
            margin: 0;
            padding:0;
        }
        a{
            text-decoration: none;
        }
        .title-common-frame{
            margin-top: 40px;
            margin-bottom: 50px;
            text-align: center;
        }
        
        /* 화면 전체 렙 */
        .wrapper{
            width: 100%;
        }
        
        /* content 랩 */
        .wrap{
            width : 1080px;
            margin: auto;
        }
        .content_main{
            width: 100%;
            text-align: center;
        }
        
        /* float 속성 해제 */
        .clearfix{
            clear: both;
        }

        /* 페이지 타이틀 */
        .page-title{
            margin-top: 100px;
            font-size: 25px;
            font-weight: bold;
        }
        
        /* 배송지/결제 정보 */
        .content{
            width: 70%;
            display: inline-block;
            margin: 50px;
            text-align: left;
            border: 0px solid black;
        }
        .title-area{
            font-size: larger;
            font-weight: bold;
        }
        .input-container{
            margin: 20px 0;
        }
        .title{
            width: 100px;
            border: 0px solid;
            display: inline-block;
        }
        .input-area{
            width: 600px;
            border: 0px solid;
            display: inline-block;
        }

        /* 홈버튼 */
        .home_btn{
            display: inline-block;
            font-size: 21px;
            line-height: 50px;
            width: 200px;
            height: 50px;
            background-color: #365fdd;
            color: #fff;
            font-weight: bold;
            text-decoration: none;
        }
        .home_btn:hover{
            cursor: pointer;
        }
</style>    
</head>
<body>
<%@include file = "../common/header.jsp" %>
<div class="wrapper">
    <div class="wrap">
        <div class="content_main">

            <div class="title-common-frame">
                <div class="page-title">주문완료</div>
            </div>

        <div class="content">
            <div class="title-area">배송지 정보</div>
                        
            <div class="detail-area">
                <div class="input-container">
                    <div class="title">받으시는 분</div>
                    <div class="input-area">윤재민</div>
                </div>
                
                <div class="input-container">
                    <div class="title">연락처</div>
                    <div class="input-area">010-0000-0000</div>
                </div>
                
                <div class="input-container">
                    <div class="title">주소</div>
                    <div class="input-area">서울특별시 성동구 마장동</div>
                </div>
            </div>

        </div>

        <div class="content">
            <div class="title-area">결제 정보</div>
                        
            <div class="detail-area">
                <div class="input-container">
                    <div class="title">결제방법</div>
                    <div class="input-area">무통장입금</div>
                </div>
                
                <div class="input-container">
                    <div class="title">결제금액</div>
                    <div class="input-area">50000원</div>
                </div>
                
                <div class="input-container">
                    <div class="title">입금정보</div>
                    <div class="input-area">우리은행 0000-000-000000(입금자명:ㅇㅇㅇ)</div>
                </div>
            </div>

        </div>

        <div class="content" style="text-align: center;">
            <button class="home_btn">홈으로</button>
        </div>

        </div>
    </div>
</div>
<%@include file = "../common/footer.jsp" %>
</body>
</html>