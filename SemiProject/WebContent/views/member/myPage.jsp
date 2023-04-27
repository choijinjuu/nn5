<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,com.semi.member.model.vo.Coupon"%>
<%
	ArrayList<Coupon> clist = (ArrayList<Coupon>)request.getAttribute("clist");
%>
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
            
            width: 1400px;
            margin: auto;
        }
		#content{
            width: 100%;
            margin-top: 20px;
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
	<%@ include file = "../common/myInfo.jsp" %>
	<%
		int memberNo = loginUser.getMemberNo();
		int memPoint = loginUser.getMemberPoint();
	%>
	<div class="wrap">
		<div id="content">
	            <div id="c_1">
	                <div id="c_info">
	                    <h2>My 쿠폰</h2>
	                    <input type="radio" id="available" name="tab" checked>
	                    <label for="available">사용가능</label>
	
	                    <input type="radio" id="unavailable" name="tab">
	                    <label for="unavailable">사용불가능</label>
	                    
		                <section id="available_cont">
		                        <table border="1">
		                        	<tr>
			                            <th colspan="3">쿠폰명</th>
			                            <th colspan="3">혜택</th>
			                            <th colspan="3">유효기간</th>
		                            </tr>
		                   		 <%for(Coupon c : clist){  %>	
		                   		 	<%if(c.getStatus().charAt(0)=='N') {%>			
		                            <tr>
		                                <td colspan="3"><%=c.getCouponName() %></td>
		                                <td colspan="3"><%=c.getCouponDc() %></td>
		                                <td colspan="3"><%=c.getCouponSdate() %> ~ <%=c.getCouponPeriod() %></td>
		                            </tr>
		                            <%} %>
	                    		<%}%>
		                        </table>
		                    </section>
	                    <section id="unavailable_cont">
	                        <table border="1">
	                            <tr>
	                                <th colspan="3">쿠폰명</th>
	                                <th colspan="3">혜택</th>
	                                <th colspan="3">유효기간</th>
	                            </tr>
	                             <%for(Coupon c : clist){  %>	
		                   		 	<%if(c.getStatus().charAt(0)=='Y') {%>			
		                            <tr>
		                                <td colspan="3"><%=c.getCouponName() %></td>
		                                <td colspan="3"><%=c.getCouponDc() %></td>
		                                <td colspan="3"><%=c.getCouponSdate() %> ~ <%=c.getCouponPeriod() %></td>
		                            </tr>
		                            <%} %>
	                    		<%}%>
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
                            <%if(memPoint == 0) {%>
                            	<tr>
	                                <td colspan="12">
	                                    <i class="fa-solid fa-circle-exclamation"></i>
	                                    <h4>사용 가능한 적립금이 없습니다.</h4>
	                                </td>
                            	</tr>
                            <%}else {%>
	                            <tr>
	                                <td colspan="2">2023/03/01</td>
	                                <td colspan="3">도서 3권 구매</td>
	                                <td colspan="3">2023/03/01 ~ 2023/04/01</td>
	                                <td colspan="2">30</td>
	                                <td colspan="2">1030</td>
	                            </tr>
                            <%} %>
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