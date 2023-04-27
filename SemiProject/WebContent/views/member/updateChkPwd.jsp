<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
<title>Insert title here</title>
<style>
	/*--------------회원정보수정 비밀번호 확인 영역-----------------*/
        #chk_pro{
            margin: 50px 0px 0px 30px;
            box-sizing: border-box;
        }
        #chk_pro h2{
            margin-bottom: 5px;
        }
        #chk_form{
            border-top: 1px solid black;
            padding: 10px 0px;
        }
        
        #chk_form_input>* {
            display: inline-block;
        }
        #chk_form_input h5{
            width: 200px;
            height: 20px;
        }
        #chk_form_input input{
            width: 400px;
            height: 20px;
            margin: 0%;
        }
        #chk_btn button{
            width: 50px;
            height: 30px;
            border-radius: 5px;
            border: none;
            color: white;
            font-weight: bold;
            background-color: rgb(0, 140, 255);
            margin: auto;
        }
</style>
</head>
<body>
	<%@ include file = "../common/header.jsp" %>
	<%@ include file = "../common/myInfo.jsp" %>
	<% String userPwd = loginUser.getMemberPwd(); %>
	<div class="wrap">
		<div id="content">
			<div id="c_1">
				<div id="chk_pro">
                    <h2>비밀번호 확인</h2>
                    <h5>회원 정보 수정을 위해 비밀번호를 입력해주세요.</h5>

                    <div id="chk_form">
                        <form action="<%=contextPath %>/chkPwd.me" method="post" id="chk_form_input">
                        	<input type="hidden" name="userPwd" value="<%=userPwd%>">
                            <h5>비밀번호 확인</h5>
                            <div id="chk_pwd_input">
                                <input type="password" id="chkPwd" placeholder="비밀번호 입력" required>
                            </div>
                            <div id="chk_btn">
                                <button type="submit" onclick="return flase;">확인</button>
                            </div>
                        </form>
                        
                        <script>
                        	$("#chk_btn").click(function(){
                        		var userPwd = "<%=userPwd%>";
								var inputPwd = $("#chkPwd").val();
								
								if(userPwd == inputPwd){
									
									return true;
								}else{
									alert("비밀번호가 일치하지 않습니다.");
									$("input[name=userPwd]").focus();
									return false;
								}
                        	});
                        </script>
                    </div>
                    
                </div>
			</div>
		</div>
	</div>
	
	<%@ include file = "../common/myPageCate.jsp" %>
	<%@ include file = "../common/footer.jsp" %>
</body>
</html>