<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>카카오톡상담</title>
    <link rel="stylesheet" href="../../resources/css/kakao.css">
    <link rel="stylesheet" href="../../resources/css/common.css">
    <link rel="stylesheet" href="../../resources/css/slick.css">
    <link rel="stylesheet" href="../../resources/css/slick-theme.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../../resources/js/slick.js"></script>
    <script src="../../resources/js/slick.min.js"></script>
    <script src="../../resources/js/script.js"></script>
    <script>
    $(function() {
    	$("#search_car").click(function() {

    		var brand = $("#s_brand").val();
    		var car_type = $("#s_car_type").val();
    		var oil_type = $("#s_oil_type").val();
    		
    		if(brand =="제조사")
    			brand = "";
    		if(car_type =="차종")
    			car_type = "";
    		if(oil_type =="연료")
    			oil_type = "";
    		
    		if($("#rent").is(":checked")){
    			window.location.href="/Search/Long_term?cpage=1&brand="+brand+"&car_type="+car_type+"&oil_type="+oil_type;	
    		}
    		else if($("#lease").is(":checked")){
    			window.location.href="/Search/Autolease?cpage=1&brand="+brand+"&car_type="+car_type+"&oil_type="+oil_type;
    		}
    	});
    })
    </script>
</head>
<body>

<section id="side-wrap">
		<div class="side">
			<ul>
				<li class="fast side-con">
					<a href="/Request/Ask#target">
						<h3>견적<br>문의</h3>
					</a>
				</li>
				<li class="kakao side-con">
					<a href="https://open.kakao.com/o/sGa2PF9" target="blank">
					</a>
				</li>
				<li class="youtube side-con">
				<a href="https://www.youtube.com/channel/UCX444PunwlwLwhQDXSXF76A"  target="blank">
						
					</a>
				</li>
				<li class="n_blog side-con">
				 <a href="#"  target="blank">
					
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
	
	
 <header id="header">
		<div class="logo">
			<div class="logo_part">
				<div class="logo_img"><a href="/"></a></div>
				<div class="menu_part">
					<ul>
						<li>
							<h3>장기렌트 vs 오토리스</h3>
							<ul>
								<li><a href="/Compare/About_long#target">장기렌트란?</a></li>
								<li><a href="/Compare/About_auto#target">오토리스란?</a> </li>
								<li><a href="/Compare/Comparea#target">상품별 비교</a></li>
								<li><a href="/Compare/Step#target">진행절차</a></li>
							</ul>
						</li>
						<li>
							<h3>차량검색</h3>
							<ul>
								<li><a href="/Search/Long_term?cpage=1#target">장기렌트</a></li>
								<li><a href="/Search/Autolease?cpage=1#target">오토리스</a></li>
							</ul>
						</li>
						<li>
							<h3>견적문의</h3>
							<ul>
								<li><a href="/Request/Ask#target">간편견적신청</a></li>
								<li><a href="/Request/Kakao#target">카카오톡상담</a></li>
							</ul>
						</li>
						<li>
							<h3>프로모션</h3>
							<ul>
								<li><a href="/Promotion/Popular?cpage=1#target">인기 차종</a></li>
								<li><a href="/Promotion/Hotdeal?cpage=1#target">이달의 핫딜</a></li>
							</ul>
						</li>
						<li>
							<h3>커뮤니티</h3>
							<ul>
								<li><a href="/Community/Review?cpage=1#target">계약서 작성후기</a></li>
								<li><a href="/Community/Review_car?cpage=1#target">차량 출고 후기</a></li>
								<li><a href="/Community/Info?cpage=1#target">장기렌트 & 리스 정보</a></li>
							</ul>
						</li>
						<li>
							<h3>회사소개</h3>
							<ul>
								<li><a href="/Company/About#target">스마일 소개</a></li>
								<li><a href="/Company/Question#target">자주묻는 질문</a></li>
								<li><a href="/Company/Partnership#target">제휴문의</a></li>
								<li><a href="/Company/Recruit#target">채용안내</a></li>
								<li><a href="/Company/Map#target">찾아오시는 길</a></li>
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
						<li><a href="/Compare/About_long#target">- 장기렌트란?</a></li>
						<li><a href="/Compare/About_auto#target">- 오토리스란?</a> </li>
						<li><a href="/Compare/Comparea#target">- 상품별 비교</a></li>
						<li><a href="/Compare/Step#target">- 진행절차</a></li>
					</ul>
				</li>
				<li>
					<h3>차량검색</h3>
					<div></div>
					<ul>
						<li><a href="/Search/Long_term?cpage=1#target">- 장기렌트</a></li>
						<li><a href="/Search/Autolease?cpage=1#target">- 오토리스</a></li>
					</ul>
				</li>
				<li>
					<h3>견적문의</h3>
					<div></div>
					<ul>
						<li><a href="/Request/Ask#target">- 간편견적신청</a></li>
						<li><a href="/Request/Kakao#target">- 카카오톡상담</a></li>
					</ul>
				</li>
				<li>
					<h3>프로모션</h3>
					<div></div>
					<ul>
						<li><a href="/Promotion/Popular?cpage=1#target">- 인기 차종</a></li>
						<li><a href="/Promotion/Hotdeal?cpage=1#target">- 이달의 핫딜</a></li>
					</ul>
				</li>
				<li>
					<h3>커뮤니티</h3>
					<div></div>
					<ul>
						<li><a href="/Community/Review?cpage=1#target">- 계약서 작성후기</a></li>
						<li><a href="/Community/Review_car?cpage=1#target">- 차량 출고 후기</a></li>
						<li><a href="/Community/Info?cpage=1#target">- 장기렌트 & 리스 정보</a></li>
					</ul>
				</li>
				<li>
					<h3>회사소개</h3>
					<div></div>
					<ul>
						<li><a href="/Company/About#target">- 스마일 소개</a></li>
						<li><a href="/Company/Question#target">- 자주묻는 질문</a></li>
						<li><a href="/Company/Partnership#target">- 제휴문의</a></li>
						<li><a href="/Company/Recruit#target">- 채용안내</a></li>
						<li><a href="/Company/Map#target">- 찾아오시는 길</a></li>
					</ul>
				</li>
			</ul>
		</div>


	</header>

	<section id="slide_img">
		<div class="post slide">
			<div class="cont visual-txt">
                <h3 class="inner-txt inner-txt-1">누적고객 <span>72,487명</span></h3>
                <h4 class="inner-txt inner-txt-2">월 평균 견적서 2871건 매일 100건 이상</h4>
            </div>
		</div>
		<div class="post slide">
			<div class="cont visual-txt">
                <h3 class="inner-txt inner-txt-1">신차 구입은 역시 <span>"최저가"</span> </h3>
                <h4 class="inner-txt inner-txt-2">이어야만 합니다.</h4>
            </div>
		</div>
		<div class="post slide">
			<div class="cont visual-txt">
                <h3 class="inner-txt inner-txt-1">스마일장기렌트카에서 <span>쉽고 빠르게</span></h3>
                <h4 class="inner-txt inner-txt-2">최저가를 확인하세요</h4>
            </div>
		</div>
	</section>
	
	<div id="target"></div>

	<section class="searchbox">
		<div class="m-searchbtn">
			<p>간편차량검색</p>
			<div class="cross">
				<div class="cross01"></div>
				<div class="cross02"></div>
			</div>
		</div>
		<ul>
			<li class="searchbox-list searchbox-listnone">
				<p class="search-title">간편차량검색</p>
			</li>
			<li class="searchbox-list">
				<div class="lbox">구입조건</div>
				<div class="rbox">
					<label for="rent"><input class="radioopt" type="radio" id="rent" value="rent" name="search">렌트</label>
					<label for="lease"><input class="radioopt" type="radio" id="lease" value="lease" name="search">리스</label>
				</div>
			</li>
			<li class="searchbox-list">
				<div class="lbox">제조사</div>
				<div class="rbox">
					<img class="select-btn" src="../../resources/img/img/triangle_icon.png" alt="화살표">
					<select name="company" id="s_brand" class="selec-op">
						<option value="제조사">제조사</option>
						<option value="현대">현대</option>
						<option value="기아">기아</option>
						<option value="제네시스">제네시스</option>
						<option value="쉐보레">쉐보레</option>
						<option value="쌍용">쌍용</option>
						<option value="르노삼성">르노삼성</option>
						<option value="벤츠">벤츠</option>
						<option value="BMW">BMW</option>
						<option value="아우디">아우디</option>
						<option value="폭스바겐">폭스바겐</option>
						<option value="볼보">볼보</option>
						<option value="마세라티">마세라티</option>
						<option value="미니">미니</option>
						<option value="재규어">재규어</option>
						<option value="랜드로버">랜드로버</option>
						<option value="푸조">푸조</option>
						<option value="시트로엥">시트로엥</option>
						<option value="롤스로이스">롤스로이스</option>
						<option value="벤틀리">벤틀리</option>
						<option value="포르쉐">포르쉐</option>
						<option value="람보르기니">람보르기니</option>
						<option value="페라리">페라리</option>
						<option value="크라이슬러">크라이슬러</option>
						<option value="지프">지프</option>
						<option value="포드">포드</option>
						<option value="링컨">링컨</option>
						<option value="캐딜락">캐딜락</option>
						<option value="렉서스">렉서스</option>
						<option value="토요타">토요타</option>
						<option value="혼다">혼다</option>
						<option value="인피니티">인피니티</option>
						<option value="닛산">닛산</option>
					</select>
				</div>
			</li>
			<li class="searchbox-list">
				<div class="lbox">차종</div>
				<div class="rbox">
					<img class="select-btn" src="../../resources/img/img/triangle_icon.png" alt="화살표">
					<select name="carop" id="s_car_type" class="selec-op">
						<option value="차종">차종</option>
						<option value="경차">경차</option>
						<option value="소형">소형</option>
						<option value="준중형">준중형</option>
						<option value="중형">중형</option>
						<option value="준대형">준대형</option>
						<option value="대형">대형</option>
						<option value="소형SUV">소형SUV</option>
						<option value="중형SUV">중형SUV</option>
						<option value="대형SUV">대형SUV</option>
						<option value="RV">RV</option>
						<option value="승합">승합</option>
						<option value="상용차">상용차</option>
						<option value="스포츠카">스포츠카</option>
						<option value="박스카">박스카</option>
					</select>
				</div>
			</li>


			<li class="searchbox-list">
				<div class="lbox">연료</div>
				<div class="rbox">
					<img class="select-btn" src="../../resources/img/img/triangle_icon.png" alt="화살표">
					<select name="fuel" id="s_oil_type" class="selec-op">
						<option value="연료">연료</option>
						<option value="가솔린">가솔린</option>
						<option value="디젤">디젤</option>
						<option value="LPG">LPG</option>
						<option value="전기">전기</option>
						<option value="가솔린+전기">가솔린+전기</option>
						<option value="디젤+전기">디젤+전기</option>
						<option value="가솔린+LPG">가솔린+LPG</option>
						<option value="수소">수소</option>
					</select>
				</div>
			</li>

			<li class="searchbox-list">
				<button id="search_car" class="search-btn">차량검색</button>
			</li>
		</ul>
	</section>

    <section id="main">
        <div class="bg">
            <div class="title">
                <h3 class="a">카카오톡상담</h3>
                <p>KAKAO</p>
            </div>
        </div>
    </section>

    <section id="title">
        <div class="title">
            <h1 class="a">카카오 상담</h1>
            <p class="a">카카오톡의 친구로 등록하여 최신정보와 다양한 혜택을 누리세요!</p>
        </div>
    </section>

    <section id="img">
        <div class="cont">
            <div class="img_part">
            	<img src="../../resources/img/img/kakao01.jpg" alt="카카오채널01">
            	<img src="../../resources/img/img/kakao02.png" alt="카카오채널02">
            </div>
        </div>
    </section>

	<section id="button">
		<div class="cont">
			<div class="button">
				<button><a href="https://open.kakao.com/o/sGa2PF9" target="blank"  class="a">실시간 문의하기</a></button>
			</div>
		</div>
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



</body>
</html>