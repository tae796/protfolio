<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>견적문의</title>
    <link rel="stylesheet" href="../../resources/css/ask.css">
    <link rel="stylesheet" href="../../resources/css/common.css">
    <link rel="stylesheet" href="../../resources/css/slick.css">
    <link rel="stylesheet" href="../../resources/css/slick-theme.css">
    <link rel="stylesheet" href="../../resources/css/write.css" type="text/css">
    <script  src="https://code.jquery.com/jquery-3.6.0.min.js"  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="../../resources/js/slick.js"></script>
    <script src="../../resources/js/slick.min.js"></script>
    <script src="../../resources/js/script.js"></script>
    
    <script>
    $(function() {
    	var text1 = $('#name');
		  text1.blur(function(){
		    alert("해당 게시글은 이미지가 필요합니다.");
		  });
  	
    	
	    function getParameterByName(name) {
	        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
	        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
	                results = regex.exec(location.search);
	        return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
	    };
    	
	    var type ="type";
	    type = getParameterByName(type);
	    var brand = "brand";
	    brand = getParameterByName(brand);
	    var car_type = "car_type"
	    car_type = getParameterByName(car_type);
	    
	    if(type == 1){
	    	$("#rent_radio").attr("checked",true);
	    	$("#auto_radio").attr("checked",false);
	    }
	    else{
	    	$("#rent_radio").attr("checked",false);
	    	$("#auto_radio").attr("checked",true);
	    }
   		
    })
    
    </script>
    
</head>
<body>
<!-- <section id="side-wrap">
		<div class="side">
			<ul>
				<li class="fast side-con">
					<a href="/Request/Ask">
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
		
	</section> -->

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
                <h3 class="a">차량등록</h3>
                <p>Car</p>
            </div>
        </div>
    </section>

    <section id="table">
    <form action ="/Search/Car_writeProc" enctype="multipart/form-data" method="post" accept-charset="UTF-8">
        <div class="cont">
			<table>
				<tbody>

					<tr>
						<td class="name">이름</td>
						<td class="table_cont cont_04">

							<input class="write-input" type='text' name='name' id="name" style="margin-left: 0px;" />

						</td>
					</tr>

					<tr>
						<td class="name">상품유형</td>
						<td class="table_cont cont_04">

								<select  class="write-input" name='type' style="margin-left: 0px;">
								<option value="">상품유형을 선택하세요</option>
								<option value="1">장기렌트</option>
								<option value="2">오토리스</option>
							</select>

						</td>
					</tr>
					<tr>
						<td class="name">사이즈</td>
						<td class="table_cont cont_04">

							<input class="write-input" type='text' name='size' />

						</td>
					</tr>
					<tr>
						<td class="name">브랜드</td>
						<td class="table_cont cont_04">

							<select name="brand" class="write-input" required>
								<option value="제네시스">제네시스</option>
								<option value="현대">현대</option>
								<option value="기아">기아</option>
								<option value="르노삼성">르노삼성</option>
								<option value="쌍용">쌍용</option>
								<option value="쉐보레">쉐보레</option>
								<option value="벤츠">벤츠</option>
								<option value="BMW">BMW</option>
								<option value="아우디">아우디</option>
								<option value="마세라티">마세라티</option>
								<option value="포르쉐">포르쉐</option>
								<option value="람보르기니">람보르기니</option>
								<option value="페라리">페라리</option>
								<option value="롤스로이스">롤스로이스</option>
								<option value="벤틀리">벤틀리</option>
								<option value="에스터마틴">에스터마틴</option>
								<option value="멕라렌">멕라렌</option>
								<option value="볼보">볼보</option>
								<option value="랜드로버">랜드로버</option>
								<option value="폭스바겐">폭스바겐</option>
								<option value="재규어">재규어</option>
								<option value="푸조">푸조</option>
								<option value="토요타">토요타</option>
								<option value="렉서스">렉서스</option>
								<option value="포드">포드</option>
								<option value="링컨">링컨</option>
								<option value="지프">지프</option>
								<option value="혼다">혼다</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class="name">연료</td>
						<td class="table_cont cont_04">

							<input class="write-input" type='text' name='oil_type' />

						</td>
					</tr>
					<tr>
						<td class="name">연비</td>
						<td class="table_cont cont_04">

							<input class="write-input" type='text' name='oil_rate' />

						</td>
					</tr>

					<tr>
						<td class="name">원</td>
						<td class="table_cont cont_05">

							<input class="write-input" type='num' name='price' />

						</td>
					</tr>
					<tr>
						<td class="name">초기 비용</td>
						<td class="table_cont cont_05">

							<input class="write-input" type='num' name='initcost' />

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

</body>
</html>