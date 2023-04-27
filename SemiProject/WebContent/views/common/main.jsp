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
        /*배너------------------------------------------*/
        #banner{
            /* background-color: red; */
            height: 500px;
            width: 1300px;
            margin: auto;
            z-index: -2;
            position: relative;
        }
        #banner>img{
            /* background-color: aqua; */
            z-index: -1;
            width: 1250px;
            height: 430px;
            display: block;
            margin: auto;
            position: relative;
            top: 20px;
        }
        /*메인 콘텐츠 메뉴--------------------------------------*/
        #con_menu{
            /* background-color: aquamarine; */
            height: 80px;
            width: 1200px;
            margin: auto;
            text-align: center;
            font-weight: 500;
            cursor: default;
            font-size: 14px;
        }
        #con_new,#con_pro{
            height: 430px;
            width: 1200px;
            margin: auto;
            /* background-color: aqua; */
        }
        #con_menu>div{
            /* background-color: blue; */
            height: 100%;
            width: 65px;
            margin: 8px;
            position: relative;
            top: -10px;
            display:inline-block;
        }
        #con_menu button{
            border-color: rgb(252, 251, 251);
            background-color: white;
            display:flex;
            width: 65px;
            height: 60px;
            border-radius: 30px;
            cursor: pointer;
        }
        #con_menu button:hover{
            background-color: rgb(240, 238, 238);
        }
        #con_best{
            /* background-color: antiquewhite; */
            height: 430px;
            width: 1280px;
            margin: auto;
        }
        #con_bt{
            /* background-color: aqua; */
            width: 100%;
            height: 23%;
            text-align: center;
            padding : 28px 0;
            font-size: 35px;
            font-weight: 600;
            color: rgb(61, 60, 60);
            border-bottom-style: solid; /*푸터 상 선*/
            border-bottom-width: 1px;
            border-bottom-color: rgb(148, 146, 146);

        }
        #con_bi{
            /* background-color: blue; */
            width: 100%;
            height: 74%;
        }
        #con_bi>div{
            height: 100%;
            width: 25%;
            /* border: 1px solid red; */
            float: left;
        }
        #con_bi_1a{
            border: 1px solid rgb(215, 218, 215);
            height: 220px;
            width: 220px;
            margin: auto;
            position: relative;
            top: 20px;
        }
        #con_text{
            text-align: center;
            /* background-color: blue; */
            position: relative;
            top: 25px;
            height: 20px;
            width: 100%;
        }
        #con_text>div{
            padding: 1px;
        }
        #con_text_title{
            font-size: 17px;
            font-weight: 600;
            color: rgb(66, 66, 66);
        }
        #con_text_author{
            font-size: 14px;
            font-weight: 400;
            color: rgb(133, 131, 131);
        }
        #con_text_pri{
            font-weight: 600;
            color: rgb(34, 34, 138);
        }


    </style>
</head>
<body>


    <div id="content">
        <div id="banner">
            <img src="resources/배너예시.png" alt="">
        </div>
        <div id="con_menu">
            <div><button type="button"><img src="resources/메인new.png" alt="" style="width: 25px; height: 25px; margin: auto;"></button></button>신간</div>
            <div><button><img src="resources/best.png" alt="" style="width: 32px; height: 33px; margin: auto;"></button>베스트</div>
            <div><button><img src="resources/stamp.png" alt="" style="width: 40px; height: 45px; margin: auto;"></button></button>출석체크</div>
            <div><button><img src="resources/postage-stamp.png" alt="" style="width: 38px; height: 40px; margin: auto;"></button></button>통합리뷰</div>
            <div><button><img src="resources/location.png" alt="" style="width: 38px; height: 40px; margin: auto;"></button></button>매장찾기</div>
        </div>
        <div id="con_best">
            <div id="con_bt">
                베스트 셀러
            </div>
            <div id="con_bi">
                <div id="con_bi_1">
                    <div id="con_bi_1a">
                        <img src="" alt="" style="height: 160px; width: 130px; display: block; margin: auto;
                                            position: relative; top: 25px;">
                    </div>
                    <div id="con_text">
                        <div id="con_text_title">책 제목</div>
                        <div>
                            <div id="con_text_author">지은이,회사</div>
                        </div>
                        <div id="con_text_pri">3000원</div>
                    </div>
                </div>
                <div id="con_bi_1">
                    <div id="con_bi_1a">
                        <img src="" alt="" style="height: 160px; width: 130px; display: block; margin: auto;
                                            position: relative; top: 25px;">
                    </div>
                    <div id="con_text">
                        <div id="con_text_title">책 제목</div>
                        <div>
                            <div id="con_text_author">지은이,회사</div>
                        </div>
                        <div id="con_text_pri">3000원</div>
                    </div>
                </div>
                <div id="con_bi_1">
                    <div id="con_bi_1a">
                        <img src="" alt="" style="height: 160px; width: 130px; display: block; margin: auto;
                                            position: relative; top: 25px;">
                    </div>
                    <div id="con_text">
                        <div id="con_text_title">책 제목</div>
                        <div>
                            <div id="con_text_author">지은이,회사</div>
                        </div>
                        <div id="con_text_pri">3000원</div>
                    </div>
                </div>
                <div id="con_bi_1">
                    <div id="con_bi_1a">
                        <img src="" alt="" style="height: 160px; width: 130px; display: block; margin: auto;
                                            position: relative; top: 25px;">
                    </div>
                    <div id="con_text">
                        <div id="con_text_title">책 제목</div>
                        <div>
                            <div id="con_text_author">지은이,회사</div>
                        </div>
                        <div id="con_text_pri">3000원</div>
                    </div>
                </div>
            </div>
        </div>
        <div id="con_new">
            <div id="con_bt">
                화제의 신간
            </div>
            <div id="con_bi">
                <div id="con_bi_1">
                    <div id="con_bi_1a">
                        <img src="" alt="" style="height: 160px; width: 130px; display: block; margin: auto;
                                            position: relative; top: 25px;">
                    </div>
                    <div id="con_text">
                        <div id="con_text_title">책 제목</div>
                        <div>
                            <div id="con_text_author">지은이,회사</div>
                        </div>
                        <div id="con_text_pri">3000원</div>
                    </div>
                </div>
                <div id="con_bi_1">
                    <div id="con_bi_1a">
                        <img src="" alt="" style="height: 160px; width: 130px; display: block; margin: auto;
                                            position: relative; top: 25px;">
                    </div>
                    <div id="con_text">
                        <div id="con_text_title">책 제목</div>
                        <div>
                            <div id="con_text_author">지은이,회사</div>
                        </div>
                        <div id="con_text_pri">3000원</div>
                    </div>
                </div>
                <div id="con_bi_1">
                    <div id="con_bi_1a">
                        <img src="" alt="" style="height: 160px; width: 130px; display: block; margin: auto;
                                            position: relative; top: 25px;">
                    </div>
                    <div id="con_text">
                        <div id="con_text_title">책 제목</div>
                        <div>
                            <div id="con_text_author">지은이,회사</div>
                        </div>
                        <div id="con_text_pri">3000원</div>
                    </div>
                </div>
                <div id="con_bi_1">
                    <div id="con_bi_1a">
                        <img src="" alt="" style="height: 160px; width: 130px; display: block; margin: auto;
                                            position: relative; top: 25px;">
                    </div>
                    <div id="con_text">
                        <div id="con_text_title">책 제목</div>
                        <div>
                            <div id="con_text_author">지은이,회사</div>
                        </div>
                        <div id="con_text_pri">3000원</div>
                    </div>
                </div>
            </div>
        </div>
        <div id="con_pro">
            <div id="con_bt">
                쇼핑
            </div>
            <div id="con_bi">
                <div id="con_bi_1">
                    <div id="con_bi_1a">
                        <img src="" alt="" style="height: 160px; width: 130px; display: block; margin: auto;
                                            position: relative; top: 25px;">
                    </div>
                    <div id="con_text">
                        <div id="con_text_title">책 제목</div>
                        <div>
                            <div id="con_text_author">지은이,회사</div>
                        </div>
                        <div id="con_text_pri">3000원</div>
                    </div>
                </div>
                <div id="con_bi_1">
                    <div id="con_bi_1a">
                        <img src="" alt="" style="height: 160px; width: 130px; display: block; margin: auto;
                                            position: relative; top: 25px;">
                    </div>
                    <div id="con_text">
                        <div id="con_text_title">책 제목</div>
                        <div>
                            <div id="con_text_author">지은이,회사</div>
                        </div>
                        <div id="con_text_pri">3000원</div>
                    </div>
                </div>
                <div id="con_bi_1">
                    <div id="con_bi_1a">
                        <img src="" alt="" style="height: 160px; width: 130px; display: block; margin: auto;
                                            position: relative; top: 25px;">
                    </div>
                    <div id="con_text">
                        <div id="con_text_title">책 제목</div>
                        <div>
                            <div id="con_text_author">지은이,회사</div>
                        </div>
                        <div id="con_text_pri">3000원</div>
                    </div>
                </div>
                <div id="con_bi_1">
                    <div id="con_bi_1a">
                        <img src="" alt="" style="height: 160px; width: 130px; display: block; margin: auto;
                                            position: relative; top: 25px;">
                    </div>
                    <div id="con_text">
                        <div id="con_text_title">책 제목</div>
                        <div>
                            <div id="con_text_author">지은이,회사</div>
                        </div>
                        <div id="con_text_pri">3000원</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <pre>

    </pre>
      
      <div>
      	추후 삭제 예정
     	                    <a href="/SemiProject/map.co">찾아오시는 길</a>      	
      </div>
</body>