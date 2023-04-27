<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		
		/*--------------취소교환반품 쿠폰 상세 조회 영역-----------------*/
        #cancel_info{
            margin: 50px 0px 0px 30px;
            box-sizing: border-box;
        }
        #cancel_info h2{
            margin: 0px 0px 10px 0px;
        }
        #cancel_info section{
            display: none;
            margin: 0px 30px 0px 0px;
            padding: 20px 0 0;
            border-top: 1px solid #b6b6b6;
        }

        #cancel_info table {
            border-collapse: collapse;
            border-left: 0;
            border-right: 0;
            width: 95%;
            margin: auto;
            line-height: 2;
        }
        #cancel_info table th, table td {
            text-align: center;
            border: 1px solid gray;
        }
        #cancel_info table th:first-child, table td:first-child {
            border-left: 0;
        }
        #cancel_info table th:last-child, table td:last-child {
            border-right: 0;
        }
        
        #cancel_info input{
            display: none;
        }
        #cancel_info label{
            display: inline-block;
            margin: 0 0 -1px;
            padding: 15px 25px;
            font-weight: bold;
            text-align: center;
            color: #b6b6b6;
            border: 1px solid transparent;
        }
        #cancel_info label:hover{
            color: rgb(34, 93, 255);
            cursor: pointer;
        }
        
        #cancel_info input:checked + label{
            color: #555;
            border: 1px solid #b6b6b6;
            border-left: 5px solid lightblue;
            border-bottom: 1px solid #ffffff;
        }
        #cancel:checked ~ #cancel_cont,
        #exchange:checked ~ #exchange_cont,
        #return:checked ~ #return_cont {
            display: block;
        }
		#cancel_info i{
            font-size: 25px;
        }
        #cancel_info h4{
            font-size: 15px;
            margin: 10px 0px 0px 0px;
        }
</style>
</head>
<body>
	<%@ include file = "../common/header.jsp" %>
	<%@ include file = "../common/myInfo.jsp" %>
	
	<div class="wrap">
		<div id="content">
	            <div id="c_1">
	                <div id="cancel_info">
	                    <h2>취소 / 교환 / 반품 상세 조회</h2>
	                    <input type="radio" id="cancel" name="tab" checked>
	                    <label for="cancel">취소 내역</label>
	
	                    <input type="radio" id="exchange" name="tab">
	                    <label for="exchange">교환 내역</label>
	
	                    <input type="radio" id="return" name="tab">
	                    <label for="return">반품 내역</label>
	
	                    <section id="cancel_cont">
	                        <table border="1">
	                            <!--조회결과 없을 때-->
	                            <tr>
	                                <th colspan="2">주문번호</th>
	                                <th colspan="2">주문일</th>
	                                <th colspan="3">상품명</th>
	                                <th>상품수량</th>
	                                <th colspan="2">상품금액</th>
	                                <th colspan="2">취소일</th>
	                            </tr>
	                            <tr>
	                                <td colspan="12" style="height: 200px;">
	                                    <i class="fa-solid fa-circle-exclamation"></i>
	                                    <h4>최근 3개월 내에 취소한 상품이 없습니다.</h4>
	                                </td>
	                            </tr>
	                            <!--조회결과 있을 때-->
	                            <!-- <tr>
	                                <th colspan="2">주문번호</th>
	                                <th colspan="2">주문일</th>
	                                <th colspan="3">상품명</th>
	                                <th>상품수량</th>
	                                <th colspan="2">상품금액</th>
	                                <th colspan="2">취소일</th>
	                            </tr>
	                            <tr>
	                                <td colspan="2">00000000</td>
	                                <td colspan="2">2013/04/01</td>
	                                <td colspan="3">무인도에서 살아남기</td>
	                                <td>1</td>
	                                <td colspan="2">12500</td>
	                                <td colspan="2">2023/03/31</td>
	                            </tr> -->
	                        </table>
	                    </section>
	
	                    <section id="exchange_cont">
	                        <table border="1">
	                            <!--조회결과 없을 때-->
	                            <tr>
	                                <th colspan="2">주문번호</th>
	                                <th colspan="2">주문일</th>
	                                <th colspan="3">상품명</th>
	                                <th>상품수량</th>
	                                <th colspan="2">상품금액</th>
	                                <th colspan="2">취소일</th>
	                            </tr>
	                            <tr>
	                                <td colspan="12" style="height: 200px;">
	                                    <i class="fa-solid fa-circle-exclamation"></i>
	                                    <h4>최근 3개월 내에 교환한 상품이 없습니다.</h4>
	                                </td>
	                            </tr>
	
	                            <!-- 조회 결과 있을 때 -->
	                            <!-- <tr>
	                                <th colspan="2">주문번호</th>
	                                <th colspan="2">주문일</th>
	                                <th colspan="3">교환 상품명</th>
	                                <th>교환 상품 수량</th>
	                                <th colspan="2">상품금액</th>
	                                <th colspan="2">교환 신청일</th>
	                            </tr>
	                            <tr>
	                                <td colspan="2">00000000</td>
	                                <td colspan="2">2013/04/01</td>
	                                <td colspan="3">무인도에서 살아남기</td>
	                                <td>1</td>
	                                <td colspan="2">12500</td>
	                                <td colspan="2">2023/03/31</td>
	                            </tr> -->
	                        </table>
	                    </section>
	
	                    <section id="return_cont">
	                        <table border="1">
	                            <!--조회결과 없을 때-->
	                            <!-- <tr>
	                                <th colspan="2">주문번호</th>
	                                <th colspan="2">주문일</th>
	                                <th colspan="3">상품명</th>
	                                <th>상품수량</th>
	                                <th colspan="2">상품금액</th>
	                                <th colspan="2">취소일</th>
	                            </tr>
	                            <tr>
	                                <td colspan="12" style="height: 200px;">
	                                    <i class="fa-solid fa-circle-exclamation"></i>
	                                    <h4>최근 3개월 내에 반품 신청한 상품이 없습니다.</h4>
	                                </td>
	                            </tr> -->
	
	                            <!-- 조회 결과 있을 때 -->
	                            <tr>
	                                <th colspan="2">주문번호</th>
	                                <th colspan="2">반품 신청일</th>
	                                <th colspan="3">상품명</th>
	                                <th>상품 수량</th>
	                                <th colspan="2">상품금액</th>
	                                <th colspan="2">반품 진행현황</th>
	                            </tr>
	                            <tr>
	                                <td colspan="2">00000000</td>
	                                <td colspan="2">2013/04/01</td>
	                                <td colspan="3">무인도에서 살아남기</td>
	                                <td>1</td>
	                                <td colspan="2">12500</td>
	                                <td colspan="2">반품완료</td>
	                            </tr>
	                        </table>
	                    </section>
	                </div>
	            </div>
	        </div>
		</div>
	<%@ include file = "../common/myPageCate.jsp" %>
	<%@ include file = "../common/footer.jsp" %>
</body>
</html>