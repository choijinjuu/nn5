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
        /*푸터===================================================================*/
        div{
            /*border: 1px solid black;*/
            box-sizing: border-box;
        }
        #footer{
            width: 1420px;
            height: 150px;
            margin: auto;
            box-sizing: border-box;
            border-top-style: solid; /*푸터 상 선*/
            border-top-width: 1px;
            border-top-color: rgb(148, 146, 146);
        }
        #footer>div{
            width: 100%;
        }
        #f_1{
            width: 100%;
            height: 40%;
        }
        #f_2{
            width: 100%;
            height: 60%;
        }
        #f_1>a{
            margin: 8px;
            position: relative;
            top: 20px;
            left: 100px;
            font-size: 12px;
            text-decoration: none;
            color: rgb(148, 146, 146);
        }
        #f_2>p{
            color: rgb(127, 121, 122);
            font-size: 13px;
            font-weight: 600;
            position: relative;
            left: 120px;
        }       
        #f_1_logo{
            height: 35px;
            width: 130px;
            position: relative;
            top: 7px;
        }
        a:hover{
        	outline : 
        }
        
        </style>
</head>
<body>
        <div id="footer">
            <div id="f_1">
                <a href="" ><img id="f_1_logo" src="resources/사이트이름.png" alt="logo"> </a> <!--메인사이트로-->
                <a href="" >이용약관</a>
                <a href="" >개인정보처리방침</a>
                <a href="" >청소년보호정책</a>
            </div>
            <div id="f_2">
                <p>
                    대표이사 : 읽어조 | 서울특별시 종로구 종로1 | 사업자 등록 번호 : 111-22-33333
                    <br>
                    대표전화 : 1111-1111 | FAX : 0505-987-6543
                </p>
                <p> kh © book center</p>
            </div>
        </div>
</body>
</html>