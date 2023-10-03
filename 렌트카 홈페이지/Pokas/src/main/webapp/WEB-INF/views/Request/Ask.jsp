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
    <script  src="https://code.jquery.com/jquery-3.6.0.min.js"  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="../../resources/js/slick.js"></script>
    <script src="../../resources/js/slick.min.js"></script>
    <script src="../../resources/js/script.js"></script>
    <script src="../../resources/js/script.js"></script>
    <script src="../../resources/js/msg.js"></script>
    <script>
    $(function() {
	    function getParameterByName(name) {
	        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
	        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
	                results = regex.exec(location.search);
	        return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
	    };
	    
	    $("#url").val(document.refer);
	    
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
	    
	    var type ="type";
	    type = getParameterByName(type);
	    var brand = "brand";
	    brand = getParameterByName(brand);
	    var car_type = "car_type"
	    car_type = getParameterByName(car_type);
	    
	    if(type == 0){
	    	$("#rent_radio").attr("checked",true);
	    	$("#auto_radio").attr("checked",false);
	    }
	    else if(type == 1){
	    	$("#rent_radio").attr("checked",false);
	    	$("#auto_radio").attr("checked",true);
	    }  
   		
		


	    switch (brand) {
	    case "현대":
	    	$("#brand").val("현대").prop("selected",true);
	    	break;
	    case "쉐보레":
	    	$("#brand").val("쉐보레").prop("selected",true);
	    	break;
	    case "기아":
	    	$("#brand").val("기아").prop("selected",true);
	    	break;
	    case "쌍용":
	    	$("#brand").val("쌍용").prop("selected",true);
	    	break;
	    case "르노삼성":
	    	$("#brand").val("르노삼성").prop("selected",true);
	    	break;
	    case "벤츠":
	    	$("#brand").val("벤츠").prop("selected",true);
	    	break;
	    case "제네시스":
	    	$("#brand").val("제네시스").prop("selected",true);
	    	break;
	    case "BMW":
	    	$("#brand").val("BMW").prop("selected",true);
	    	break;
	    default:
	    	$("#brand").val("브랜드").prop("selected",true);
	  }
	    
	  $("#car_type").val(car_type).prop("selected",true);

	    
	    
	    $("#submitbtn").click(function() {
	    	
	    	if($("#phone3").val()==""){
	    		alert("휴대폰 번호를 입력해주세요");
	    	}
	    	else{
	    		var type;
		    	if($('#rent_radio').is(':checked')){
		    		type = $("#rent_radio").val();
		    	}
		    		
		    	else {
		    		type = $("#auto_radio").val();
		    	}
		        var phone = $("#phone1").val() + $("#phone2").val() + $("#phone3").val();
		        var status ="견적대기";
		         $.ajax({      
		              type:"POST",  
		              url:"/Request/InsertProc",      
		              data: {
		            	  	type : type,
		            	  	brand : $("#brand").val(), 
		            	  	name : $("#name").val(),
		            	  	car_type : $("#car_type").val(),
		            	  	region : $("#region").val(),
		            	  	phone : phone,
		            	  	email : $("#email").val(),
		            	  	months : $("#months").val(),
		            	  	detail : $("#detail").val(),
		            	  	status : status
		            	  	
		              },
		              timeout:5000,
		              error:function(request, status, error) {
		                 javascript:alert("요청실패!<br/>다시 시도해 주세요.");
		               
		              },
		              success:function(responseObject){
		                 window.location.href="/Sms?name="+$("#name").val()+"&phone="+phone+"&type="+$("#car_type").val();
		              },
		              complete:function(event, request, settings){
		                 
		              }            
		            });
	    	}
	    	
	    	
	    	
	    })
	    
	    

	    var replaceId  = /[~!\#$%^&*\()\-=+_']/gi;
	        
	            
	            $("#table .cont table tr input").on("focusout", function() {
	                var x = $(this).val();
	                if (x.length > 0) {
	                    if (x.match(replaceId)) {
	                       x = x.replace(replaceId, "");
	                    }
	                    $(this).val(x);
	                }
	            }).on("keyup", function() {
	                $(this).val($(this).val().replace(replaceId, ""));

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
					<label for="rent"><input class="radioopt" type="radio" id="rent" value="1" name="search">렌트</label>
					<label for="lease"><input class="radioopt" type="radio" id="lease" value="2" name="search">리스</label>
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
                <h3 class="a">견적문의</h3>
                <p>QUOTE CONTACT</p>
            </div>
        </div>
    </section>

    <section id="table">
     <form id="MsgForm" name="MsgForm" method="POST" action="/Sms" onSubmit="return varcheck();">
     	<input type="hidden" name="strDest" value="01092853977">
     	<input type="hidden" name="strCallBack" value="01063592848">
        <div class="cont">
            <table>
                <tbody>
                    <tr>
                        <td class="name">상품</td><td class="table_cont cont_01">
                            
                                <input type="radio" id="rent_radio" value="1" name="type" checked>장기렌트
                                <input type="radio" id="auto_radio" value="2" name="type">오토리스
                            
                        </td>
                    </tr>
                    
                    <tr>
						<td class="name">이름 <br/> <span>*필수</span></td><td class="table_cont cont_04">
							<form name="이름" method="post">
								<input type='text' id='name' name='name'/>
							</form>
						</td>
					</tr>
                    
                    
                     <tr>
                        <td class="name">휴대폰 <br/> <span>*필수</span></td><td class="table_cont cont_04">
                            	<select name="phone" id="phone1" required/>
									<option value="010">010</option>
									<option value="031">031</option>
									<option value="032">032</option>
									<option value="033">033</option>
									<option value="041">041</option>
									<option value="042">042</option>
									<option value="043">043</option>
									<option value="044">044</option>
									<option value="051">051</option>
									<option value="052">052</option>
									<option value="053">053</option>
									<option value="054">054</option>
									<option value="055">055</option>
									<option value="056">056</option>
									<option value="061">061</option>
									<option value="062">062</option>
									<option value="063">063</option>
									<option value="064">064</option>
									<option value="067">067</option>
								</select> -
                                <input type='tel' name='phone' id="phone2" maxlength='4' required/> -
                            	<input type='tel' name='phone' id="phone3" maxlength='4' required/>
                        </td>
                    </tr>
                    
                    
                    <tr>
                        <td class="name">차종 <br/> <span>*필수</span></td><td class="table_cont cont_02">
                           <!-- <input type='text' id='brand' name='brand'/> -->
                           <input type='text' id='car_type' name='car_type'/> 
                           
                        </td>
                    </tr>
                    <tr>
                        <td class="name">지역</td><td class="table_cont cont_03">
                            <select name="region" id="region">
                                <option value="전체보기">전체보기</option>
                                <option value="서울">서울</option>
                                <option value="경기">경기</option>
                                <option value="인천">인천</option>
                                <option value="강원">강원</option>
                                <option value="경남">경남</option>
                                <option value="경북">경북</option>
                                <option value="전북">전북</option>
                                <option value="전남">전남</option>
                                <option value="충남">충남</option>
                                <option value="충북">충북</option>
                                <option value="제주">제주</option>
                            </select>
                    </td>
                    </tr>
                   
                    <tr>
                        <td class="name">이메일</td><td class="table_cont cont_05">
                                <input type='text' name='email' id="email" required />
                        </td>
                    </tr>
                    <tr>
                        <td class="name">개월수</td><td class="table_cont cont_06">
                            <select name="months" id ="months" required>
                            	<option value="0">-</option>
                                <option value="24">24개월</option>
                                <option value="36">36개월</option>
                                <option value="48">48개월</option>
                                <option value="60">60개월</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="name">문의</td><td class="table_cont cont_07">
                               <form name="box" method="post">
                            <textarea cols="50" rows="10" id="detail" name='detail' ></textarea>
                           </form>
                        </td>
                    </tr>
                </tbody>
            </table>
			
			<input type="hidden" id="url" name="url">
			
			<div class="button">
            	<button type="submit" id="submitbtn"><h2 class="a">견적요청하기</h2></button>
			</div>
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