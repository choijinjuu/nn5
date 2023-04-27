<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <!-- jQuery library -->
    <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
<title>Insert title here</title>
<style>
	/*--------------회원정보수정 비밀번호 확인 영역-----------------*/
        #update_pro{
            margin: 50px 0px 0px 30px;
            height: 100%;
            box-sizing: border-box;
        }
        #update_pro h2{
            margin-bottom: 5px;
        }
        #update_pro h5{
            margin: 0px 0px 10px 0px;
        }
        #update_form{
        	height:100%;
            border-top: 1px solid black;
            padding: 10px 0px;
        }
        #update_form h5{
            margin-top: 10px;
            font-size: 15px;
            font-weight: bold;
        }
        #update_myProfile {
            margin-top: 20px;
            margin: auto;
            padding: 10px;
        }
        #update_myProfile table{
        	width: 100%;
            border-top: 1px solid gray;
            border-bottom: 1px solid gray;
            margin: auto;
            border-collapse: collapse;
        }
        #update_myProfile tr{
            align-items: center;
        }
        #update_myProfile td{
            height: 50px;
            padding: 0 10px 0px 20px;
            border-right: 1px solid gainsboro;
        }
        #update_myProfile>table td:first-child{
            width: 200px;
            padding-left: 20px;
        }
        #update_myProfile>table td:last-child{
            width: 700px;
            padding-left: 20px;
            border: none;
        }
        #update_myProfile input{
            width: 200px;
            height: 30px;
            border: 1px solid gray;
            border-radius: 5px;
            padding: 0 10px;
        }
        #update_myProfile input:read-only{
            background-color: #D9D9D9;
        }
        #btn-area button{
            margin: 10px 3px;
            width: 80px;
            height: 35px;
            border-radius: 10px;
            text-align: center;
            border: none;
        }
        #update_myProfile button[type="reset"]{
            font-weight: 600;
            border: 2px solid rgb(184, 184, 184);
        }
        #update_myProfile button[type="submit"]{
            color: white;
            font-weight: 600;
            background-color: rgb(62, 130, 255);
        }
        #del-btn{
            float: right;
            color: white;
            font-weight: 600;
            background-color: rgb(255, 62, 62);
        }
        #update_myProfile a {
        	text-decoration: none;
            color: white;
        }
        #btn-area button{
        	cursor: pointer;
        }
        #addr-btn{
        	margin: 10px 30px;
            width: 200px;
            height: 35px;
            border-radius: 10px;
            text-align: center;
            border: 2px solid rgb(62, 130, 255);
        	color: black;
            font-weight: 600;
        }
        #addr-btn:hover{
            border: none;
        	color: white;
            background-color: rgb(62, 130, 255);
        }
        /*----------------------------------------Modal----------------------------------------*/
        .modal{ 
            display:none;
            position:fixed;
            top:0;
            left:0;
            width:100%;
            height:100%;
            background-color:rgba(0,0,0,.5);
            justify-content:center;
            align-items:center;
        }
        .modal-back{
            background-color: rgba(0,0,0,0.6);
            border-radius: 10px;
            position: absolute;
        }
        .modal-content{
            background-color: white;
            padding: 30px;
            position: relative;
            border-radius: 10px;
            width: 800px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23);
        }
        .modal-body{
            text-align: center;
        }
        .modal-footer {
            text-align: right;
            margin-top: 20px;
        }
        .closeModal {
            height: 40px;
            width: 60px;
            border-radius: 10px;
            border: none;
            background-color: rgb(255, 50, 50);
            color: white;
            font-weight: bolder;
            font-size: 15px;
            }
        .delete {
	        height: 40px;
	        width: 60px;
	        border-radius: 10px;
	        border: none;
	        background-color: rgb(50, 50, 255);
	        color: white;
	        font-weight: bolder;
	        font-size: 15px;
        }
        .openModal{
            cursor: pointer;
        }
        .modal-btn-area{
        	width: 100%;
        	text-align: center;
        	margin: 20px 0px;
        }
        .modal-btn-area button{
        	width: 80px;
        	margin: 5px;
        	cursor: pointer;
        }
        .modal-btn-area button[type="submit"]{
            height: 40px;
            border-radius: 10px;
            border: none;
            background-color: rgb(62, 130, 255);
            color: white;
            font-weight: bolder;
            font-size: 15px;
        }
        .find-post-no{
        	background-color: gray;
        	color: white;
        	font-weight: bold;
            border: none;
            border-radius: 10px;
            width: 150px;
            height: 30px;
        }
        .find-post-no:hover{
        	background-color: rgb(62, 130, 255);
        }
        
        #update-addr-form{
        	display: block;
        	margin: auto;
        }
        #update-addr-table{
        	margin: auto;
            border-collapse: collapse;
        }
        #update-addr-table td{
            border-top: 2px solid lightskyblue;
            border-bottom: 2px solid lightskyblue;
        	width: 300px;
            padding: 20px;
        }
        #update-addr-table input[type=text]{
            text-align: left;
            height: 30px;
            border: 1px solid black;
            border-radius: 10px;
            padding: 0px 10px;
        }
        #update-addr-table td:first-child{
            
        	width: 50px;
        }
        #update-addr-table td:last-child{
        	width: 300px;
        }
</style>
</head>
<body>
	<%@ include file = "../common/header.jsp" %>
	<%@ include file = "../common/myInfo.jsp" %>
	<%
		String memId = loginUser.getMemberId();
		String name = loginUser.getMemberName();
		String gender = loginUser.getGender();
		String phone = loginUser.getPhone();
		String email = loginUser.getEmail();
		String address = loginUser.getAddress();
		String memBirth = loginUser.getMemberBirth();
		
		int sign = email.indexOf("@");
		String emailId = email.substring(0, sign);
		String emailAdd = email.substring(sign+1);
		
		String date[] = memBirth.split("/");
		
		String post = address.substring(0,5);
		String[] road_detail = address.split(post);
		String detailAddr = "";
		
		for(int i=0; i<road_detail.length; i++){
			detailAddr += road_detail[i];	
		}
	%>
	
	<div class="wrap">
		<div id="content">
			<div id="c_1">
				<div id="update_pro">
                    <h2>회원정보수정</h2>

                    <div id="update_form">
                        <h5>기본정보</h5>

                        <form action="<%=contextPath %>/update.me" method="post" id="update_myProfile">
                            <table>
                                <tr>
                                    <td>아이디</td>
                                    <td colspan="2"><input type="text" name="memberId" value="<%=memId %>" readonly></td>
                                </tr>
                                <tr>
                                    <td>새 비밀번호</td>
                                    <td colspan="2"><input type="password" id="memberPwd"  name="memberPwd" class="userpw" maxlength="15" placeholder="새 비밀번호를 입력해 주세요." style="width:350px;">
                                    	<span id="pwd" style="color:#2c7dc9; font-size:13px"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>새 비밀번호 확인</td>
                                    <td colspan="2"><input type="password" class="userpw-confirm" id="chkPwd"  maxlength="15" placeholder="새 비밀번호를 한 번 더 입력해 주세요." style="width:350px;">
                                                    <font size="2" id="chkPwd"></font></td>
                                </tr>
                                <tr>
                                    <td>이름</td>
                                    <td colspan="2"><input type="text" name="memberName" value="<%=name %>" readonly></td>
                                </tr>
                                <tr>
                                    <td>성별</td>
                                    <td colspan="2"><input type="text" name="gender" value="<%=gender %>" readonly></td>
                                </tr>
                                <tr class="birth">
			                        <td>생년월일 </td>
			                        <td><input type="number" required placeholder="년(4자)" style="width:100px;" name="birthYear" value="<%=date[0]%>">
			                        <input type="number" required placeholder="월" style="width:100px;" name="birthMonth" value="<%=date[1]%>">
			                        <input type="number" required placeholder="일" style="width:100px;" name="birthDay" min="1"  max="31" value="<%=date[2]%>"></td>
			                    </tr>
                                <tr>
                                    <td>이메일</td>
                                    <td colspan="2">
                                        <input type="text" name="email" id="email" value="<%=emailId %>" required>&nbsp;@
                                        <input type="text" list="dotCom" name="write" id="eAddr" value="<%=emailAdd%>" placeholder="직접 입력하기">
                                           <datalist id="dotCom" name="dotCom">
                                                <option value="naver.com" name="naver.com">naver.com</option>
                                                <option value="gmail.com" name="gmail.com" >gmail.com</option>
                                                <option value="daum.com" name="daum">daum.com</option>
                                                <option value="kh.com" name="kh.com">kh.com</option>
                                            </datalist>
                                    </td>
                                </tr>
                                <tr>
                                    <td>휴대폰번호</td>
                                    <td colspan="2"><input type="text" name="phone" id="phone" value="<%=phone %>" placeholder="-를 포함하여 작성해주세요.">
                                    				<font size="2" id="phoneFont"></font>
                                    </td>
                                </tr>
                                <tr>
                                    <td rowspan="2">주소</td>
                                    <!-- <td><input type="text" name="address" value="<%=address %>" placeholder="-를 포함하여 작성해주세요."></td> -->
                                    <td colspan="2">
                                        <input type="text" id="postcode" placeholder="우편번호" value="<%=post %>" readonly>
                                        <button type="button" class="openModal" id="addr-btn" data-toggle="modal" data-target="#updateAddr">내 주소 수정</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <input type="text" id="detail-addr" placeholder="상세주소" style="width:600px;" value="<%=detailAddr %>" readonly>
                                    </td>
                                </tr>
                            </table>

                            <div align="center" id="btn-area">
                                <button type="reset">초기화</button>
                                <button type="submit">정보변경</button>
                                <button type="button" class="openModal" id="del-btn" data-toggle="modal" data-target="#myProfileDel">회원탈퇴</button>
                            </div>
                        </form>
                        
                    </div>
                </div>
			</div>
		</div>
	</div>
	
	<!-- 주소 수정 모달 영역 --> 
	<div class="modal" id="updateAddr">
		<div class="modal-back">
			<div class="modal-content">
				<!-- modal body -->
				<div class="modal-body">
					<form action="<%=contextPath %>/updateAddr.me" method="post" id="update-addr-form">
						<h2>회원 주소 변경</h2>
						
						<table id="update-addr-table">
							<tr>
                                <td><input type="text" id="sample4_postcode" name="addressNum" placeholder="우편번호" style="float: left;"></td>
                                <td><input type="button" class="find-post-no" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" style="float: left;"></td>
                            </tr>
                            <tr>
                                <td><input type="text" id="sample4_roadAddress" name="loadAddress" placeholder="도로명주소"></td>
                                <td><input type="text" id="sample4_detailAddress" name="detailAddress" placeholder="상세주소" style="width:400px;"></td>
                            </tr>
						</table>																					
						
															
						<div class="modal-btn-area">
							<button type="submit" class="update" data-dismiss="modal">변경하기</button>
							<button type="button" class="closeModal" data-dismiss="modal">닫기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
    <!-- 주소 수정 모달 영역 끝 -->
	
	<!-- 회원 탈퇴 모달 영역 --> 
	<div class="modal" id="myProfileDel">
		<div class="modal-back">
			<div class="modal-content">
				<!-- modal body -->
				<div class="modal-body">
					<form action="<%=contextPath %>/delete.me" method="post">
						<h2>회원탈퇴</h2>
																
						<p>회원 탈퇴 시 개인 정보 복구가 어려우며, 일부 서비스 이용이 제한될 수 있습니다. <br>
						정말 탈퇴하시겠습니까?</p>
															
						<div class="modal-btn-area">
							<button type="submit" class="delete" data-dismiss="modal">회원탈퇴</button>
							<button type="button" class="closeModal" data-dismiss="modal">닫기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
    <!-- 회원 탈퇴 모달 영역 끝 -->
    
	<script>
		$(function(){
		    $(".openModal").on("click",function(){
		    	$id = $(this).attr("data-target");
		        $($id).css("display","flex");
		    });
		    
		    $(".closeModal").on("click",function(){
		        $(".modal").css("display","none");
		    });
		});
	</script>
	
	<script>
	window.onload = function() {
	
		//2)비밀번호 검사
	    //영문자,숫자,특수문자(!@#$%^&*)로 총 8~15자로 입력하시오.
	   //regExp = /^[A-Za-z0-9_\-]{5,15}$/;
	   var regExpPwd = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,15}$/;
	   var inputPwd = document.getElementById("memberPwd");
	   
	    var pwdElement = document.getElementById("pwd"); 
	    var inputCp = document.getElementById("chkPwd");
	    
	    inputPwd.addEventListener("keyup",function(){
	   	 if(!regExpPwd.test(inputPwd.value)){
	   	       pwdElement.innerHTML = '영문자,숫자,특수문자(!@#$%^&*)포함 총 8~15자로 입력해주세요.';
	   	       pwdElement.style.color = 'red';
	   	       
	            inputPwd.style.background = 'url(resources/사용불가자물쇠.png) no-repeat center right 15px';
	 	        inputPwd.style.backgroundSize = '80px';
	   	     inputPwd.style.backgroundColor = '#fff';
	   	        /* return false; */
	   	    }else{
	   	    	pwdElement.innerHTML = '사용가능한 비밀번호 입니다.';
	   	    	pwdElement.style.color = 'blue';
	   	    	
	   	    	inputPwd.style.background = 'url(resources/사용가능자물쇠.png) no-repeat center right 15px';
	    	        inputPwd.style.backgroundSize = '60px';
	      	     	inputPwd.style.backgroundColor = '#fff';
	   	    	
	   	    }
	 
	    });
		
	
	    //3)비밀번호와 비밀번호 확인 일치여부 
	    inputCp.addEventListener("keyup",function(){
		    if(inputPwd.value != inputCp.value){
		        $("#chkPwd").html('비밀번호와 비밀번호 확인이 일치하지 않습니다.');
		        $("#chkPwd").attr('color','red');
		         inputCp.style.background = 'url(resources/사용불가자물쇠.png) no-repeat center right 15px';
			     inputCp.style.backgroundSize = '80px';
			     inputCp.style.backgroundColor = '#fff';
		        inputCp.focus();
		    	
		    }else{
		    	$("#chkPwd").html('<b>사용 가능 합니다<b>');
		    	$("#chkPwd").attr('color','blue');
		    	inputCp.style.background = 'url(resources/사용가능자물쇠.png) no-repeat center right 15px';
			    inputCp.style.backgroundSize = '60px';
			    inputCp.style.backgroundColor = '#fff';
		    }
		});
	    
	    //4) 핸드폰번호 확인
	    var inputPhone = document.getElementById("phone");
		var regExpPhone = /^01[0179]-\d{4}-\d{4}$/; 
		var	phoneFont = document.getElementById("phoneFont");
	    inputPhone.addEventListener("keyup",function(){
	    	
	    
	    if(!regExpPhone.test(inputPhone.value)){
	    	phoneFont.innerHTML = "휴대폰 형식이 올바르지 않습니다.";
	    	phoneFont.style.color = 'red';
	    	inputPhone.focus();
	    	
	    }else{
	    	phoneFont.innerHTML = "사용 가능한 형식의 휴대폰번호입니다."
	    	phoneFont.style.color = 'blue';
	    }
	    });
    
	}
	</script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
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
	         
	                document.getElementById("sample4_engAddress").value = data.addressEnglish;
	                       
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
	</script>

	<%@ include file = "../common/myPageCate.jsp" %>
	<%@ include file = "../common/footer.jsp" %>
</body>
</html>