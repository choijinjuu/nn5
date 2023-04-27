<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import ="com.semi.member.model.vo.Member"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- jQuery library -->
    <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <title>회원가입</title>
    <style>
   /*  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap'); */
*{
    /* width: 100vw; */
    /* overflow: hidden; */
    box-sizing: border-box;
     font-size : 13px; 
    /* outline: none; */
    /* border: 1px solid black; */
 }

 *:focus{
    outline: 3px solid  #2c7dc9;
 }
 button{
   /*  padding: 40px;
    width: 120px;
    border-radius: 10px; */

}
 input{
    /* padding: 15px;
    width: 65%; */
 }
 html{
    font-family: 'Noto Sans KR',sans-serif;
    font-size: 14px;
    background-color: ;
    line-height: 1.5em;
    color: #222;
    margin: 0;
    
   
 }
 
 body{
 	
 	width: 1420px;
 	margin: auto;
 
 
 }
 
 a{
    text-decoration: none;
    color: #222;
 }
 .outer{
    width: 1000px;
    border: 3px solid grey;
    margin: auto;
    padding: 0 20px;
    margin-bottom: 20px;
 }

 .outer .logo{
    /*로고는 이미지라 인라인 블록이니까 마진 오토 안됨 블록요소만 됨 */
    display: block;
    margin :50px auto;
    cursor: pointer;
    margin-top : 15px
}

.outer b{
    /* border: 1px solid #000; */
    /*수직 정렬하기 */
    /* display: block; 
    margin-bottom: 5px; */
    margin: 19px 0 8px;
    font-size: 17px;
    font-weight: 700;
    margin-left: 60px;
}

/*input 중 radio 는 width 가 100%면 안되니까 */
.outer input:not(input[type=radio]),.outer select{
    border: 1px solid black;
    padding: 15px;
    width: 90%;
    margin-bottom: auto;
    border-radius : 30px;
}

.outer input:not(input[type=radio],input[type=number]), .outer not select{
    margin-left: 0px;
    padding: 15px;
    border-radius : 30px;
}


.outer input:not([type=radio]):focus{

border: 3px solid #2c7dc9;
outline : 3px solid #2c7dc9; 
}


 .outer select:focus{
    border: 2px solid #2c7dc9;
}

.placehold-text{
    display: ; /*span 으로 감싸서 크기영역을 블록요소로 만들어ㅜ저야한다*/
    position:;
    color: #2c7dc9;
    font-weight: bold;
    /* border: 1px solid #000; */
}

.placehold-text:before{ 
    content : "* 중복확인체크 필수";
    /* content: #2c7dc9; */
    /* position: ; before은 inline 요소이기 때문에 span으로 감싸줌 */
    right : 8px;
    top:13px;
    
    pointer-events: none; /*자체가 가지고 있는 pointer event 를 없애준다 */
}

 header{
    height: 150px;
/*     text-align: center;
 */    padding-top: 20px;
    background-color:;
    margin-bottom: 40px;
    display:flex;
    flex-direction:row;
    padding : 0px;
    margin : 0px;
    /* border: 2px solid blue; */
 }

 main{
    background-color: ;
 }
 section{
    /* border: 2px solid red; */
    margin: 0px;
    padding: 0px;
 }
 table{
    width: 100%;
    margin: 0px;
    padding: 0px;
    box-sizing: border-box;
    
    /* height: 100%; */
    /* text-align: center; */
 }

table>thead>tr>td{
    column-span: 6;
}

table>tbody>tr>td{
    column-span: 6;
   
    /* display: block;
    width: 100%;
    height: 51px;
    border: solid 1px #dadada;
    padding: 10px 14px 10px 14px;
    box-sizing: border-box;
    background: #fff;
    position: relative; */
    
}
table>tbody>tr>td>input{
    /* display: block;
    position: relative;
    width: 100%;
    height: 29px;
    border: none;
    background: #fff;
    font-size: 15px; */

}
table>tfoot>tr>td{
    column-span: 6;
    
}

 tr{
    margin: 5px 0;
    /* padding: 0px; */


 }
.birth>td{
     /* padding-left: 20px; */
    width: 180px;
    padding: 0;
}
 tbody>tr{
   height: 70px; /* column-span: 6; */
 }

 .userpw{
    background:url(resources/pwd.png) no-repeat center right 15px;
    background-size: 30px;
    background-color: #fff;
}

.userpw-confirm{
    background:url(resources/pwdChk.png) no-repeat center right 15px;
    background-size: 33px;
    background-color: #fff;
}

 label:hover{
    text-decoration: underline;
    font-size: 15px;
    color: #2c7dc9;
    cursor: pointer;
 }
 tbody{
    /* text-align: justify; */
    /* text-align: left; */
 }
 footer{
    width: 100%;
    float: left;
    padding-left: 80px;
    /* margin-right: 300px; */
 }
 footer>button{
     margin: 100px;
     padding: 350px;
 }
input[type=radio]{
    /* margin: auto 100px; */
    /* margin: 0px; */
    /* padding: 0px; */
    margin : 20px auto;
    width: 50px;
    margin-left: 50px;
}

input[type=radio]:focus{
	outline:none;
}

@media (max-width:768px) {
    .outer{
        width: 100%;
    }
}


.btn{
	border-radius : 50px;
	width : 300px;
}


header>button{

	width : 300px;
	

}
     #search_form>*{
   
   float : left;
   }
    
  
    </style>
</head>
<body>

   <%@ include file = "../common/header.jsp"%>  
<div class="outer">
        <form action="<%=contextPath %>/insert.me" id="enroll-Form" method="post">
    <header>
        <!-- <h1>회원가입</h1> -->
      <%--  <a href="<%=contextPath%>"> <img class="logo" src="resources/사이트이름.png" alt="logo"></a> --%>
    <div style="margin:auto; padding:30px;">
        <button type="reset" class="btn btn-outline-primary" style="padding: 20px; width: 200px;">초기화</button>
    </div>
    <div style="margin:auto; padding:30px;">
        <button type="submit" class="btn btn-primary" style="padding: 20px; width: 200px;" id="enrollbtn" disabled >회원가입</button>
    </div>   
    
    </header>
    <main>
            
            
            <h5 style="border-bottom: 1px solid darkgray;" >약관동의</h5>
            <table align="center">
        <thead>
            <tr>
                        <td colspan="6" align="center"> <textarea rows="10" cols="140" style="overflow-y: scroll; resize: none; backgroundColor : darkgrey;"  readonly>약관</textarea></td>
                    </tr>
                    <tr>
                        <td colspan="6" align="center">
                            <input type="radio" class="radio_1" name="radio_1" checked required id="agree1"><label for="agree1">동의합니다</label>
                            <input type="radio" class="radio_1" name="radio_1" required  id="noAgree1"><label for="noAgree1">동의하지 않습니다.</label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6" align="center"><textarea rows="10" cols="140" style="overflow-y: scroll; resize: none;" readonly>as</textarea></td>
                    </tr>
                    <tr style="border-bottom: 2px solid darkgrey; ">
                        <td colspan="6" align="center">
                            <input type="radio" class="radio_2" name="radio_2" checked required style="width:10" id="agree2"><label for="agree2">동의합니다</label>
                        
                        
                            <input type="radio" class="radio_2" name="radio_2"  id="noAgree2" required style="width:3"><label for="noAgree2">동의하지 않습니다.</label>
                        </td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td colspan="6"><h5 style="padding: 25px; border-bottom: 2px solid darkgray;"> 기본정보</td></h3>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr style="border-bottom: 2px solid darkgrey; ">
                        <td style="width: 400px;"><b> * 아이디 </b></td>
                            <td colspan="2"><input type="text" name="memberId" id="memberId" class="input_id" style="width:px" required ><br><font size="2" id="chkId">2글자이상,11글자까지 영소대문자와 조합해주세요.</font></td>
                            <td ><button class="btn btn-secondary" style="border-radius:30px; padding: 20px; width:120px; margin:auto;" onclick="idCheck();" >중복확인</button> &nbsp;
                            </td>
                            <td><span class="placehold-text"></span></td>
                            <td></td>
                           
                    </tr>
                    <tr style="border-bottom: 1px solid black;">
                        <td><b> * 비밀번호 </b></td>
                        <td colspan="2"><input type="password" id="memberPwd"  name="memberPwd" class="userpw" required maxlength="15"></td>
                        <td colspan="2"><span  id="pwd" style="color:#2c7dc9; font-size:14px"></span></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr style="border-bottom: 1px solid black;">
                        <td><b> * 비밀번호확인 </b></td>
                        <td colspan="2"><input type="password" class="userpw-confirm" id="chkPwd"  maxlength="15" required></input><br><font size="2" id="chkPwd"></font> </td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr style="border-bottom: 1px solid black;">
                        <td><b> * 이름 </b></td>
                        <td colspan="2"><input type="text" id="memberName" name="memberName" required></td>
                        <td><br><font size="2" id="nameFont"></font></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr style="border-bottom: 1px solid black;">
                        <td><b> * 성별 </b></td>
                        <td colspan="2">
                            <input type="radio" class="radio_3"  name="gender" value='남' id="man"  required  checked><label for="man">남자</label>
                            <input type="radio" class="radio_3" name="gender" value="여" id="girl" required ><label for="girl">여자</label>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr style="border-bottom: 1px solid black;">
                        <td><b> * 이메일 </b></td>
                        <td colspan="2"><input type="text" name="email" id="email" required>
                              &nbsp;@ 
                        </td>
                        <td>
                        <input type="text" list="dotCom" name=write placeholder="직접 입력하기">
                           <datalist style="padding: 14px; width: 250px;" id="dotCom" name="dotCom" value="직접 입력">
                                <option value="naver.com" name="naver.com">naver.com</option>
                                <option value="gmail.com" name="gmail.com" >gmail.com</option>
                                <option value="daum.com" name="daum">daum.com</option>
                                <option value="kh.com" name="kh.com">kh.com</option>
                            </datalist>
                        </td>
                        <td><font size="2" id="emailFont"></font></td>
                        <td></td>
                    </tr>
                    <tr style="border-bottom: 1px solid black;">
                        <td><b> * 휴대폰번호 </b></td>
                        <td colspan="2"><input type="text" name="phone" id="phone" placeholder="-를 포함하여입력해주세요" required></td>
                        <td><font size="2" id="phoneFont"></font></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr style="border-bottom: 1px solid black;">
                        <td><b> * 주소 </b></td>
                        <td colspan="2"><input type="text" id="sample4_postcode" name="addressNum" placeholder="우편번호" readonly></td>
                        <td colspan="2"><input type="text" id="sample4_roadAddress" name="loadAddress" placeholder="도로명주소" size="60" readonly></td>
                        <td></td>
                          <td>
                        <input type="hidden" id="sample4_jibunAddress" name="jibun" placeholder="지번주소"  size="60">
						<input type="hidden" id="sample4_extraAddress" name="extraAddress" placeholder="참고항목"  size="60">
						<input type="hidden" id="sample4_engAddress" name="eng" placeholder="영문주소"  size="60" >
                          
                          </td> 


                    </tr>
                    <tr style="border-bottom: 1px solid black;">
                    	<td><input type="button" style="border-radius:30px" class="btn btn-success" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"></td>
                    	<td colspan="3"><input type="text" id="sample4_detailAddress" name="detailAddress" placeholder="상세주소"  size="60"></td>
                    	<td><span id="guide" style="color:#999;display:none"></span></td>
                    	
                    
                    </tr>
                    <tr class="birth">
                        <td><b> * 생년월일 </b></td>
                        <td style="padding-left: 0px;"><input type="number" required placeholder="년(4자)" style="width:150px;" name="birthYear"></td>
                        <td style="padding-top:14px;">   <select class="form-select form-select-lg mb-3" name="birthMonth" >
                            <option value="">월</option>
                            <option value="1">1월</option>
                            <option value="2">2월</option>
                            <option value="3">3월</option>
                            <option value="4">4월</option>
                            <option value="5">5월</option>
                            <option value="6">6월</option>
                            <option value="7">7월</option>
                            <option value="8">8월</option>
                            <option value="9">9월</option>
                            <option value="10">10월</option>
                            <option value="11">11월</option>
                            <option value="12">12월</option>
                        </select></td>
                        <td><input type="number" required placeholder="일" style="width:150px;" name="birthDay" min="1"  max="31"></td>
                        <td></td>
                    </tr>
                </tbody>
                <!-- <tfoot>
                    <tr>
                        <td>                    <button class="btn btn-outline-primary" style="padding: 10px;">취소</button></td>
                        <td><input type="text" required></td>
                        <td><button class="btn btn-primary" style="padding: 10px;">회원가입</button></td>
                        <td></td>
                        <td></td>
                    </tr>
                   
                </tfoot> -->
            </table>
    </main>
   
</form>
</div>
<script>
function idCheck(){
	//아이디에 입력한 값을 데이터베이스에 저장된 아이디와 비교하여 중복인지 판별하기
	let memberId = $(".input_id").val();
	//console.log(memberId);
//	console.log(memberId.value);
	//응답데이터를 NNNNN : 사용할 수 없음 / NNNNY : 사용 가능 
	//중복체크 후 사용가능할때는 회원가입버튼 활성화 시켜주기 
	// 클라이언트 측 코드
	$.ajax({
	    url: "idCheck.me",
	    type: "post",
	    data: { memberId : memberId }, // 입력한 아이디 값을 전송
	    dataType: "json", // 서버로부터 텍스트 형식의 데이터를 받음
	    success: function(result) {
	        if (result == 0) { // 중복된 아이디인 경우
	            $("#chkId").html('중복되는 아이디입니다');
	        	$("#chkId").attr('color','red');
	        	$("#memberId").focus();
	        } else{
				        // 중복되지 않은 아이디인 경우
	            $("#chkId").html("사용가능한 멋진 아이디입니다!");
				$("#chkId").attr('color','blue');
				$("#memberId").attr("readonly",true);
				$("#memberId").attr("color","green")//아이디 변경불가시키기
				$("#enrollbtn").removeAttr("disabled");
				$(".btn").attr("border","3px solid green");
				/* $("#enrollbtn").on("mouseenter":function(){
					$(this).css("color","green").css("outline","green")
				}) */
				/* $("#enrollbtn").attr("outline","5px solid green")
				$("#enrollbtn").attr("outline","5px solid green")
				$("#enrollbtn").attr("outline","5px solid green")
				$("#enrollbtn").attr("outline","5px solid green") */
	        }
	    },
	    error: function() {
	        alert("AJAX 요청 실패: "); // AJAX 요청 실패 시 에러 로그 출력
	    }
	});
}
</script>
<script>



window.onload = function() {
	
	//1)아이디 검사
    //첫글자는 반드시 영문자로, 그리고 영문자,숫자를 포함하여 총4~12자로 입력하시오.
    var regExpId = /^[a-zA-Z][a-zA-Z0-9]{3,11}$/;
    var inputId = document.getElementById("memberId");
    var chkId = document.getElementById("chkId");


    inputId.addEventListener("keyup", function() {
        if (!regExpId.test(inputId.value)) { // If the value is not valid
            chkId.innerHTML = '사용할 수 없는 아이디입니다.';
            chkId.style.color = 'red';
            inputId.focus();
        } else {
            chkId.innerHTML = '멋진 아이디입니다! 중복확인을 꼭 해주세요.';
            chkId.style.color = 'blue';
        }
       
    });

    
	//regExp = /^[A-Za-z0-9_\-]{5,15}$/;
   var regExpPwd = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,15}$/;
   var inputPwd = document.getElementById("memberPwd");
    //2)비밀번호 검사
    //영문자,숫자,특수문자(!@#$%^&*)로 총 8~15자로 입력하시오.
   
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
     	        inputPwd.style.backgroundSize = '80px';
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
	    inputCp.style.backgroundSize = '80px';
	    inputCp.style.backgroundColor = '#fff';
    }
});
    
   
    
   
    
    
    

    var inputName = document.getElementById("memberName");
    //4)이름 검사
    //한글 2글자 이상
    /* let nameChk = RegExp(/^[가-힣]{2,6}/); */
    
    var regExpName = /^[가-힣]{2,6}$/; //2글자 이상 {범위에서 앞쪽만 작성하면 그 이상}
	var nameFont = document.getElementById("nameFont");
    inputName.addEventListener("keyup",function(){
    	
    if(!regExpName.test(inputName.value)){
        
        nameFont.innerHTML = "이름 형식이 올바르지 않습니다.";
        nameFont.style.color = 'red';
        inputName.focus();
       
    }else{
    	nameFont.innerHTML = '사용가능한 이름입니다'
    	nameFont.style.color = 'blue';
    }
    
    })
    
	var inputPhone = document.getElementById("phone");
	var regExpPhone = /^01[0179]-\d{4}-\d{4}$/; 
	var	phoneFont = document.getElementById("phoneFont");
    inputPhone.addEventListener("keyup",function(){
    	
    
    if(!regExpPhone.test(inputPhone.value)){
    	phoneFont.innerHTML = "휴대폰 형식이 올바르지 않습니다.";
    	phoneFont.style.color = 'red';
    	inputPhone.focus();
    	
    }else{
    	phoneFont.innerHTML = "사용가능한 형식의 휴대폰번호입니다."
    	phoneFont.style.color = 'blue';
    }
    })
    
    var inputEmail = document.getElementById("email");
	var regExpEmail = /^[a-zA-Z0-9._%+-]{2,}$/;
	var emailFont = document.getElementById("emailFont");

inputEmail.addEventListener("keyup", function() {
    if (!regExpEmail.test(inputEmail.value)) {
        emailFont.innerHTML = "유효하지않은 이메일 형식입니다.";
        emailFont.style.color = 'red';
        inputEmail.focus();
    } else {
        emailFont.innerHTML = "이용 가능한 이메일형식입니다.";
        emailFont.style.color = 'blue';
    }
    
    //var inputDotCom = document.getElembentById("dotCom");
    
});

// 7) Check date of birth
/*
var inputDob = document.getElementById("dob");
var dobFont = document.getElementById("dobFont");

inputDob.addEventListener("change", function() {
    var dob = new Date(inputDob.value);
    var currentYear = new Date().getFullYear();
    var age = currentYear - dob.getFullYear();
    if (age < 18) {
        dobFont.innerHTML = "You must be at least 18 years old.";
        dobFont.style.color = 'red';
        inputDob.focus();
    } else {
        dobFont.innerHTML = "Valid date of birth.";
        dobFont.style.color = 'blue';
    }
    */
    
    
    
};

    //6)이메일 검사]

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



<%@ include file = "../common/footer.jsp" %>

</body>
</html>