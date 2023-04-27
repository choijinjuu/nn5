<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <style>
        div{
            /* border: 1px solid black; */
            box-sizing: border-box;
        }
        /*-----------------콘텐츠------------------------*/
        #content{
            /* background-color: antiquewhite; */
            width: 1400px;
            height: 1600px;
            margin: auto;
            display: flex; /*이미지 중앙 정렬*/
            position: relative; /*출석판 위 출석하기 정렬 1단계*/
         
        }

        /*출석판----------------------------------------*/
        #attendance_img{
            display: block;
            margin: auto;
            height: 1450px;
            width: 980px;
            
        }

        /*출석하기-------------------------------------------------*/
        #atten_click{
            /* background-color: antiquewhite; */
            width: 925px;
            height: 100px;
            position: absolute;/*출석판 위 출석하기 정렬 2단계*/
            left: 50%;
            top: 90.5%;
            transform: translate(-50%,-50%);/*출석판 위 출석하기 정렬 3단계*/
        }
        #atten_click_btn{
            width: 100%;
            height: 100%;
            cursor: pointer;
            opacity: 0; /*투명도*/
        }
        #atten_click_btn:hover{
            opacity: 0.2;
        }
        </style>
</head>
<body>
	<%@include file = "../common/header.jsp" %>
        <div id="content">
            <img id="attendance_img" src="resources/출석체크4.png" alt="">
            <div id="attendance_mark">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 34.7%; left: 26.3%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 34.7%; left: 35.7%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 34.7%; left: 45.1%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 34.7%; left: 54.5%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 34.7%; left: 63.9%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/도장_완3.png" alt=""
                     style="position: absolute; width: 285px; height: 95px; top: 35.6%; left: 79.6%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 40%; left: 26.3%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 40%; left: 35.7%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 40%; left: 45.1%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 40%; left: 54.5%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 40%; left: 63.9%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/도장_완3.png" alt=""
                     style="position: absolute; width: 285px; height: 95px; top: 41%; left: 79.6%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 45.3%; left: 26.3%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 45.3%; left: 35.7%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 45.3%; left: 45.1%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 45.3%; left: 54.5%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 45.3%; left: 63.9%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/도장_완3.png" alt=""
                     style="position: absolute; width: 285px; height: 95px; top: 46.2%; left: 79.6%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 50.6%; left: 26.3%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 50.6%; left: 35.7%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 50.6%; left: 45.1%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 50.6%; left: 54.5%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 50.6%; left: 63.9%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/도장_완3.png" alt=""
                     style="position: absolute; width: 285px; height: 95px; top: 51.6%; left: 79.6%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 55.9%; left: 26.3%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 55.9%; left: 35.7%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 55.9%; left: 45.1%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 55.9%; left: 54.5%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 55.9%; left: 63.9%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/도장_완3.png" alt=""
                     style="position: absolute; width: 285px; height: 95px; top: 56.8%; left: 79.6%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 61.2%; left: 26.3%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 61.2%; left: 35.7%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 61.2%; left: 45.1%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 61.2%; left: 54.5%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/출석체크 마크.png" alt=""
                     style="position: absolute; width: 115px; height: 80px; top: 61.2%; left: 63.9%; transform: translate(-50%,-50%); visibility: hidden;">
                <img src="resources/도장_완3.png" alt=""
                     style="position: absolute; width: 285px; height: 95px; top: 62.1%; left: 79.6%; transform: translate(-50%,-50%); visibility: hidden;">
            </div>
            <div id="atten_click">
                <button id="atten_click_btn" onclick="attendance()"></button>
            </div>
        </div>
        
        <script>
	        function attendance(){
	            /*도장변수에 담기.. img 인덱스 2~37번까지임*/
	            var img = document.getElementsByTagName("img");
	            var index = 0;
	            //console.log(img[2]);
	
	            for(var i=2;i<38;i++){
	                if(img[i].style.visibility=="hidden"){//visibility가 hidden일시 도장 보이도록
	                	img[i].style.visibility="visible"
	                	alert("출석이 완료되었습니다.");
	                	if(i%6==0 && img[i].style.visibility=="visible"){
	                        index = i;
	                        //console.log(index);                    
	                        img[index+1].style.visibility="visible"
	                        alert("300원의 적립금이 지급되었습니다.");
	                        break;
	                    }
	                	break;
	                }
	            }
	        }
        </script>
        
	<%@include file = "../common/footer.jsp" %>
</body>
</html>