<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,com.semi.shoppingcart.model.vo.ShoppingCart"%>
<%
	ArrayList<ShoppingCart> scList = (ArrayList)request.getAttribute("scList");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<style>
	.basketdiv {
	    width: 1100px;
	    border-top: 1px solid #e0e0e0;
	    
	    font-size: 0.9375em;
	    margin-bottom: 20px;
	    
	}
    .basketdiv .row.head {
        border-bottom: 2px solid #888;
        box-sizing: border-box;
        background-color: #f4f4f4;
        font-weight: 500;
    }
    .basketdiv .data {
        border-bottom: 1px dashed #888;
        box-sizing: border-box;
        
        float: left;
        width: 100%;
    }
    .basketdiv .data .empty{
        text-align: center;
        padding: 12px 0;
    }
    .basketdiv .row.head .subdiv {
        background-color: #f4f4f4;
    }
    .basketdiv .row > .subdiv {
        display: block;
        float: left;
    }
    .basketdiv .row > .subdiv:nth-child(1) {
        width: 60%;
    }
    .basketdiv .row > .subdiv:nth-child(2) {
        width: 30%;
    }
    .basketdiv .row > .subdiv:nth-child(3) {
        width: 10%;
    }
    .basketdiv2 .row > .subdiv:nth-child(1) {
        width: 65%;
    }
    .basketdiv2 .row > .subdiv:nth-child(2) {
        width: 35%;
    }
    .basketdiv .row > div > div {
        display: block;
        float: left;
        text-align: center;
        margin: 0;
        padding: 12px 0;
    }
    .basketdiv .row.data > div > div {
        height: 60px;
        line-height: 60px;
    }
    .basketdiv .data .num .updown {
        color: #0075ff;
        font-size: 2em;
        letter-spacing: -5px;
    }
    .updown button{
    	font-size: 18px;
    	position: relative;
    	bottom: 10px;
    }
    .basketdiv .check {
        width: 10%;
    }
    .basketdiv .check input[type=checkbox] {
        transform: scale(1.5);
    }
    .basketdiv .img{
        width: 20%;
        position: relative;
    }
    .basketdiv .img img{
        position: absolute;
        left: 20px;
        top: 5px;
    }
    
    .basketdiv .pname{
        width: 70%;
    }
    .basketdiv2 .pname {
        width: 80%;
    }
    .basketdiv .basketprice {
        width: 33%;
    }
    .basketdiv .num {
        width: 33%;
      min-width: 105px;
    }
    .basketdiv .sum {
        width: 34%;
      max-width: 80px;
        color: #000;
    }
    .basketdiv .point {
        width: 50%;
    }
    .basketdiv2 .basketprice {
        width: 25%;
    }

    .basketdiv2 .num {
        width: 25%;
    }

    .basketdiv2 .sum {
        width: 25%;
        color: #0000aa;
    }

    .basketdiv2 .point {
        width: 25%;
    }
    .basketdiv .basketcmd{
        width: 100%;
    }
    .basketdiv .data .pname {
        text-align: left !important;
      line-height: 1.2 !important;
    }
    .basketdiv .data .price, .basketdiv .data .sum, .basketdiv .data .point {
        text-align: right;
    }
    .baseform > tbody > tr > td:first-child {
        width: 100px;
    }

	.buttongroup {
	    padding: 11px 0;
	    margin: 50px 0;
	}
	.narrowbuttongroup{
	    margin: 15px 0;
	}
    .buttongroup.center {
        text-align: center;
    }
    .buttongroup input[type=text], .buttongroup input[type=password] {
        height: 30px;
    }
    .buttongroup button, .buttongroup a {
        margin-right: 5px;
    }
       .buttongroup button:last-child, .buttongroup a:last-child {
           margin-right: 0;
       }

    .abutton, .abutton:link, .abutton:visited, .abutton:active, input[type=button] {
        background-color: #383838;
        border: 1px solid #888888;
        color: #ffffff;
        cursor: pointer;
        letter-spacing: -1px;
        padding: 3px 5px;
        margin: 2px 3px;
        width: auto;
        word-break: keep-all;
        border-radius: 5px;
        text-decoration: none;
        font-size: 0.9375em;
    }
	
	.abutton-alt {
	    background-color: #d3e2c6;
	}
	
	.red {
	    color:#b00;
	}
	.blue {
	  color: #0075ff;
	}
	.basketrowcmd, .sumcount, .summoney{
	  text-align: right;
	  margin-bottom: 10px;
	}
	.sumcount, .summoney{
	  font-size: 1.25em;
	    font-weight: bold;
	}
	.buttongroup{
	  text-align: center;
	}
	.buttongroup a{
	  text-decoration: none;
	}
	.cmd a, .cmd span {
	    padding: 12px 30px;
	    box-sizing: border-box;
	    margin-top: 10px;
	    font-size: 1.2em;
	    color: #000;
	    background-color: #f4f4f4;
	    border: 1px solid #e0e0e0;
	    text-align: center;
	}
	.cmd.small a, .cmd.small span {
	    padding: 6px 20px;
	    font-size: 0.8125em;
	}
	
	.orderform .p_num {
	    text-align: right;
	    width: 20px;
	    font-size: 16px;
	    position: relative;
	    top: -10px;
	}
</style>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="outer" style="text-align: center;">
	<div></div>
	<div class="right-align basketrowcmd" style="clear: both; width: 1200px; display: inline-block; margin-top: 30px;">
		<h2 style="text-align: left;">장바구니</h2>
	</div>
	<form name="orderform" id="orderform" method="post" class="orderform" action="/insert.sc" onsubmit="return false;">
	    <input type="hidden" name="cmd" value="order">
	    <div class="basketdiv" id="basket" style="margin: auto;">
	        <div class="row head" >
	            <div class="subdiv">
	                <div class="check" style="width: 70px;"><input type="checkbox" id="allchk" value="260" checked="" onclick="javascript:basket.checkAllItem();">&nbsp;&nbsp;<label for="allchk">전체</label></div>
	                
	                <div class="pname">상품명</div>
	            </div>
	            <div class="subdiv">
	                <div class="basketprice">가격</div>
	                <div class="num">수량</div>
	                <div class="sum">합계</div>
	            </div>
	            <div class="subdiv">
	
	                <div class="basketcmd">삭제</div>
	            </div>
	            <div class="split"></div>
	        </div>
			<%if(scList!=null && scList.isEmpty()){ %>
		        <div class="row data" style="display: flex; justify-content: center; margin: 50px 0;">
					<h3>장바구니에 상품이 없습니다.</h3>
				</div>
	        <%}else{int i = 1; %> 
	            <%for(ShoppingCart sc : scList){ %>
	            	<div class="row data">
			            <div class="subdiv">
			                <div class="check"><input type="checkbox" name="buy" checked="" onclick="javascript:basket.checkItem();">&nbsp;<input type="hidden" id="product<%=i%>" value="<%=sc.getProductNo()%>"></div>
			                <div class="img"><img src="" width="50"></div>
			                <div class="pname"><span><%=sc.getBookName() %></span></div>
			            </div>
			            <div class="subdiv">
			                <div class="basketprice"><input type="hidden" name="p_price" id="p_price1" class="p_price" value="<%=sc.getBookPrice()%>"><%=sc.getBookPrice() %>원</div>
			                <div class="num">
			                    <div class="updown">
			                    	<input type="hidden" id="productnum2" value="<%=sc.getProductNo()%>">
			                        <button class="fas fa-caret-down down" onclick="javascript:basket.changePNum(<%=i%>);"></button>
			                        <input type="text" style="height: 30px;" name="p_num<%=i%>" id="p_num<%=i%>" size="2" maxlength="4" class="p_num" value="<%=sc.getquantity() %>" onkeyup="javascript:basket.changePNum(<%=i%>);">
			                        <button class="fas fa-caret-up up" onclick="javascript:basket.changePNum(<%=i%>);"></button>
			                    </div>
			                </div>
			                <div class="sum"><%=sc.getTotalPrice() %>원</div>
			            </div>
			            <div class="subdiv">
			                <div class="basketcmd"><a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delItem();">삭제</a><input type="hidden" id="productnum3" value="<%=sc.getProductNo()%>"></div>
			            </div>
	            		<input type="hidden" id="productNo" value="<%=sc.getProductNo()%>">
	            		<input type="hidden" id="usernum" value="<%=loginUser.getMemberNo()%>">
			        </div>
			        
            	<%i++;} %>
            	    <div class="right-align basketrowcmd" style="clear: both; width: 1200px; display: inline-block; margin-top: 30px;">
			        <a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delCheckedItem();">선택상품삭제</a>
			        <a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delAllItem();">장바구니비우기</a>
				    </div>
				
				    <div class="bigtext right-align sumcount" id="sum_p_num" style="width: 1200px; display: inline-block;">상품갯수: 4개</div>
				    <div class="bigtext right-align box blue summoney" id="sum_p_price" style="width: 1200px; display: inline-block;">합계금액: 원</div>
            <%} %>
	    </div>
	
	    <div id="goorder" class="">
	        <div class="clear"></div>
	        <div class="buttongroup center-align cmd" style="clear: both; padding-top: 100px;">
	            <a href="javascript:void(0)" onclick="javascript:basket.orderChecked();">선택한 상품 주문</a>
	        </div>
	    </div>
	</form>
</div>

<script>
	let basket = {
		totalCount: 0, 
		totalPrice: 0,
	    
	    //체크한 장바구니 상품 비우기
	    delCheckedItem: function(){
	    	var productNums = [];
	    	
	        document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
	        	productNums.push(item.parentElement.parentElement.parentElement.children[3].value);	
	            item.parentElement.parentElement.parentElement.remove();
	        });
	        
        	console.log(productNums);
        	if (productNums.length != 0) {
        		delChecked();
			}else{
				alert("삭제할 상품을 선택해주세요.");
			}
	        
	        //AJAX 서버 업데이트 전송
    		function delChecked() {
				$.ajax({
					url : "<%=request.getContextPath()%>/delChecked.sc",
					traditional : true,
					data : {"productNums":productNums},
					dataType : "json",
					type : "get",
					success: function(result){
						console.log(result);
						location.replace("<%=request.getContextPath()%>/list.sc");
					},
					error : function(result){
						console.log("통신실패");
					}
				});
			}
		        
	        //전송 처리 결과가 성공이면
	        this.reCalc();
	        this.updateUI();
		    },
		    //장바구니 전체 비우기
		    delAllItem: function(){
          		if(confirm("정말로 삭제하시겠습니까?")){
		        	document.querySelectorAll('.row.data').forEach(function (item) {
               			item.remove();
                	});
  					delAll();
              	}
         		

          		//AJAX 서버 업데이트 전송
		        function delAll() {
					$.ajax({
						url : "<%=request.getContextPath()%>/delAll.sc",
						data : {usernum:$("#usernum").val()},
						type : "get",
						success: function(){
							location.replace("<%=request.getContextPath()%>/list.sc");
						},
						error : function(){
							console.log("통신실패");
						}
					});
				}
		        
		          //전송 처리 결과가 성공이면
		          this.totalCount = 0;
		          this.totalPrice = 0;
		          this.reCalc();
		          this.updateUI();
		    },
			//전체 체크하기
			checkAllItem: function(){
				var chks = document.querySelectorAll("input[name=buy]");
				var all = document.getElementById("allchk");
				
				if(all.checked == true){
					for(var i =0;i<<%=scList.size()%>;i++){
						chks[i].checked = true;
					}
				}else{
					for(var i =0;i<<%=scList.size()%>;i++){
						chks[i].checked = false;
					}
				}

				this.reCalc();
		        this.updateUI();
			},
		    //재계산
		    reCalc: function(){
		        this.totalCount = 0;
		        this.totalPrice = 0;
		        document.querySelectorAll(".p_num").forEach(function (item) {
		            if(item.parentElement.parentElement.parentElement.previousElementSibling.firstElementChild.firstElementChild.checked == true){
		                var count = parseInt(item.getAttribute('value'));
		                this.totalCount += count;
		                var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
		                this.totalPrice += count * price;
		            }
		        }, this); // forEach 2번째 파라메터로 객체를 넘겨서 this 가 객체리터럴을 가리키도록 함. - thisArg
		    },
		    //화면 업데이트
		    updateUI: function () {
		        document.querySelector('#sum_p_num').textContent = '상품갯수: ' + this.totalCount + '개';
		        document.querySelector('#sum_p_price').textContent = '합계금액: ' + this.totalPrice + '원';
		    },
		    //개별 수량 변경
		    changePNum: function (pos) {
		        var item = document.querySelector('input[name=p_num'+pos+']');
		        var p_num = parseInt(item.getAttribute('value'));
		        var newval = event.target.classList.contains('up') ? p_num+1 : event.target.classList.contains('down') ? p_num-1 : event.target.value;
		        
		        if (parseInt(newval) < 1 || parseInt(newval) > 99) { return false; }

		        item.setAttribute('value', newval);
		        item.value = newval;

		        var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
		        item.parentElement.parentElement.nextElementSibling.textContent = (newval * price)+"원";
		        //console.log($('input[name=p_num'+pos+']').parent().children("#cartId2").val());
		        updateQty();
		        
		        //AJAX 업데이트 전송
				function updateQty() {
					$.ajax({
						url : "<%=request.getContextPath()%>/updateQty.sc",
						data : {
							productNo:$('input[name=p_num'+pos+']').parent().children("#productnum2").val(),
							qty:$('input[name=p_num'+pos+']').val()
							},
						type : "post",
						success: function(){
							console.log("통신성공");
						},
						error : function(){
							console.log("통신실패");
						}
					});
				}
		        
		        //전송 처리 결과가 성공이면    
		        this.reCalc();
		        this.updateUI();
		    },
		    checkItem: function () {
		        this.reCalc();
		        this.updateUI();
		    },
		    delItem: function () {
		      	delOne();
		        event.target.parentElement.parentElement.parentElement.remove();
		      	
		        //AJAX 서버 업데이트 전송
	    		function delOne() {
					$.ajax({
						url : "<%=request.getContextPath()%>/delOne.sc",
						data : {productNum:$(event.target).parent().children("#productnum3").val()},
						type : "get",
						success: function(result){
							console.log("통신성공");
							location.replace("<%=request.getContextPath()%>/list.sc");
						},
						error : function(result){
							console.log("통신실패");
						}
					});
				}
		        
		        this.reCalc();
		        this.updateUI();
		    },
		    //주문페이지로 전송
		    orderChecked: function(){
		    	var products = [];
		        		       
		    	document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
			        	products.push(item.parentElement.parentElement.parentElement.children[3].value);
			    });
		    	
	        	if (products.length != 0) {
	        		orderChecked();
				}else{
					alert("주문하실 상품을 선택해주세요.");
				}
		        
		        //AJAX 서버 업데이트 전송
	    		function orderChecked() {
					$.ajax({
						url : "<%=request.getContextPath()%>/orderInsert.od",
						traditional : true,
						data : {"products":products,},
						dataType : "json",
						type : "post",
						success: function(result){
							console.log(result);
							location.replace("<%=request.getContextPath()%>/order.od");
						},
						error : function(result){
							console.log("통신실패");
						}
					});
				}
		        
		        //전송 처리 결과가 성공이면
		        this.reCalc();
		        this.updateUI();
		    }
		}
		basket.reCalc();
		basket.updateUI();
</script>
<%@include file = "../common/footer.jsp" %>
</body>
</html>