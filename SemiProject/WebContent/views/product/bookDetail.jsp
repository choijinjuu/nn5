<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.semi.product.model.vo.Product"%>
<%
	Product p = (Product)request.getAttribute("product");
	Product p2 = (Product)request.getAttribute("product2");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- ajax -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <title>Document</title>
    <style>
        div{
            /* border: 1px solid black; */
            box-sizing: border-box;
        }
        /*content====================================================================================================*/
        #content{
            /* background-color: aqua; */
            width: 1200px;
            height: 1800px;
            margin: auto;
        }
        #content>*{
            margin: auto;
        }

        #con_head{
            /* background-color: antiquewhite; */
            height: 420px;
            width: 1150px;
            margin: auto;
        }
        #h_btn_1{
            background-color: rgb(91, 132, 221);
            color: white;
            font-weight: 600;
            border: 0px;
            width: 120px;
            height: 50px;
            border-radius: 5px;
            position: relative;
            left: 80px;
            margin: 11px;
        }
        #h_btn_1:hover{
            background-color: rgb(120, 151, 218);
            cursor: pointer;
        }
        #h_btn_2{
            background-color: rgb(25, 25, 121);
            color: white;
            font-weight: 600;
            border: 0px;
            width: 120px;
            height: 50px;
            border-radius: 5px;
            position: relative;
            left: 80px;
            margin: 11px;
        }
        #h_btn_2:hover{
            background-color: rgb(66, 66, 122);
            cursor: pointer;
        }

        /*상세정보 메뉴=----------------------------------------------------------------------------------------------*/
        #con_bar{
            /* background-color: aqua; */
            width: 1150;
            height: 50px;
            border-top-style: solid; /*메뉴바 하 선*/
            border-top-width: 1px;
            border-top-color: rgb(148, 146, 146);
            border-bottom-style: solid; /*메뉴바 하 선*/
            border-bottom-width: 1px;
            border-bottom-color: rgb(148, 146, 146);
        }
        #con_bar>a{
            text-align: center;
            line-height: 40px;
            display: inline-block;
            width: 24%;
            height: 48px;
            position: relative;
            left: 15px;
            text-decoration: none;
            color: rgb(112, 107, 107);
            font-size: 16px;
        }
        #con_bar>a:hover{
            font-size: 17px;
            color: rgb(39, 23, 109);
            font-weight: 600;
            background-color: rgb(243, 239, 239);
        }
        #con_detail{
            /* background-color: aqua; */
            width: 1150px;
            /* height: 500px; */
            margin: auto;
        }
        #con_detail img{
            display: block;
            margin: auto;
        }
        #con_review{
            /* background-color: blue; */
            width: 1150px;
        }
        /*--------------------------------------------------------------------------------------------------------*/
        #con_review_1{
            /* background-color: blueviolet; */
            width: 1150px;
            height: 65px;
            font-size: 20px;
            font-weight: 500;
            text-align: left;
            padding: 20px;
            border-bottom-style: solid; /*메뉴바 하 선*/
            border-bottom-width: 1px;
            border-bottom-color: rgb(17, 16, 66);
        }
        #review_t{
            /* background-color: blue; */
            width: 1150px;
        }
        #review_t>*,#review_t>*{
            text-align: center;
        }
        #con_review_3>div{
            float: left;
            height: 100px;
            height: 100%;
        }
        #con_review_p{
            width: 90%;
            /* background-color: aqua; */
            text-align: center;
        }
        #con_review_btn{
            width: 10%;
            /* background-color: brown; */
            
        }
        #R_btn,#q_btn{
            width: 100px;
            height: 50px;
            font-size: 18px;
            color: aliceblue;
            font-weight: 600;
            background-color: rgb(31, 31, 128);
            border-radius: 10px;
            position:relative;
            top: 10px;
            left: 8px;
        }
        #q_btn{
        	position: relative;
            left: 1050px;
        }
        /*상품 문의------------------------------------------------------------*/
        #con_q>*{
            margin: auto;
        }
        #con_c>*{
            margin: auto;
        }
        button{
            background-color: white;
            border: 1px solid rgb(153, 151, 151);
            border-radius: 5px;
            cursor: pointer;
        }
        
        /*리뷰... 1:1 문의 모달-------------------------------*/
        .modal-title{
        font-size: 23px;
        font-weight: 600;
      }
      #modal-body_1{
        /* background-color: aqua; */
        border: 1px solid rgb(161, 159, 159);
        margin: auto;
        width: 450px;
        height: 130px;
      }
      #modal-body_1>div{
        float: left;
      }
      #modal-body_1 img{
        width: 100px;
        height: 120px;
        /* background-color: aqua; */
      }
      .text{
        /* background-color: rgb(97, 126, 126); */
        margin: auto;
        width: 450px;
        height: 50px;
        font-size: 15px;
        font-weight: 600;
        line-height: 60px;
      }
      #subtitle_2{
        /* background-color: rgb(126, 202, 202); */
        border: 1px solid rgb(161, 159, 159);
        border-radius: 5px;
        height: 130px;
        width: 450px;
        margin: auto;
      }
      #subtitle_2 textarea{
        resize: none;
        height: 100%;
        width: 100%;
        border: none;
        border-radius: 5px;
      }
      #text_img{
        background-color: rgb(238, 238, 238);
        border-radius: 5px;
        margin: 10px;
        /* padding: 100px; */
        display: block;
      }
      
      #modal_btn{
        background-color: rgb(29, 29, 114);
        color: white;
        border-radius: 5px;
        width: 80px;
        height: 40px;
      }
      #modal_btn_no{
        background-color: rgb(255, 255, 255);
        color: rgb(17, 13, 65);
        border-color: rgb(228, 228, 228);
        border-radius: 5px;
        width: 80px;
        height: 40px;
      }
      #modal_ti{
      	 height: 100%;
      	 width: 72%;
      	 line-height: 120px;
      	 font-weight: 600;
      	 font-size: 15px;
      }
      
      /*문의작성 모달----------------------------------------------------*/
      #body_1{
        height: 45px;
        width: 450px;
      }

      #body_1>div{
        float: left;
      }
      #body_t{
        font-size: 14px;
        font-weight: 600;
        color: rgb(92, 91, 91);
        line-height: 40px;
      }
      #body_title{
        height: 100%;
        width: 100%;
        border: 1px solid rgb(187, 186, 186);
      }
      #body_2{
        height: 45px;
        width: 450px;
      }
      #body_2>div{
        float: left;
      }
      
      /*교환,환불-----------------------------------------------------------------*/
        #ch_1{
            /*background-color: aqua;*/
            height: 490px;
            width: 1150px;
        }
        #ch_1 table{
        	margin:auto;
        	position:relative;
            top: 25px;
        }

    </style>
</head>
<body>
    <%@include file = "../common/header.jsp" %>
    
    <div id="content">
        <div id="con_head">
            <table  style="position: relative; top: 40px; margin: auto; width: 1150px;">
                <tr>
                    <td rowspan="8" style="width: 420px; height: 350px; position: relative;"><img src="<%="/SemiProject"  + p.getTitleImg() %>" alt="" style="width: 320px; height: 350px; position: relative; left: 40px;"></td>
                    <td colspan="5" style="width: 730; font-weight: 900; font-size: 25px; color: rgb(41, 41, 124); border-bottom-style: solid;
                    border-bottom-width: 1px; border-bottom-color: rgb(221, 218, 218);"><%=p.getProductName() %></td>
                </tr>
                <tr>
                    <td style="height:40px; width: 100px; font-size: 15px; color: rgb(54, 53, 53);">판매가</td>
                    <td style="width: 50px; font-size: 12px; color: rgb(182, 178, 178);"><s><%=p.getProductPrice() %></s></td>
                    <td style="width: px; font-size: 18px; font-weight: 600;"><%=Math.round((1-(p.getProductSalesRate()*0.01))*p.getProductPrice()) %></td>
                    <td style="width: 10px; font-size: 14px; color: rgb(54, 53, 53); position: relative; left:-430px;">원</td>
                    <td style="width: 50px; font-size: 12px; color: rgb(82, 81, 81); position: relative; left:-440px;"><%=Math.round(((1-(p.getProductSalesRate()*0.01))*p.getProductPrice())*0.01) %>원</td>
                </tr>
                <tr>
                    <td style="font-size: 14px;">저자</td>
                    <td colspan="4"><%=p.getAuthor() %></td>
                </tr>
                <tr>
                    <td>출판사</td>
                    <td colspan="4"><%=p.getProductPublisher() %></td>
                </tr>
                <tr>
                    <td>배송비</td>
                    <td colspan="4">3000원(30000원 이상은 무료배송)</td>
                </tr>
                <tr>
                    <form action="" name="result_area">
                        <td>주문수량</td>
                        <td><button type="button" id="mi" onclick="minus()">-</button></td>
                        <td style="position: relative; left: -27px; "><input type="text" name="result" id="result" value="1" style="width: 30px;"></td>
                        <td style="position: relative; left: -495px;"><button type="button" id="pl" onclick="plus()">+</button></td>
                    </form>
                </tr>
                <tr>
                    <td>총 합계</td>
                    <td><%=Math.round((1-(p.getProductSalesRate()*0.01))*p.getProductPrice())+3000 %></td>
                    <td colspan="3">원</td>
                </tr>
                <tr>
                    <td colspan="4"><button id="h_btn_1">장바구니</button><button id="h_btn_2">바로구매</button></td>
                </tr>
            </table>
        </div>
        <div id="con_bar">
            <a href="#con_detail" >상세 정보</a>
            <a href="#con_review" >리뷰</a>
            <a href="#con_q" >상품 문의</a>
            <a href="#con_c" >교환/환불/배송</a>
        </div>
        <div id="con_detail">
        <pre>
        
        </pre>
            <div>
                <img src="<%="/SemiProject"  + p2.getTitleImg() %>" alt="" width="1000px">
            </div>
            <div>
                <pre style="width: 1000px; margin: auto; white-space: pre-wrap; word-wrap: break-word;">

<%=p.getProductText() %>


                </pre>
            </div>
        </div>
        <div id="con_review">
            <div id="con_review_1">리뷰</div>
            <div id="con_review_2">
                <table id="review_t" >
                    <tr>
                        <th id="th1">별점</th>
                        <th id="th2">상품후기</th>
                        <th id="th3">작성자</th>
                        <th id="th4">작성일자</th>
                        <th id="th5">-</th>
                    </tr>
                    <tr>
                        <td>별별별</td>
                        <td>너무 재밋어요</td>
                        <td>최진주</td>
                        <td>2023/02/02</td>
                        <td></td>
                    </tr>
                </table>
            </div>
            <div id="con_review_3">
                <div id="con_review_p"><button>1</button></div>
                <div id="con_review_btn">
                <!--모달 눌렀을때 게시판 나오게-->
					  <div class="container">
					    <!-- Button to Open the Modal -->
					    <button id="R_btn" type="button" data-toggle="modal" data-target="#myModal">
					      리뷰 작성
					    </button>
					  
					    <!-- The Modal -->
					    <form action="">
					      <div class="modal" id="myModal">
					        <div class="modal-dialog">
					          <div class="modal-content">
					            
					          <!-- Modal Header -->
					          <div class="modal-header">
					            <h4 class="modal-title">리뷰작성</h4>
					            <button type="button" class="close" data-dismiss="modal">&times;</button>
					          </div>
					          
					          <!-- Modal body -->
					          <div class="modal-body">
					            <div id="modal-body_1">
					              <div style="height: 100%; width: 28%;">
					                <img src="<%="/SemiProject"  + p.getTitleImg() %>" alt="" style="margin: 5px 11px;">
					              </div>
					              <div id="modal_ti">
					                <%=p.getProductName() %>
					              </div>
					            </div>
					            <div id="modal-body_2">
					              <div class="text">*리뷰 작성</div>
					              <div id="subtitle_2">
					                <textarea name="" id="" cols="30" rows="10" placeholder="내용을 10자 이상 입력해주세요. 주제와 무관한 댓글, 악플, 배송문의 등의 글은 임의 삭제될 수 있습니다."></textarea>
					              </div>
					            </div>
					          </div>
					          
					          <!-- Modal footer -->
					          <div class="modal-footer">
					            <button type="submit" id="modal_btn" class="btn btn-blue" data-dismiss="modal">등록</button>
					          </div>
					          
					        </div>
					      </div>
					    </form>
	                	</div>
                </div>
            </div>
        </div>
<pre>






</pre>

        <div id="con_q">
            <div id="con_review_1">1:1 문의</div>
            <div id="con_review_2">
                <table id="review_t" >
                    <tr>
                        <th id="th1">별점</th>
                        <th id="th2">상품후기</th>
                        <th id="th3">작성자</th>
                        <th id="th4">작성일자</th>
                        <th id="th5">-</th>
                    </tr>
                    <tr>
                        <td>별별별</td>
                        <td>너무 재밋어요</td>
                        <td>최진주</td>
                        <td>2023/02/02</td>
                        <td></td>
                    </tr>
                </table>
            </div>
            <div id="con_review_3">
                <div id="con_review_p"><button>1</button></div>
                <div id="con_q_btn">
                	  <!--모달 눌렀을때 게시판 나오게-->
						  <div class="container">
						    <button id="q_btn" type="button" data-toggle="modal" data-target="#myModal2">
						      상담 문의
						    </button>
						  
						    <!-- The Modal -->
						      <div class="modal" id="myModal2">
						        <div class="modal-dialog">
						          <div class="modal-content">
						            
						          <!-- Modal Header -->
						          <div class="modal-header">
						            <h4 class="modal-title">1:1 상담문의</h4>
						            <button type="button" class="close" data-dismiss="modal">&times;</button>
						          </div>
						          
						          <!-- Modal body -->
						          <div class="modal-body">
						            <div id="body_1">
						              <div id="body_t" style=" width: 20%; height: 100%;">문의 제목</div>
						              <div style="background-color: blue; width: 80%; height: 100%;"><input id="body_title" type="text"></div>
						            </div>
						            <pre></pre>
						            <div id="body_2">
						              <div id="body_t" style=" width: 20%; height: 100%;">문의 내용</div>
						              <div style="background-color: blue; width: 80%; height: 200px;"><textarea name="" id="" cols="30" rows="10" style="resize: none; width: 100%; height: 100%; border-color: rgb(196, 195, 195);"></textarea></div>
						            </div>
						          </div>
						          
						          <!-- Modal footer -->
						          <div class="modal-footer">
						            <button type="reset" id="modal_btn_no" data-dismiss="modal">취소</button>
						            <button type="submit" id="modal_btn" data-dismiss="modal">등록</button>
						          </div>
						          
						        </div>
						      </div>
						    </div>
						   </div> 
                
                </div>
            </div>
        </div>
<pre>






</pre>
        <div id="con_c">
            <div id="con_review_1">교환/반품/품절 안내</div>
            <div id="ch_1">
                <table id="change">
                    <tr>
                        <th>
                            반품/교환 방법
                        </th>
                        <td>
                            마이페이지 > 주문배송조회 > 반품/교환신청 ,<br>
                            고객센터 > 1:1문의를 통해 반품 > 교환신청
                        </td>
                    </tr>
                    <tr>
                        <th>반품/교환가능 기간</th>
                        <td>
                            변심반품의 경우 수령 후 7일 이내, 상품의 결함 및 계약내용과 다를 경우 문제점 발견 후 30일 이내
                        </td>
                    </tr>
                    <tr>
                        <th>
                            반품/교환비용
                        </th>
                        <td>
                            변심 혹은 구매착오로 인한 반품/교환은 반송료 고객 부담
                        </td>
                    </tr>
                    <tr>
                        <th>
                            반품/교환 불가 사유
                        </th>
                        <td>
                            소비자의 책임 있는 사유로 상품 등이 손실 또는 훼손된 경우 (단지 확인을 위한 포장 훼손은 제외)<br>
                            <br>
                            소비자의 사용, 포장 개봉에 의해 상품 등의 가치가 현저히 감소한 경우<br>
                            예) 화장품, 식품, 가전제품(악세서리 포함) 등<br>
                            <br>
                            복제가 가능한 상품 등의 포장을 훼손한 경우<br>
                            예) 음반/DVD/비디오, 소프트웨어, 만화책, 잡지, 영상 화보집<br>
                            <br>
                            시간의 경과에 의해 재판매가 곤란한 정도로 가치가 현저히 감소한 경우<br>
                            <br>
                            전자상거래 등에서의 소비자보호에 관한 법률이 정하는 소비자 청약철회 제한 내용에 해당되는 경우
                        </td>
                    </tr>
                    <tr>
                        <th>
                            상품 품절
                        </th>
                        <td>
                            공급사(출판사) 재고 사정에 의해 품절/지연될 수 있으며, 품절 시 관련 사항에 대해서는 이메일과 문자로 안내드리겠습니다.
                        </td>
                    </tr>
                    <tr>
                        <th>
                            소비자 피해보상<br>
                            환불지연에 따른 배상
                        </th>
                        <td>
                            상품의 불량에 의한 교환, A/S, 환불, 품질보증 및 피해보상 등에 관한 사항은 소비자분쟁해결 기준 (공정거래위원회 고시)에 준하여 처리됨<br>
                            대금 환불 및 환불지연에 따른 배상금 지급 조건, 절차 등은 전자상거래 등에서의 소비자 보호에 관한 법률에 따라 처리함<br>
                        </td>
                    </tr>
                </table>
            </div>
            
        </div>
    </div>

    <script>
        //수량 -
        function minus(){
            //요소 잡기
            var result = document.getElementById("result").value;
            console.log(result);

            //클릭시 -1진행
            var result2 = parseInt(result)-1;
            console.log(result2);

            //값 변경
            var num = document.forms['result_area']['result'];
            num.setAttribute('value',result2);
            
            console.log(parseInt(result));
            if(parseInt(result)==2){
                $("#mi").attr("disabled",true);
            }else if(parseInt(result)==1){
                $("#mi").attr("disabled",true);
            }
        }

        //수량+
        function plus(){
            //요소 잡기
            var result = document.getElementById("result").value;
            console.log(result);

            //클릭시 -1진행
            var result2 = parseInt(result)+1;
            console.log(result2);

            //값 변경
            var num = document.forms['result_area']['result'];
            num.setAttribute('value',result2);
            
            console.log(parseInt(result));
            if(parseInt(result)==1){
                $("#mi").attr("disabled",false);
            }
        }

    </script>
    
    <%@include file = "../common/footer.jsp" %>
</body>
</html>