<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,com.semi.member.model.vo.Coupon"%>
<%
	ArrayList<Coupon> clist = (ArrayList<Coupon>)request.getAttribute("clist");
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
	/*--------------나의 쿠폰 상세 조회 영역-----------------*/
    #my_coupon{
        margin: 50px 0px 0px 30px;
        box-sizing: border-box;
    }
    #my_coupon h2{
        margin: 0px 0px 10px 0px;
    }

    #my_coupon div{
        margin: 0px 30px 0px 0px;
        padding: 10px;
    }

    #my_coupon table {
        border-collapse: collapse;
        border-left: 0;
        border-right: 0;
        width: 100%;
        margin: auto;
        line-height: 2;
    }
    #my_coupon table th{
        background-color: lightblue;
    }
    #my_coupon table th, table td {
        text-align: center;
        border: 1px solid gray;
    }
    #my_coupon table th:first-child, table td:first-child {
        border-left: 0;
    }
    #my_coupon table th:last-child, table td:last-child {
        border-right: 0;
    }
    #my_coupon td{
        cursor: pointer;
    }
    #non_coupon{
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
			     	<h2>나의 쿠폰</h2>
				     
				     <%if(clist == null) {%>
					     <!-- 조회 내용 없을 때 -->
					     <div id="non_couopn">
					         <div id="non_detail">
					             <h4>보유하고 있는 쿠폰이 없습니다.</h4>
					         </div>
					     </div>
				      <%}else {%>
					     <!-- 조회 내용 있을 때 -->
					     <div>
					         <table border="1">
					             <th colspan="2">쿠폰번호</th>
					             <th colspan="3">쿠폰명</th>
					             <th colspan="2">할인율</th>
					             <th colspan="2">쿠폰 지급일</th>
					             <th colspan="2">쿠폰 만료일</th>
					             <th colspan="2">사용여부</th>
				             <%for(Coupon c : clist ) {%>
					             <tr>
					                 <td colspan="2"><%=c.getCouponNo() %></td>
					                 <td colspan="3"><%=c.getCouponName() %></td>
					                 <td colspan="2"><%=c.getCouponDc() %>%</td>
					                 <td colspan="2"><%=c.getCouponSdate() %></td>
					                 <td colspan="2"><%=c.getCouponPeriod() %></td>
				                 	 <td colspan="2">
						                 <%if(c.getStatus().charAt(0)=='N') {%>
						                 	미사용
					                 	<%}else{ %>
					                 		사용완료
					                 	<%} %>
				                 	</td>
					             </tr>
				             <%} %>
					         </table>
					     </div>
				     <%} %>
				 </div>	
			</div>
		</div>
	</div>
	
	 
	<%@ include file = "../common/myPageCate.jsp" %>
	<%@ include file = "../common/footer.jsp" %>
</body>
</html>