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
/*--------------마이페이지 리뷰 상세 조회 영역-----------------*/
        #my_review{
            margin: 50px 0px 0px 30px;
            box-sizing: border-box;
        }
        #my_review h2{
            margin: 0px 0px 10px 0px;
        }

        #my_review div{
            margin: 0px 30px 0px 0px;
            padding: 10px;
        }

        #my_review table {
            border-collapse: collapse;
            border-left: 0;
            border-right: 0;
            width: 100%;
            margin: auto;
            line-height: 2;
        }
        #my_review table th, table td {
            text-align: center;
            border: 1px solid gray;
        }
        #my_review table th:first-child, table td:first-child {
            border-left: 0;
        }
        #my_review table th:last-child, table td:last-child {
            border-right: 0;
        }
        #my_review td{
            cursor: pointer;
        }
        #non_review{
            height: 200px;
            margin: 0px 30px 0px 0px;
            padding: 10px;
            border-top: 1px solid black;
            border-bottom: 1px solid black;
            display: flex;
        }
        #non_detail{
            text-align: center;
            margin: auto;
        }        
</style>
</head>
<body>

	<%@ include file = "../common/header.jsp" %>
	<%@ include file = "../common/myInfo.jsp" %>
	<div class="wrap">
		<div id="content">
            <div id="c_1">
			
			<div id="my_coupon">
                <h2>나의 쇼핑 후기</h2>
                
                <!-- 조회 내용 없을 때 -->
                <!-- 
                <div id="non_coupon">
                    <div id="non_detail">
                        <h4>보유하고 있는 쿠폰이 없습니다.</h4>
                    </div>
                </div>
				 -->
				<!-- 조회 내용 있을 때 -->
                <div>
                    <table border="1">
                        <th colspan="2">구매 날짜</th>
                        <th colspan="3">작성일</th>
                        <th colspan="3">구매 상품</th>
                        <th colspan="2">좋아요</th>
                        <th>보기</th>
                        <tr>
                            <td colspan="2">2023/03/01</td>
                            <td colspan="3">2023/03/03</td>
                            <td colspan="3">대충 책 이름</td>
                            <td colspan="2">5</td>
                            <td>보기</td>
                        </tr>
                    </table>
                </div>
            </div>
			</div>
        </div>
	</div>
	<%@ include file = "../common/myPageCate.jsp" %>
	<%@ include file = "../common/footer.jsp" %>
</body>
</html>