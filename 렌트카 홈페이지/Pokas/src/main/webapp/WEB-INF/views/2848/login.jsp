<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>스마일장기렌트카</title>
    <link rel="stylesheet" href="../../resources/css/style.css">
     <link rel="stylesheet" href="../../resources/css/login_style.css">

    <link rel="stylesheet" href="../../resources/css/common.css">
    <link rel="stylesheet" href="../../resources/css/slick.css">
    <link rel="stylesheet" href="../../resources/css/slick-theme.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="./js/slick.js"></script>
    <script src="./js/slick.min.js"></script>
    <script src="./js/script.js"></script>
    <title>관리자 로그인</title>
</head>
<body>
    <header id="header" style="height:90px; box-shadow: 0 0 5px rgba(0,0,0,0.5); position:inherit;">
        <div class="logo">
            <div class="logo_part">
                <div class="logo_img"><a href="./index.html"></a></div>
                <div>
                   
                </div>
            </div>
        </div>
        <div class="bg"></div>



    </header>

        <section style="margin:150px auto; max-width: 1440px;">
            <h2>관리자 로그인</h2>
            <form action="/2848/loginproc" method="post">
                <div class="login">
                    <div class="input">
                        <input id="userid" name="userid" value="" type="text" placeholder="아이디를 입력해주세요." required>
                        <input id="password" name="password" value="" type="password" placeholder="비밀번호를 입력해주세요." required>
                    </div>
                    <button type="submit" class="round-btn">로그인</button> 
                </div>
            </form>
        </section>
          

</body>
</html>