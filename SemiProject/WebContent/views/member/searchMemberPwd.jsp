<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import ="com.semi.member.model.vo.Member"%>
<%
	/* //contextRoot 가져오기	
	String contextPath = request.getContextPath();
	
	//로그인 유저 정보 꺼내오기
	Member loginUser = (Member)session.getAttribute("loginUser");
	//로그인 되어있지 않으면 null(attribute에 loginUser라는 키값에 해당하는 데이터가 없으니까) 
	//로그인이 되어있다면 해당 유저정보가 담긴 Member객체가 반환 
	
	//알림 메세지도 꺼내주기
	String alertMsg = (String)session.getAttribute("alertMsg");
	
	Member pwdM = (Member)request.getAttribute("member");
 */
	
%>

<!DOCTYPE html>
<html lang="en">
<head>




	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- jQuery library -->
    <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');
    *{
        /* width: 100vw; */
        /* overflow: hidden; */
        box-sizing: border-box;
        /* outline: none; */
        /* border: 1px solid black; */
      /*   overflow:auto; */
      font-size : 13px;
      font-weight : 200px;
        
    }

    *:focus{
        outline: 2px solid  rgb(11, 95, 221);
    }

    body,html{
        /* font-family: 'Noto Sans KR',sans-serif; */
        font-size: 13px;
        background-color: #fff;
        line-height: 1.5em;
        color: #222;
       
       
      
    
    }
    a{
        text-decoration: none;
        color: #222;
    }
    .outer{
        width: 1400px;
        border: 3px solid darkgray;
        margin: auto;
        padding: 0 20px;
        /* margin-bottom: 20px; */
        height: 95%;
        margin-top: 20px;
    }

    .outer .logo{
        /*로고는 이미지라 인라인 블록이니까 마진 오토 안됨 블록요소만 됨 */
        display: block;
        margin :50px auto;
        cursor: pointer;
        margin-bottom: 5px;
        margin-top: 12px;
    }

    .loginBox{
        padding-top: 13px;
        padding-bottom: 8px;
        width: 700px;
        margin: auto;
        border: 3px solid #2c7dc9;
        border-radius: 50px;
        display: flex;
        flex-direction: column;   
        align-items: center;
        font-size : 15px;
        font-weight : 300px;
        /* justify-content: center; */
        
        
        /* vertical-align: top; */
    }
    .foot{
        /* padding: 50px; */
        margin: auto;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding-top: 0px;
        margin-bottom: 0px;
    }

   button{
        /* margin: auto; */
        /* flex: 1; */
        padding: 20px;
        margin-bottom: 16px;
        width: 500px;
       /*  font-size: x-large; */
    }
    .loginBox>input{
        width: 500px;
        padding: 15px;
        margin-bottom: 16px;
        margin-top: 0;
        border-radius:50px;
    }

    #sea{
    background:url(./images/images2/icon-01.png) no-repeat center right 15px;
    background-size: 20px;
    background-color: #fff;
}

    .search{
       margin : auto;
       display : flex;
       flex-direction: column;
       align-items:center;
    }

    .search>button{
        border-radius: 30px;
        padding:20px;
    }
    .loginBox>button{
        border-radius: 30px;
    }
    
    
    
        </style>
        
    
    <title>아이디찾기</title>
 
</head>
<body>
    <%@ include file = "../common/header.jsp"%>
    <div class="outer">
        <form action="<%=contextPath %>/findpwd.me" method="post">

           <%--  <a href="<%=contextPath%>">
                <img src="resources/사이트이름.png" alt="logo" class="logo">
            </a> --%>
            <div class="search">

                <button type="button" class="btn btn-outline-primary" style="width:350px;" onclick="searchId();">아이디 찾기</button>
                <button type="button" class="btn btn-primary" id="loginBtn" value="" style="padding: px; width: 350px;">비밀번호 찾기</button>
            </div>
            <div class="foot">

              
             
                <button type="button" class="btn btn-outline-secondary" id="searchPhone" style="padding: 12px; width: 700px; border-radius: 30px;">휴대폰번호로 찾기</button>
                <!-- <img src="/CSS/CSS (1)/resources/img/insta.png" alt=""> -->
          </div>
  
            <div class="loginBox" style="margin-top:0px; display:none;">
				<label for="memberId">* 아이디</label>            
				<input type="text" id="memberId" name="memberId" placeholder=" 아이디를 입력해주세요"> 
            
                <label for="memberName">* 이름</label>
                <input type="text" id="memberName" name="memberName" placeholder="이름을 입력해주세요">

                <label for="memberBirth">* 생년월일</label>
                <input type="text" name="memberBirth" id="memberBirth" placeholder="생년월일 8자리를 입력해주세요">

            
            <label for="phone">* 휴대폰번호</label>
            <input type="text" id="phone" name="phone" placeholder="-를 포함하여 입력해주세요">

            <button type="submit" class ="btn btn-secondary" style="padding: 12px;" data-bs-toggle="modal" data-bs-target="#staticBackdrop" id="btn">확인</button>
        </div><!-- Modal -->
        </form>    
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">비밀번호 찾기 찾기 결과</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      	<font size="3">조회된 비밀번호 입니다.</font>
        PASSWORD &nbsp; : &nbsp; <label id="default">""</label>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="updatePwd();">비밀번호 변경하기</button>
        <button type="button" class="btn btn-primary" onclick="modalLogin();" >로그인하기</button>
        <button class="btn btn-danger">닫기</button>
      </div>
    </div>
  </div>
</div>
    </div>
<%@ include file = "../common/footer.jsp" %>

      

        <br><br><br><br><br><br><br><br>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    
        
    
    <script>
function searchId(){
    	
    	location.href ="<%=contextPath%>/searchid.me";
    	
    };
    
    $(function(){
 	   $(".foot").click(function(){
 		 
 		   console.log(this);
 		   var $p = $(this).next();
 		   console.log($p);
 		   if($p.css("display")=="none"){
 			   $(this).siblings(".loginBox").slideUp(100);
 			   $p.slideDown(300);
 			   
 		   }else{
 			   $p.slideUp(300);
 		   }
 		   
 	   });
    	
    });
    
    function modalLogin(){
    	location.href = "<%=contextPath%>/logForm.me";
    	
    };
    
    function updatePwd(){
    	location.href = "<%=contextPath%>/update.me";
    };
    
    </script>
    
   
    	
    
    
</body>
</html>