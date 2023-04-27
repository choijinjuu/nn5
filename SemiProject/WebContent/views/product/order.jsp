<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,com.semi.order.model.vo.Order"%>
<%
	ArrayList<Order> list = (ArrayList)request.getAttribute("list");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script>
	function iamport(){
		let price = parseInt(($("#finalPrice").text()).replace(',',''));
		let name = $("#book-name").text();
		let userName = $("#input-6").val();
		let phone = $("#input-7").val();
		let email = $("#input-8").val();
		let post = $("#sample4_postcode").val();
		let address = $("#sample4_roadAddress").val();
		let count = 0;
		
		$(".book-data").each(function(index, element){
    		count += 1;
    	});
		count = count - 1;
		
		//가맹점 식별코드
		IMP.init('imp06731188');
		IMP.request_pay({
			pg : 'html5_inicis',
			pay_method : 'card',
			merchant_uid: "order_no_0001", // 상점에서 관리하는 주문 번호를 전달
			name : name+" 외 "+count+"개",
			amount : price,
			buyer_email : email,
			buyer_name : userName,
			buyer_tel : phone,
			buyer_addr : address,
			buyer_postcode : post,
			m_redirect_url : '{모바일에서 결제 완료 후 리디렉션 될 URL}' // 예: https://www.my-service.com/payments/complete/mobile
		}, function(rsp) { // callback 로직
					//* ...중략 (README 파일에서 상세 샘플코드를 확인하세요)... *//
		});
	}
</script>
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

        .input-frame{
            margin-top: 40px;
        }
        .info-layout{
        	margin-top: 40px;
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
        
        .page-title{
        	margin-top: 100px;
            font-size: 25px;
            font-weight: bold;
        }

        /* float 속성 해제 */
        .clearfix{
            clear: both;
        }

        /* 주문 종합 정보 */
        .total_info_div{
            display:inline-block;
            position:fixed;
            top:55%;
            right : 3%;
            width : 300px;
            border : 1px solid #333;
            background-color: white;
        }
        .total_info_price_div{
            width: 90%;
            margin: auto;
            position: relative;
        }
        .total_info_div ul{
            list-style: none;
        }
        .total_info_div li{
            text-align: right;
            margin-top:10px;
        }
        .price_span_label{
            float: left;
        }
        .price_total_li{
            border-top: 1px solid #ddd;
            padding-top: 20px;
        }
        .strong_red{
            color: red;
        }
        .total_price_red{
            font-size: 25px;
        }
        .total_price_label{
            margin-top: 5px;
        }
        .point_li{
            padding: 15px;
            border-top: 1px solid #ddd;
            margin: 10px -15px 0;
        }
        .total_info_btn_div{
            border-top: 1px solid #ddd;
            text-align: center;
            padding: 15px 20px;
        }
        .order_btn{
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
        .order_btn:hover{
        	cursor: pointer;
        }
        .detail-area{
        	margin-top: 15px;
        }	

        /* 상품 목록 */
        .orderGoods_div{
            margin-top:30px;
        }
        .goods_kind_div{
            font-size: 25px;
            line-height: 35px;
            font-weight: bold;
        }
        .goods_subject_table{
            font-size: 20px;
            line-height: 20px;
            width: 100%;
            font-weight: bold;
            margin-bottom: 10px; 
        }
        .goods_subject_table th{
            text-align: center;
            color: #333;
            border-bottom: 1px solid #e7e7e7;
            border-top: 2px solid #3084d9;
            background: #f4f9fd;
            padding: 2px 0;	 
        }
        .goods_table{
            font-size: 14px;
            line-height: 20px;
            width: 100%;
            border-bottom: 1px solid #e7e7e7;
        }
        .goods_table tr{
        	height: 110px;
        }
        .book-thumbnail-image{
        	display: inline-block;
        }
        .book-info{
        	display: inline-block;
        }
        .goods_table_price_td{
            text-align: center;
        }
        .book-data .sale-price,.select-amount,.shop-name,.delivery-price{
            text-align: center;
        }

        /* 사용자 정보  */
        .memberInfo_table{
            width: 100%;
            border-spacing: 0;
            border-top: 2px solid #363636;
            border-bottom: 1px solid #b6b6b6; 
        }
        .member_info_div td{
            padding : 12px;
            text-align: left;
        }
        /* 사용자 주소 정보 */
        .addressInfo_div{
            margin-top: 30px;
        }
        .addressInfo_input_div_wrap{
            border-bottom: 1px solid #f3f3f3;
            height: 225px;
        }
        .address_btn {
            background-color: #6a8fe0;
            color: white;
            float: left;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 14px 16px;
            font-size: 17px;
            width: 40%;
        }

        .address_btn:hover{
            background-color: #6a8fe0;
        }
        .addressInfo_button_div button:hover{
            background-color: #a8b6d4;
        }
        .addressInfo_button_div::after{
            content:'';
            display:block;
            clear:both;
        }
        .addressInfo_input_div{
			padding:12px;
			text-align: left;
			display: none;
			line-height: 40px;
		}
		.addressInfo_input_div th{
			border-color: transparent;
		    background-color: transparent;		
		}
		.addressInfo_input_div th{
			padding : 12px 5px 12px 20px;
			vertical-align: top;
		}
		.addressInfo_input_div td{
			padding : 8px 12px;
		}		
		.addressInfo_input_div_2 input{
		}
        .address_search_btn{
            vertical-align: middle;
            display: inline-block;
            border: 1px solid #aaa;
            width: 90px;
            text-align: center;
            height: 30px;
            line-height: 30px;
            color: #555;
            cursor: pointer;
        }
        .input-msg{
        	width: 700px;
        	height: 50px;
        }

        /* 결제 영역 */
        .payment-frame{
            margin-top: 400px;
            margin-bottom: 100px;
            
        }
        .paymentInfo_div{
            margin-top: 30px;
        }
        .paymentInfo_input_div_wrap{
            border-bottom: 1px solid #f3f3f3;
            height: 225px;
        }
        .payment_btn {
            background-color: #6a8fe0;
            color: white;
            float: left;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 14px 16px;
            font-size: 17px;
            width: 40%;
        }

        .payment_btn:hover{
            background-color: #6a8fe0;
        }
        .paymentInfo_button_div button:hover{
            background-color: #a8b6d4;
        }
        .paymentInfo_button_div::after{
            content:'';
            display:block;
            clear:both;
        }
        .paymentInfo_input_div{
			padding:12px;
			text-align: left;
			display: none;
			line-height: 40px;
		}
		.paymentInfo_input_div th{
			border-color: transparent;
		    background-color: transparent;		
		}
		.paymentInfo_input_div th{
			padding : 12px 5px 12px 20px;
			vertical-align: top;
		}
		.paymentInfo_input_div td{
			padding : 8px 12px;
		}		
		.paymentInfo_input_div_2 input{
			padding: 6px 5px;
		}
        .payment_search_btn{
            vertical-align: middle;
            display: inline-block;
            border: 1px solid #aaa;
            width: 90px;
            text-align: center;
            height: 30px;
            line-height: 30px;
            color: #555;
            cursor: pointer;
        }
    </style>
</head>
<body>
<%@include file="../common/header.jsp" %>
    <div class="wrapper">
        <div class="wrap">
            <div class="content_main">

                <div class="title-common-frame">
                    <div class="page-title">주문서 작성 / 결제</div>
                </div>
                
                <!-- 상품 정보 -->
                <div class="orderGoods_div">
                    <!-- 상품 종류 -->
                    <div class="goods_subject_table">주문상품</div>
                    <!-- 상품 목록 -->
                    <table class="goods_subject_table">
                        <colgroup>
                            <col width="45%">
                            <col width="15%">
                            <col width="10%">
                            <col width="15%">
                            <col width="15%">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>상품정보</th>
                                <th>판매가</th>
                                <th>수량</th>
                                <th>판매자</th>
                                
                            </tr>
                        </tbody>
                    </table>
                    <table class="goods_table">
                        <colgroup>
                            <col width="45%">
                            <col width="15%">
                            <col width="10%">
                            <col width="15%">
                            <col width="15%">
                        </colgroup>
                        <tbody>
                        <%for(Order o : list){ %>
                            <tr class="book-data inserted">
                                <td>
                                    <div class="book-thumbnail-image"><img src="" width="50"></div>
                                    <div class="book-info" id="book-name"><%=o.getProductName() %></div>
                                </td>
                                <td>
                                    <div class="sale-price"><span id="price"><%=o.getPrice() %></span>원</div>
                                </td>
                                <td>
                                    <div class="select-amount">
                                        <div class="count-box"><%=o.getQuantity() %></div>
                                    </div>
                                </td>
                                <td>
                                    <div class="shop-name"><%=o.getProductPub() %></div>
                                </td>
                                
                            </tr>
                            <%} %>
                        </tbody>
                    </table>
                    
                    <form action="orderPay.od" method="post" class="info-layout">
                    	<input type="hidden" name="orderNum" value="<%=list.get(0).getOrderNo()%>">
                    <%String productNo = ""; %>
                    <%for(int i=0;i<list.size();i++){ 
                    	productNo += list.get(i).getProductNo()+",";
                    }
                    productNo = productNo.replaceAll(",$", "");
                    %>
                    	<input type="hidden" name="productNum" value="<%=productNo%>">
                        <div class="title-area">주문자 정보</div>
                        
                        <div class="detail-area">
                            <div class="input-container">
                                <div class="title">주문하신 분</div>
                                <div class="input-area">
                                    <input class="" placeholder="이름을 입력해주세요." id="input-6" value="<%=loginUser.getMemberName()%>">
                                </div>
                            </div>
                            
                            <div class="input-container">
                                <div class="title">연락처</div>
                                <div class="input-area">
                                    <input placeholder="010-0000-0000" id="input-7" value="<%=loginUser.getPhone()%>">
                                </div>
                            </div>
                            
                            <div class="input-container">
                                <div class="title">이메일</div>
                                <div class="input-area">
                                    <input placeholder="aram@aram.com" id="input-8" value="<%=loginUser.getEmail()%>">
                                </div>
                            </div>
                        </div>
                    
                        <div class="input-frame">
                            <div class="title-area">배송지 정보</div>
                            <div class="addressInfo_div">
                                    <div class="title">배송지</div>
                                    <div class="addressInfo_button_div">
                                        <button type="button" class="address_btn address_btn_1" onclick="showAddress('1')" style="background-color: #365fdd;">기본 주소</button>
                                        <button type="button" class="address_btn address_btn_2" onclick="showAddress('2')">새로운 주소</button>
                                    </div>
                                    <div class="addressInfo_input_div_wrap">
                                        <div class="addressInfo_input_div addressInfo_input_div_1" style="display: block;">
                                            
                                            <div class="input-container">
                                                <div class="title">받으시는 분</div>
                                                <div class="input-area">
                                                    <input class="input-element " name="deliveryName" id="input-9" value="<%=loginUser.getMemberName()%>">
                                                </div>
                                            </div>

                                            <div class="input-container">
                                                <div class="title">연락처</div>
                                                <div class="input-area">
                                                    <input class="input-element " name="deliveryPhone" id="input-10" value="<%=loginUser.getPhone()%>">
                                                </div>
                                            </div>

                                            <div class="input-container">
                                                <div class="title">이메일</div>
                                                <div class="input-area">
                                                    <input class="input-element" name="deliveryEmail" id="input-11" value="<%=loginUser.getEmail()%>">
                                                </div>
                                            </div>

                                            <div class="input-container">
                                                <div class="title">주소</div>
                                                <div class="input-area with-right-button">
													<input type="text" id="sample4_postcode" placeholder="우편번호" disabled="disabled">
													<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
													<input type="text" id="sample4_roadAddress" placeholder="도로명주소" size="60" ><br>
													<input type="hidden" id="sample4_jibunAddress" placeholder="지번주소" size="60">
													<span id="guide" style="color:#999;display:none"></span>
													<input type="text" id="sample4_detailAddress" placeholder="상세주소" size="60"><br>
													<input type="hidden" id="sample4_extraAddress" placeholder="참고항목"  size="60">
													<input type="hidden" id="sample4_engAddress" placeholder="영문주소"  size="60" ><br>
													
                                                </div>
                                            </div>
                                            
                                            <div class="input-container">
                                                <div class="title">배송메세지</div>
                                                <div class="input-area">
                                                    <input class="input-element input-msg" name="deliveryMsg" maxlength="300" placeholder="배송메세지를 입력해주세요." id="input-12">
                                                </div>
                                            </div>

                                        </div>

                                        <div class="addressInfo_input_div addressInfo_input_div_2">
                                            
                                            <div class="input-container">
                                                <div class="title">받으시는 분</div>
                                                <div class="input-area">
                                                    <input class="input-element " name="deliveryName" placeholder="홍길동" id="input-13">
                                                </div>
                                            </div>

                                            <div class="input-container">
                                                <div class="title">연락처</div>
                                                <div class="input-area">
                                                    <input class="input-element " name="deliveryPhone" placeholder="010-0000-0000" id="input-14">
                                                </div>
                                            </div>

                                            <div class="input-container">
                                                <div class="title">이메일</div>
                                                <div class="input-area">
                                                    <input class="input-element" name="deliveryEmail" placeholder="honggildong@naver.com" id="input-15">
                                                </div>
                                            </div>

                                            <div class="input-container">
                                                <div class="title">주소</div>
                                                <div class="input-area with-right-button">
													<input type="text" id="sample5_postcode" placeholder="우편번호" disabled="disabled">
													<input type="button" onclick="sample5_execDaumPostcode()" value="우편번호 찾기"><br>
													<input type="text" id="sample5_roadAddress" placeholder="도로명주소" size="60" ><br>
													<input type="hidden" id="sample5_jibunAddress" placeholder="지번주소" size="60">
													<span id="guide" style="color:#999;display:none"></span>
													<input type="text" id="sample5_detailAddress" placeholder="상세주소" size="60"><br>
													<input type="hidden" id="sample5_extraAddress" placeholder="참고항목"  size="60">
													<input type="hidden" id="sample5_engAddress" placeholder="영문주소"  size="60" ><br>
													
                                                </div>
                                            </div>
                                            
                                            <div class="input-container">
                                                <div class="title">배송메세지</div>
                                                <div class="input-area">
                                                    <input class="input-element input-msg" name="deliveryMsg" maxlength="50" placeholder="배송메세지를 입력해주세요." id="input-16">
                                                </div>
                                            </div>

                                        </div>

                                    </div>

                                </div>

                        </div>
                    
                    <div class="payment-frame">
                        <div class="title-area">결제정보</div>
                        <div class="detail-area">
                            <div class="paymentInfo_point_div">
                                    <div class="title">포인트 사용</div>
                                    <input type="number" class="input-element" name="inputPoint" id="input-point" value="0">
                                    	보유 포인트 <span id="userPoint"><%=loginUser.getMemberPoint() %></span>원
                                </div>
                            </div>
                        <div class="detail-area">
                            <div class="paymentInfo_button_div">
                                    <div class="title">결제수단</div>
                                    <button type="button" class="payment_btn payment_btn_1" onclick="showPayment('1')" style="background-color: #365fdd;">무통장 입금</button>
                                    <button type="button" class="payment_btn payment_btn_2" onclick="showPayment('2')">신용카드</button>
                                </div>
                            </div>
                            <div class="addressInfo_input_div_wrap">
                            <div class="paymentInfo_input_div paymentInfo_input_div_1" style="display: block;">

                                <div class="title">입금자명</div>
                                <div class="input-area">
                                    <div class="form-field-flex">
                                        <input class="input-element" name="inputName" placeholder="입금자명을 입력해주세요." id="input-17">
                                        <span class="form-field-label-wrapper"></span>
                                    </div>
                                </div>
                            
                                <div class="title">입금은행</div>
                                <div class="input-area">
                                    <div class="select-value">
                                        <select name="select-bank" id="">
                                            <option value="">==선택==</option>
                                            <option value="기업은행">기업은행</option>
                                            <option value="국민은행">국민은행</option>
                                            <option value="하나은행">하나은행</option>
                                            <option value="농협은행">농협은행</option>
                                            <option value="우리은행">우리은행</option>
                                            <option value="신한은행">신한은행</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="paymentInfo_input_div paymentInfo_input_div_2">
                                
                            </div>
                          </div>
                            
                        </div>
                        <div hidden>
					        <input type="checkbox" name="selectChk" checked="checked" id="sc1" >
					        <input type="checkbox" name="selectChk" id="sc2" >
					
					        <input type="text" name="selectName" id="sn" >
					        <input type="text" name="selectPhone" id="sp">
					        <input type="text" name="selectEmail" id="se">
					        <input type="text" name="selectPost" id="spo">
					        <input type="text" name="selectRoad" id="sr" >
					        <input type="text" name="selectDetail" id="sd">
					        <input type="text" name="selectMsg" id="sm">
					        <input type="text" name="selectUsePoint" id="sup">
					        <input type="text" name="selectDepositName" id="sdn">
					        <input type="text" name="selectBankName" id="sbn">
					        <input type="text" name="deliveryCost" id="dc">
					        <input type="text" name="finalPrice" id="fp">
					    </div>
                    
                    
				<div class="paymentInfo_input_div paymentInfo_input_div_1" style="display: block;">
                                                
                <div class="total_info_div">
                    <!-- 가격 종합 정보 -->
                    <div class="total_info_price_div">
                        <ul>
                            <li>
                                <span class="price_span_label">상품 금액</span>
                                <span class="totalPrice_span"></span>원
                            </li>
                            <li>
                                <span class="price_span_label">배송비</span>
                                <span class="delivery_price_span"></span>원
                            </li>
                            <li>
                                <span class="price_span_label">할인금액</span>
                                <span class="usePoint_span">0</span>원
                            </li>
                            <li class="price_total_li">
                                <strong class="price_span_label total_price_label" >최종 결제 금액</strong>
                                <strong class="strong_red">
                                <span class="total_price_red finalTotalPrice_span" id="finalPrice"></span>원
                                </strong>
                            </li>
                            <li class="point_li">
                                <span class="price_span_label">적립예정 포인트</span>
                                <span class="totalPoint_span"></span>원
                            </li>
                        </ul>
                    </div>

                    <!-- 버튼 영역 -->
                    <div class="total_info_btn_div">
                        <button type="submit" class="order_btn" id="pay-btn1">결제하기</button>
                    </div>
                </div>
                
                </div>
                </form>
                <div class="paymentInfo_input_div paymentInfo_input_div_2" >
                <div class="total_info_div">
                    <!-- 가격 종합 정보 -->
                    <div class="total_info_price_div">
                        <ul>
                            <li>
                                <span class="price_span_label">상품 금액</span>
                                <span class="totalPrice_span"></span>원
                            </li>
                            <li>
                                <span class="price_span_label">배송비</span>
                                <span class="delivery_price_span"></span>원
                            </li>
                            <li>
                                <span class="price_span_label">할인금액</span>
                                <span class="usePoint_span">0</span>원
                            </li>
                            <li class="price_total_li">
                                <strong class="price_span_label total_price_label" >최종 결제 금액</strong>
                                <strong class="strong_red">
                                <span class="total_price_red finalTotalPrice_span" id="finalPrice"></span>원
                                </strong>
                            </li>
                            <li class="point_li">
                                <span class="price_span_label">적립예정 포인트</span>
                                <span class="totalPoint_span"></span>원
                            </li>
                        </ul>
                    </div>

                    <!-- 버튼 영역 -->
                    <div class="total_info_btn_div">
                        <button class="order_btn" id="pay-btn2" onclick="iamport()">결제하기</button>
                    </div>
                </div>
                </div>

            </div>
        </div>
    </div>
    

<script>

	$(function() {
		/* 주문 조합 정보란 최신화 */
		setTotalInfo();
		
		/* 창을 벗어날때 알림 */
	    var checkload = true;
		//결제 버튼을 누르면 알림창이 뜨지 않음
	    $(".order_btn").click(function () {
	        checkload = false;
	        console.log(checkload);
	    });
	    
    	$(window).bind("beforeunload", function (e){
	    	if (checkload == true) {
    			return "창을 닫으실래요?";
			}
    	});
	    
	});
	
	/*기본주소지 입력 */
    function selectInput1() {
        $("#sn").val($("#input-9").val());
        $("#sp").val($("#input-10").val());
        $("#se").val($("#input-11").val());
        $("#spo").val($("#sample4_postcode").val());
        $("#sr").val($("#sample4_roadAddress").val());
        $("#sd").val($("#sample4_detailAddress").val());
        $("#sm").val($("#input-12").val());
    }

	/* 새로운주소지 입력 */
    function selectInput2() {
        $("#sn").val($("#input-13").val());
        $("#sp").val($("#input-14").val());
        $("#se").val($("#input-15").val());
        $("#spo").val($("#sample5_postcode").val());
        $("#sr").val($("#sample5_roadAddress").val());
        $("#sd").val($("#sample5_detailAddress").val());
        $("#sm").val($("#input-16").val());
    }
	
	/* 결제하기전 히든인풋에 입력 확인 */
    $(function () {
    	$("#pay-btn1").click(function() {
    		let check1 = $('#sc1').is(':checked');
			if (check1) {
				selectInput1();
			}else{
				selectInput2();
			}
		});
    	$("#pay-btn2").click(function() {
    		let check1 = $('#sc1').is(':checked');
			if (check1) {
				selectInput1();
			}else{
				selectInput2();
			}
		});
    });
	    
	/*포인트 입력 / 0이상 최대포인트 이하*/
	$("#input-point").on("propertychange change keyup paste input", function(){
		const maxPoint = <%=loginUser.getMemberPoint()%>;
		let inputValue = parseInt($(this).val());
		
		if (inputValue<0) {
			$(this).val(0);
		}else if (inputValue>maxPoint) {
			$(this).val(maxPoint);
		}
		
		//주문 정보 최신화
		setTotalInfo();
	});
	
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }
                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';
                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
    
    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample5_postcode').value = data.zonecode;
                document.getElementById("sample5_roadAddress").value = roadAddr;
                document.getElementById("sample5_jibunAddress").value = data.jibunAddress;
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample5_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample5_extraAddress").value = '';
                }
                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';
                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
                
            }
        }).open();
    }

    /* 배송지 버튼 */
    function showAddress(className){
	/* 컨텐츠 동작 */
		/* 기본주소 누르면 새로운 주소 비우기 */
		if (className==1) {
			//$(".addressInfo_input_div_2 input").val('');	
		}
		/* 모두 숨기기 */
		$(".addressInfo_input_div").css('display', 'none');
		/* 컨텐츠 보이기 */
		$(".addressInfo_input_div_" + className).css('display', 'block');		
	
	/* 버튼 색상 변경 */
		/* 모든 색상 동일 */
			$(".address_btn").css('backgroundColor', '#6a8fe0');
		/* 지정 색상 변경 */
			$(".address_btn_"+className).css('backgroundColor', '#365fdd');	
    }

    /* 결제수단 버튼 */
    function showPayment(className){
	/* 컨텐츠 동작 */
		/* 모두 숨기기 */
		$(".paymentInfo_input_div").css('display', 'none');
		/* 컨텐츠 보이기 */
		$(".paymentInfo_input_div_" + className).css('display', 'block');		
	
	/* 버튼 색상 변경 */
		/* 모든 색상 동일 */
			$(".payment_btn").css('backgroundColor', '#6a8fe0');
		/* 지정 색상 변경 */
			$(".payment_btn_"+className).css('backgroundColor', '#365fdd');	
    }
    
    function setTotalInfo() {
    	let indPrice = 0;		// 개별 가격		
    	let totalPrice = 0;		// 총 가격
    	let totalCount = 0;		// 총 갯수
    	let totalKind = 0;		// 총 종류
    	let totalPoint = 0;		// 총 마일리지
    	let deliveryPrice = 0;	// 배송비
    	let usePoint = 0;		// 사용 포인트(할인가격)
    	let finalTotalPrice = 0;// 최종 가격(총 가격 + 배송비)
    	
    	$(".book-data").each(function(index, element){
    		// 총 갯수
    		totalCount += parseInt($(element).find(".count-box").text());
    		// 총 가격
    		indPrice = (parseInt($(element).find("#price").text()))*(parseInt($(element).find(".count-box").text()));
    		totalPrice += indPrice;
    		// 총 종류
    		totalKind += 1;
    		// 총 마일리지
    		totalPoint += Math.floor(indPrice*0.01);
    	});
    	
    	/* 배송비 결정 */
    	if(totalPrice >= 50000){
    		deliveryPrice = 0;
    	} else if(totalPrice == 0){
    		deliveryPrice = 0;
    	} else {
    		deliveryPrice = 3000;	
    	}
    	
    	finalTotalPrice = totalPrice + deliveryPrice;	
    	
    	/* 사용 포인트 */
    	usePoint = $("#input-point").val();
    	
    	finalTotalPrice = finalTotalPrice - usePoint;	
    	
    	/* 값 삽입 */
    	// 총 가격
    	$(".totalPrice_span").text(totalPrice.toLocaleString());
    	// 총 갯수
    	$(".goods_kind_div_count").text(totalCount);
    	// 총 종류
    	$(".goods_kind_div_kind").text(totalKind);
    	// 총 마일리지
    	$(".totalPoint_span").text(totalPoint.toLocaleString());
    	// 배송비
    	$(".delivery_price_span").text(deliveryPrice.toLocaleString());
    	$("#dc").val(deliveryPrice);
    	// 최종 가격(총 가격 + 배송비)
    	$(".finalTotalPrice_span").text(finalTotalPrice.toLocaleString());
    	$("#fp").val(finalTotalPrice);
    	// 할인가(사용 포인트)
    	$(".usePoint_span").text(usePoint.toLocaleString());
	}
    
    
    
</script>    
<%@include file = "../common/footer.jsp" %>    
</body>
</html>