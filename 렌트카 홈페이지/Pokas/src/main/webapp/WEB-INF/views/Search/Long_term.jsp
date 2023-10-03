<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>장기렌트</title>
    <link rel="stylesheet" href="../../resources/css/common.css">
    <link rel="stylesheet" href="../../resources/css/long_term.css">
    <link rel="stylesheet" href="../../resources/css/slick.css">
    <link rel="stylesheet" href="../../resources/css/slick-theme.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../../resources/js/slick.js"></script>
    <script src="../../resources/js//slick.min.js"></script>
   
    <script src="../../resources/js/script.js"></script>
    <script src="../../resources/js/long_term.js"></script>
    
    <script>
    function deletefunc(id) {
 		 $.ajax({
		 			url : "/Search/Car_rent_delete",
		 			type : "post",
		 			dataType : "json",
		 			data : {
		 				"r_no" : id
		 			},
		 			success : function(response) {
		 				window.location.reload();
		 			}
		 					
		 	});
 		window.location.reload();
 	};
 	
 	function updatefunc(id) {
 		window.location.href="/Search/Car_update?id="+id;
 	}
 	
    $(function() {
    	function getParameterByName(name) {
	        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
	        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
	                results = regex.exec(location.search);
	        return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
	    };
    	
    	var oil_type="";
    	var car_type="";
    	var brand="";


		$('input:checkbox[value="'+getParameterByName('brand')+'"]').prop("checked",true);	
		$('input:checkbox[value="'+getParameterByName('oil_type')+'"]').prop("checked",true);	
		$('input:checkbox[value="'+getParameterByName('car_type')+'"]').prop("checked",true);	


    	$("#search_btn").click(function() {
    		if($("#search_text").val() != ""){
    			window.location.href="/Search/Long_term?capge=1&brand="+$("#search_text").val()+"&car_type="+car_type+"&oil_type="+oil_type+"#target";
    		}
    		
    		
    		if($("input:checkbox[id='brand']").is(":checked") == true)
        	{
    			
    			
    			brand = "";
    			$("input:checkbox[id='brand']:checked").each(function() { 
    				
    				var test = $(this).val();
    				if(brand ==""){
    					brand = test;
    				}
    				else {
    					brand = brand + ',' + test;
    				}
    				
    			 });

    		
        	}
    		
    		if($("input:checkbox[id='oil_type']").is(":checked") == true)
        	{
    			oil_type = "";
					$("input:checkbox[id='oil_type']:checked").each(function() { 
    				
    				var test = $(this).val();
    				if(oil_type ==""){
    					oil_type = test;
    				}
    				else {
    					oil_type = oil_type + ',' + test;
    				}
    				
    			 });
        	}
    		
    		if($("input:checkbox[id='car_type']").is(":checked") == true)
    		{
				car_type = "";
					$("input:checkbox[id='car_type']:checked").each(function() { 
    				
    				var test = $(this).val();
    				if(car_type ==""){
    					car_type = test;
    				}
    				else {
    					car_type = car_type + ',' + test;
    				}
    				
    			 });
	
    		}
        	window.location.href="/Search/Long_term?capge=1&brand="+brand+"&car_type="+car_type+"&oil_type="+oil_type+"#target";
    		
    		
    	});
    	
    	
    	
    });
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
				 <a href="https://www.youtube.com/channel/UCX444PunwlwLwhQDXSXF76A" target="blank">
					
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

    <section id="main">
        <div class="bg">
            <div class="title">
                <h3 class="a">장기렌트</h3>
                <p>LONG-TERM RENTAL</p>
            </div>
        </div>
    </section>

       <section id="search">
            <div class="cont">
                <div class="title">
                    <h2>차량검색</h2>
                </div>
                
                <div class="part">
                    <div class="table">
                        <ul>
                            <li class="logo">
                                <div class="title_ul">
                                    <h3>브랜드</h3>
                                </div>
                                <div class="logo_part">                        
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="제네시스">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_01.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="현대">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_02.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="기아">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_03.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="르노삼성">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_04.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="쌍용">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_05.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="쉐보레">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_06.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="벤츠">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_07.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="BMW">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_08.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="아우디">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_09.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="마세라티">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_10.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="포르쉐">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_11.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="람보르기니">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_12.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="페라리">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_13.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="롤스로이스">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_14.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="벤틀리">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_15.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="애스터마틴">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_16.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="맥라렌">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_17.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="볼보">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_18.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="랜드로버">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_19.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="폭스바겐">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_20.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="재규어">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_21.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="푸조">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_22_1.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="토요타">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_23.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="렉서스">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_24.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="포드">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_25.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="링컨">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_26.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="지프">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_27.png&quot;);"></div>
								    </label>
								    </div>
								    
								    <div class="brand_wrap">
								    <input type="checkbox" id="brand" value="혼다">
								    <label for="check" style="width:100%;">
								        <div class="logo_img" style="background-image: url(&quot;../resources/img/img/brand_28.png&quot;);"></div>
								    </label>
								    </div>
								    </div>
                                <div class="button">
                                    <button><a href=""></a></button>
                                </div>
                                <div class="plus">
                                    <h3>＋</h3>
                                </div>
                            </li>
                            <li class="car">
                                <div class="title_ul">
                                    <h3>차종</h3>
                                </div>
                                <div class="logo_part">
                                    
                                
        <div class="each_part">
            <input type="checkbox" id="car_type" value="소형">
            <label for="check">
                <span>소형</span>
            </label>
        </div>       
 
    
        <div class="each_part">
            <input type="checkbox" id="car_type" value="경차">
            <label for="check">
                <span>경차</span>
            </label>
        </div>       
 
    
        <div class="each_part">
            <input type="checkbox" id="car_type" value="준중형">
            <label for="check">
                <span>준중형</span>
            </label>
        </div>       
 
    
        <div class="each_part">
            <input type="checkbox" id="car_type" value="중형">
            <label for="check">
                <span>중형</span>
            </label>
        </div>       
 
    
        <div class="each_part">
            <input type="checkbox" id="car_type" value="대형">
            <label for="check">
                <span>대형</span>
            </label>
        </div>       
 
    
        <div class="each_part">
            <input type="checkbox" id="car_type" value="소형SUV">
            <label for="check">
                <span>소형SUV</span>
            </label>
        </div>       
 
    
        <div class="each_part">
            <input type="checkbox" id="car_type" value="중형SUV">
            <label for="check">
                <span>중형SUV</span>
            </label>
        </div>       
 
    
        <div class="each_part">
            <input type="checkbox" id="car_type" value="대형SUV">
            <label for="check">
                <span>대형SUV</span>
            </label>
        </div>       
 
    
        <div class="each_part">
            <input type="checkbox" id="car_type" value="RV">
            <label for="check">
                <span>RV</span>
            </label>
        </div>       
 
    
        <div class="each_part">
            <input type="checkbox" id="car_type" value="승합">
            <label for="check">
                <span>승합</span>
            </label>
        </div>       
 
    
        <div class="each_part">
            <input type="checkbox" id="car_type" value="상용차">
            <label for="check">
                <span>상용차</span>
            </label>
        </div>       
 
    
        <div class="each_part">
            <input type="checkbox" id="car_type" value="스포츠카">
            <label for="check">
                <span>스포츠카</span>
            </label>
        </div>       
 
    
        <div class="each_part">
            <input type="checkbox" id="car_type" value="박스카">
            <label for="check">
                <span>박스카</span>
            </label>
        </div>       
         </div>

                                <div class="button">
                                    <button><a href=""></a></button>
                                </div>
                                <div class="plus">
                                    <h3>＋</h3>
                                </div>
                            </li>
                            <li class="oil">
                                <div class="title_ul">
                                    <h3>연료</h3>
                                </div>
                                <div class="logo_part">
                                    
                                
        <div class="each_part">
            <input type="checkbox" id="oil_type" value="디젤">
            <label for="check">
                <span>디젤</span>
            </label>
        </div>   
    
        <div class="each_part">
            <input type="checkbox" id="oil_type" value="가솔린">
            <label for="check">
                <span>가솔린</span>
            </label>
        </div>   
    
        <div class="each_part">
            <input type="checkbox" id="oil_type" value="LPG">
            <label for="check">
                <span>LPG</span>
            </label>
        </div>   
    
        <div class="each_part">
            <input type="checkbox" id="oil_type" value="전기">
            <label for="check">
                <span>전기</span>
            </label>
        </div>   
    
        <div class="each_part">
            <input type="checkbox" id="oil_type" value="가솔린+전기">
            <label for="check">
                <span>가솔린+전기</span>
            </label>
        </div>   
    
        <div class="each_part">
            <input type="checkbox" id="oil_type" value="디젤+전기">
            <label for="check">
                <span>디젤+전기</span>
            </label>
        </div>   
    
        <div class="each_part">
            <input type="checkbox" id="oil_type" value="가솔린+LPG">
            <label for="check">
                <span>가솔린+LPG</span>
            </label>
        </div>   
    
        <div class="each_part">
            <input type="checkbox" id="oil_type" value="수소">
            <label for="check">
                <span>수소</span>
            </label>
        </div>    
    </div>
                             
                            </li>
                        </ul>
                </div>
            </div>
        </section>  

    <section id="all">
        <nav id="all_search">
            <form>
                <input type="text" id="search_text">
            </form>
            <button id="search_btn">검색</button>
        </nav>
        <div class="cont">
            <div class="title">
                <h1>전체 차량</h1>
            </div>  
            <!-- <div class="img_all">
                <c:forEach var="rent" items="${list}" begin="0" end="7"> 
                <div class="right_part">
                    <div class="img">
                        <img src="/resources/img/${rent.image}" style="width: 100%; height: 100%;">
                    </div>
                    <div class="text">
                        <h3><c:out value="${rent.brand}"/> <c:out value="${rent.name}"/></h3>
                        <p><fmt:formatNumber value="${rent.price}" pattern="#,###" /><span> 원</span></p>
                        <h4><c:out value="${rent.size}"/> <c:out value="${rent.oil_type}"/> 연비 <c:out value="${rent.oil_rate}"/>km/l</h4>
                    </div>
                    <button><a href="/Request/Ask?type=1&car_type=${rent.size}">신청하기</a></button>
                </div>  
                </c:forEach>
            </div> -->
<!--핫딜 버전-->
<c:forEach var="rent" items="${list}"> 
<div class="box">
            <div class="left_part">
                <div class="img" style="
    width: 100%;
    height:auto;
">
                	<img src="../../resources/img/${rent.image}" style="
    width: 100%;
    height:auto;
    vertical-align: bottom;
">
                </div>
            </div>
            <div class="right_part" style="
    padding-top: 0px;
    padding-bottom: 0px;
">
                <div class="top">
                    <h1><c:out value="${rent.name}"/></h1>
                </div>
                <div class="middle">
                    <table>
                        <tr>
                            <td>상품</td><td>
                            <c:choose>
                            <c:when test="${rent.type eq '1'}">
                            	장기렌트
                            </c:when>
                            <c:otherwise>
                            	오토리스
                            </c:otherwise>
                            </c:choose>
                            
                            
                            </td><td>연료</td><td><c:out value="${rent.oil_type}"/></td>
                        </tr>
                        <tr>
                            <td>연비</td><td><c:out value="${rent.oil_rate}"/>km/l</td>
                             <td>브랜드</td><td><c:out value="${rent.brand}"/></td>
                        </tr>
                        <tr>
                            <td>사이즈</td><td><c:out value="${rent.size}"/></td>
                            <td>초기비용</td><td><c:out value="${rent.initcost}"/>원</td>
                        </tr>
                    </table>
                </div>
                <div class="bottom">
                    <div class="money">
                        <span><fmt:formatNumber value="${rent.price}" pattern="#,###" />원</span>
                    </div>
                    <button><a href="/Request/Ask?type=0&car_type=${rent.name}#target">
                        <h2>고객맞춤</h2>
                        <h2>상담신청</h2>
                    </a></button>
                </div>
            </div>
             <c:choose>
                <c:when test="${not empty mdto}">
		<div class="write_button">
            	<button onclick="updatefunc(${rent.id});" class="write">수정</button>
            	<button onclick="deletefunc(${rent.id});" class="write">삭제</button>
            </div>
		</c:when>
		<c:otherwise>
		</c:otherwise>
		</c:choose> 
        </div>
        </c:forEach>
    	</div>
	

            <div class="cont_button">
	         	<div class="navi">
					${navi}
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