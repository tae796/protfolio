<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="../../resources/css/ask.css">
    <link rel="stylesheet" href="../../resources/css/common.css">
    <link rel="stylesheet" href="../../resources/css/slick.css">
    <link rel="stylesheet" href="../../resources/css/slick-theme.css">
    <link rel="stylesheet" href="../../resources/css/write.css" type="text/css">
    <script  src="https://code.jquery.com/jquery-3.6.0.min.js"  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="../../resources/js/slick.js"></script>
    <script src="../../resources/js/slick.min.js"></script>
    <script src="../../resources/js/script.js"></script>
    

</head>
<body>
<section id="side-wrap">
		<div class="side">
			<ul>
				<li class="fast side-con">
					<a href="/Request/Ask">
						<h3>회원<br>가입</h3>
					</a>
				</li>
				<li class="kakao side-con">
					<a href="https://open.kakao.com/o/sGa2PF9" target="blank">
					</a>
				</li>
				<li class="youtube side-con">
					<a href=""  target="blank">
						
					</a>
				</li>
				<li class="top side-con">
					<a href="">
						<h3>TOP</h3>
					</a>
				</li>
			</ul>
		</div>
		
	</section>

	<script>
		window.onscroll = function() {scrollFunction()};

		function scrollFunction() {
			if(document.body.scrollTop > 500 || document.documentElement.scrollTop > 500){
				document.getElementById('side-wrap').style.top = '40%';
			}else{
				document.getElementById('side-wrap').style.top = '40%';
			}
		}
	</script>
	
	<c:choose>
      <c:when test="${not empty mdto}">
		
	<header id="header">
		<div class="logo">
			<div class="logo_part">
				<div class="logo_img"><a href="/"></a></div>
				<div class="menu_part">
					<ul>
						<li>
							<h3>장기렌트 vs 오토리스</h3>
							<ul>
								<li><a href="/Compare/About_long">장기렌트란?</a></li>
								<li><a href="/Compare/About_auto">오토리스란?</a> </li>
								<li><a href="/Compare/Compare">상품별 비교</a></li>
								<li><a href="/Compare/Step">진행절차</a></li>
							</ul>
						</li>
						<li>
							<h3>차량검색</h3>
							<ul>
								<li><a href="/Search/Long_term?cpage=1">장기렌트</a></li>
								<li><a href="/Search/Autolease?cpage=1">오토리스</a></li>
							</ul>
						</li>
						<li>
							<h3>견적문의</h3>
							<ul>
								<li><a href="/Request/Ask">간편견적신청</a></li>
								<li><a href="/Request/Kakao">카카오톡상담</a></li>
							</ul>
						</li>
						<li>
							<h3>프로모션</h3>
							<ul>
								<li><a href="/Promotion/Popular?cpage=1">인기 차종</a></li>
								<li><a href="/Promotion/Hotdeal?cpage=1">이달의 핫딜</a></li>
							</ul>
						</li>
						<li>
							<h3>커뮤니티</h3>
							<ul>
								<li><a href="/Community/Review?cpage=1">계약서 작성후기</a></li>
								<li><a href="/Community/Review_car?cpage=1">차량 출고 후기</a></li>
								<li><a href="/Community/Info?cpage=1">장기렌트 & 리스 정보</a></li>
							</ul>
						</li>
						<li>
							<h3>회사소개</h3>
							<ul>
								<li><a href="/Company/About">스마일 소개</a></li>
								<li><a href="/Company/Question">자주묻는 질문</a></li>
								<li><a href="/Company/Partnership">제휴문의</a></li>
								<li><a href="/Company/Recruit">채용안내</a></li>
								<li><a href="/Company/Map">찾아오시는 길</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="phone_part">
					<div class="phone">
						<a href="tel:1588-6636">
							<img src="../../resources/img/user_img/phone_01.png" alt="phone">
						</a>
					</div>
					<div class="menu">
						<span></span>
						<span></span>
						<span></span>
					</div>
				</div>
			</div>
		</div>
		<div class="bg"></div>
		

		<div class="gnb_mobile">
			<div class="close">
				<h3>×</h3>
			</div>
			<ul>
				<li>
					<h3>장기렌트 vs 오토리스</h3>
					<div></div>
					<ul>
						<li><a href="/Compare/About_long">- 장기렌트란?</a></li>
						<li><a href="/Compare/About_auto">- 오토리스란?</a> </li>
						<li><a href="/Compare/Compare">- 상품별 비교</a></li>
						<li><a href="/Compare/Step">- 진행절차</a></li>
					</ul>
				</li>
				<li>
					<h3>차량검색</h3>
					<div></div>
					<ul>
						<li><a href="/Search/Long_term?cpage=1">- 장기렌트</a></li>
						<li><a href="/Search/Autolease?cpage=1">- 오토리스</a></li>
					</ul>
				</li>
				<li>
					<h3>견적문의</h3>
					<div></div>
					<ul>
						<li><a href="/Request/Ask">- 간편견적신청</a></li>
						<li><a href="/Request/Kakao">- 카카오톡상담</a></li>
					</ul>
				</li>
				<li>
					<h3>프로모션</h3>
					<div></div>
					<ul>
						<li><a href="/Promotion/Popular?cpage=1">- 인기 차종</a></li>
						<li><a href="/Promotion/Hotdeal?cpage=1">- 이달의 핫딜</a></li>
					</ul>
				</li>
				<li>
					<h3>커뮤니티</h3>
					<div></div>
					<ul>
						<li><a href="/Community/Review?cpage=1">- 계약서 작성후기</a></li>
						<li><a href="/Community/Review_car?cpage=1">- 차량 출고 후기</a></li>
						<li><a href="/Community/Info?cpage=1">- 장기렌트 & 리스 정보</a></li>
					</ul>
				</li>
				<li>
					<h3>회사소개</h3>
					<div></div>
					<ul>
						<li><a href="/Company/About">- 스마일 소개</a></li>
						<li><a href="/Company/Question">- 자주묻는 질문</a></li>
						<li><a href="/Company/Partnership">- 제휴문의</a></li>
						<li><a href="/Company/Recruit">- 채용안내</a></li>
						<li><a href="/Company/Map">- 찾아오시는 길</a></li>
					</ul>
				</li>
			</ul>
		</div>


	</header>


    <section id="main">
        <div class="bg">
            <div class="title">
                <h3 class="a">회원가입</h3>
                <p>Join</p>
            </div>
        </div>
    </section>

    <section id="table">
    <form action ="/2848/Admin_writeproc" enctype="multipart/form-data" method="post" accept-charset="UTF-8">
        <div class="cont">
			<table>
				<tbody>

					<tr>
						<td class="name">아이디</td>
						<td class="table_cont cont_04">

							<input class="write-input" type='text' name='userid' style="margin-left: 0px;" />
							
						</td>
						
					</tr>
					<tr>
						<td class="name">비밀번호</td>
						<td class="table_cont cont_04">

							<input class="write-input" type='text' name='password' />

						</td>
					</tr>
					<tr>
						<td class="name">이름</td>
						<td class="table_cont cont_04">

							<input class="write-input" type='text' name='name' />

						</td>
					</tr>
					<tr>
						<td class="name">본부</td>
						<td class="table_cont cont_04">

							<input class="write-input" type='text' name='center' />

						</td>
					</tr>
					<tr>
						<td class="name">팀</td>
						<td class="table_cont cont_04">

							<input class="write-input" type='datetime' name='team' />

						</td>
					</tr>
				

					<tr>
						<td class="name">이미지</td>
						<td class="table_cont cont_05 filup-box">
							<input class="upload" value="첨부파일" placeholder="첨부파일">
							<label for="image" class="imageinput">파일선택</label>
							<input class="file-input" type="file" name="files" id="image" accept=".jpg">
						</td>

					</tr>

				</tbody>
			</table>
			<button><a href="">
					<h2 class="a">업로드하기</h2>
				</a></button>

		</div>
</form>
    </section>


	<footer>
		<div class="logo">
			<ul class="logo_slide">
				<li class="slide img_01"></li>
				<li class="slide img_02"></li>
				<li class="slide img_03"></li>
				<li class="slide img_04"></li>
				<li class="slide img_05"></li>
				<li class="slide img_06"></li>
				<li class="slide img_07"></li>
				<li class="slide img_08"></li>
			</ul>
		</div>
		<div class="bottom">
			<div class="last">
				<div class="logo"></div>
				<div class="cont">
					<p class="company">(주)스마일 장기렌트카</p>
					<p>대표자 : 김진택 | 등록번호 : 490-87-00975</p>
					<p>E-MAIL : king8205@hanmail.net | TEL : 1588-6636</p>
					<p>주소 : 경기도 광주시 경충대로 1977 4층 </p>
					<p>Copyright © 스마일 장기렌트카 All rights Reserved.</p>
				</div>
				<div class="cont cont02">
					<p class="center">고객센터</p>
					<div class="phone">
						<a href="tel:1588-6636">
							<img src="../../resources/img/user_img/footer_phone.png" alt="phone">
						</a>
					</div>
					<p>연중무휴 24시간 상담가능</p>
				</div>
			</div>
		</div>
	</footer>
	
	  </c:when>
<c:otherwise>
관리자 권한이 필요합니다 <br> <br> <br>
<a href="/2848/login">관리자 로그인하러가기</a>
</c:otherwise>
</c:choose> 
  

</body>
</html>