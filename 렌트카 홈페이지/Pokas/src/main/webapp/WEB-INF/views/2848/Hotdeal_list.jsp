<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">

<head>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>핫딜</title>
  <!-- Iconic Fonts -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="../../resources/admin/vendors/iconic-fonts/font-awesome/css/all.min.css" rel="stylesheet">
  <link rel="stylesheet" href="../../resources/admin/vendors/iconic-fonts/flat-icons/flaticon.css">
  <link rel="stylesheet" href="../../resources/admin/vendors/iconic-fonts/cryptocoins/cryptocoins.css">
  <link rel="stylesheet" href="../../resources/admin/vendors/iconic-fonts/cryptocoins/cryptocoins-colors.css">
  <!-- Bootstrap core CSS -->
  <link href="../../resources/admin/assets/css/bootstrap.min.css" rel="stylesheet">

  <!-- Page Specific Css (Datatables.css) -->
  <link href="../../resources/admin/assets/css/datatables.min.css" rel="stylesheet">

  <!-- jQuery UI -->
  <link href="../../resources/admin/assets/css/jquery-ui.min.css" rel="stylesheet">
  <!-- Costic Core styles -->
  <link href="../../resources/admin/assets/css/style.css" rel="stylesheet">
  <!-- Favicon -->
  <link rel="icon" type="image/png" sizes="32x32" href="../../favicon.ico">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<script>
    $(function() {
	    function getParameterByName(name) {
	        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
	        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
	                results = regex.exec(location.search);
	        return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
	    };
    	
	    var key ="key";
	    key = getParameterByName(key);
	    
	    
	    if(key != "edlclsjxm"){
			window.location.href="/";
	    }
	  
	    $("#writebtn").click(function() {
			window.location.href="/Promotion/Hot_write";
				
		 	}) 
	 
       $("#logoutbtn").click(function() {
        $.ajax({
    		 			url : "/2848/logout",
    		 			type : "post",
    		 			success : function(response) {
                window.location.href="/2848/login";
    		 			}
    		 	});
      })
	
	 $(".deletebtn").click(function() {
		 
		 var con = confirm("게시글를 삭제하시겠습니까?");
    		if(con == true) {
    			 var id = $(this).attr('id');
    			
    		 		$.ajax({
    		 			url : "/2848/Hotdeal_deleteProc",
    		 			type : "post",
    		 			dataType : "json",
    		 			data : {
    		 				"id" : id
    		 			},
    		 			success : function(response) {
    		 				window.location.reload();
    		 			}
    		 	});
    		 		
    		}
    		else {
    			
    		}
		
 	}) 
    })
    
    
    </script>


  <style>
    .table td, .table th {vertical-align:middle;}
  </style>

</head>

<body class="ms-body ms-aside-left-open ms-primary-theme ms-has-quickbar">


  <!-- Preloader -->
  <div id="preloader-wrap">
    <div class="spinner spinner-8">
      <div class="ms-circle1 ms-child"></div>
      <div class="ms-circle2 ms-child"></div>
      <div class="ms-circle3 ms-child"></div>
      <div class="ms-circle4 ms-child"></div>
      <div class="ms-circle5 ms-child"></div>
      <div class="ms-circle6 ms-child"></div>
      <div class="ms-circle7 ms-child"></div>
      <div class="ms-circle8 ms-child"></div>
      <div class="ms-circle9 ms-child"></div>
      <div class="ms-circle10 ms-child"></div>
      <div class="ms-circle11 ms-child"></div>
      <div class="ms-circle12 ms-child"></div>
    </div>
  </div>

  <!-- Overlays -->
  <div class="ms-aside-overlay ms-overlay-left ms-toggler" data-target="#ms-side-nav" data-toggle="slideLeft"></div>
  <div class="ms-aside-overlay ms-overlay-right ms-toggler" data-target="#ms-recent-activity" data-toggle="slideRight"></div>

  <!-- Sidebar Navigation Left -->
  <aside id="ms-side-nav" class="side-nav fixed ms-aside-scrollable ms-aside-left">
    <!-- Logo -->
    <div class="logo-sn ms-d-block-lg">
      <a class="pl-0 ml-0 text-center" href="/">
        <!-- <img src="https://via.placeholder.com/216x62" alt="logo"> -->
        <span class="logo-tit">스마일장기렌트카</span>
      </a>
    </div>
    <!-- Navigation -->
    <ul class="accordion ms-main-aside fs-14" id="side-nav-accordion">
    
    <c:choose>
      <c:when test="${mdto.center eq 'master'}">
      <li class="menu-item">
        <a href="Admin_list?key=edlclsjxm"> <span><i class="fas fa-clipboard-list fs-16"></i>관리자목록 </span>
        </a>
      </li>
      </c:when>
      <c:otherwise>
      </c:otherwise>
      </c:choose>
      <!-- 스탭관리 -->
      <li class="menu-item">
        <a href="List?key=edlclsjxm&type=&value=&time=&start=&end=&list=&status="> <span><i class="fas fa-clipboard-list fs-16"></i>문의목록 </span>
        </a>
      </li>
      <!-- /스탭관리 -->
     
      <!-- 댓글관리 -->
      <li class="menu-item">
        <a href="Content_list?key=edlclsjxm"> <span><i class="fas fa-clipboard-list fs-16"></i>후기목록 </span>
        </a>
      </li>
      <li class="menu-item">
        <a href="Content_write?key=edlclsjxm"> <span><i class="fas fa-clipboard-list fs-16"></i>게시글작성 </span>
        </a>
      </li>
       <li class="menu-item">
        <a href="Hotdeal_list?key=edlclsjxm"> <span><i class="fas fa-clipboard-list fs-16"></i>핫딜목록 </span>
        </a>
      </li>
      <li class="menu-item">
        <a href="Promotion_list?key=edlclsjxm"> <span><i class="fas fa-clipboard-list fs-16"></i>프로모션목록 </span>
        </a>
      </li>
      <li class="menu-item">
        <a href="Faq_list?key=edlclsjxm"> <span><i class="fas fa-clipboard-list fs-16"></i>자주묻는질문목록 </span>
        </a>
      </li>
    </ul>
  </aside>

  <!-- Sidebar Right -->
  <aside id="ms-recent-activity" class="side-nav fixed ms-aside-right ms-scrollable">

    <div class="ms-aside-header">
      <ul class="nav nav-tabs tabs-bordered d-flex nav-justified mb-3" role="tablist">
        <li role="presentation" class="fs-12"><a href="#activityLog" aria-controls="activityLog" class="active" role="tab" data-toggle="tab"> Activity Log</a></li>

        <li><button type="button" class="close ms-toggler text-center" data-target="#ms-recent-activity" data-toggle="slideRight"><span aria-hidden="true">&times;</span></button></li>
      </ul>
    </div>

    <div class="ms-aside-body">

       <div class="tab-content">


       </div>

    </div>

  </aside>

  <!-- Main Content -->
  <main class="body-content">
  ${mdto.center}
  <c:choose>
                <c:when test="${not empty mdto}"> 
    <!-- Navigation Bar -->
    <nav class="navbar ms-navbar">

      <div class="ms-aside-toggler ms-toggler pl-0" data-target="#ms-side-nav" data-toggle="slideLeft">
        <span class="ms-toggler-bar bg-primary"></span>
        <span class="ms-toggler-bar bg-primary"></span>
        <span class="ms-toggler-bar bg-primary"></span>
      </div>
<div class="user_area">
        <ul>
          <li>
            <span>
              ${mdto.name}
            </span>
          </li>
          <li>
            <button id ="logoutbtn">
              <span>
                로그아웃
              </span>
            </button>
          </li>
        </ul>
      </div>
      <div class="logo-sn logo-sm ms-d-block-sm">
        <a class="pl-0 ml-0 text-center navbar-brand mr-0" href="/">
          <span class="logo-tit">스마일장기렌트카</span>
        </a>
      </div>

  

      <div class="ms-toggler ms-d-block-sm pr-0 ms-nav-toggler window-ms-toggler" data-toggle="slideDown" data-target="#ms-nav-options">
        <span class="ms-toggler-bar bg-primary"></span>
        <span class="ms-toggler-bar bg-primary"></span>
        <span class="ms-toggler-bar bg-primary"></span>
      </div>

    </nav>



        <!-- Body Content Wrapper -->
        <div class="ms-content-wrapper">
          <div class="row">

            <div class="col-md-12">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb has-gap breadcrumb-arrow pl-0">
                  <li class="breadcrumb-item"><a href="#"><i class="material-icons"></i> 홈</a></li>
                  <li class="breadcrumb-item active" aria-current="page">핫딜목록</li>
                </ol>
              </nav>
            </div>
 			<input type="button" id="writebtn" class="btn btn-success btn-sm my-0 updatebtn" value="글쓰기">


        <div class="col-12">
          <div class="ms-panel">
            <div class="ms-panel-header d-flex justify-content-between align-items-center">
              <h6>핫딜목록</h6>
            </div>
            <div class="ms-panel-body">
              <div class="table-responsive">
                <table class="table table-hover thead-primary">
                  <thead>
                    <tr>
                      <th scope="col" class="text-center">id</th>
                      <th scope="col" class="text-center">이름</th>
                      <th scope="col" class="text-center">연료</th>
                      <th scope="col" class="text-center">개런티</th>
                      <th scope="col" class="text-center">옵션</th>
                      <th scope="col" class="text-center">개월</th>
                      <th scope="col" class="text-center">가격</th>
                      <th scope="col" class="text-center">시작일시</th>
                      <th scope="col" class="text-center">종료일시</th>
                    </tr>
                  </thead>
                  <tbody>
                <c:forEach var="i" items="${h_list}">
                  <input type="hidden" value="${i.id}">
                    <tr>
                      <th scope="row" id="f_no${i.id}">${i.id}</th>
                      <td class="text-center">${i.name}</td>
                      <td class="text-center">${i.oil_type}</td>
                      <td class="text-center">${i.guarantee}</td>
                      <td class="text-center">${i.option}</td>
                      <td class="text-center">${i.months}</td>
                      <td class="text-center"><fmt:formatNumber value="${i.price}" pattern="#,###" /></td>
                      <td class="text-center">${i.start_ddt}</td>
                      <td class="text-center">${i.end_ddt}</td>
                      <td>
                      <input type="button" onclick="location.href='/Promotion/Hotdeal_update?id=${i.id}';" class="btn btn-success btn-sm my-0 updatebtn" value="수정">
                      
                      <input type="button" id="${i.id}" class="btn btn-light btn-sm my-0 deletebtn" value="삭제">
                      
                      </td>
                      <!--  <td class="text-center"> <input type="button" id="${i.id}" class="btn btn-light btn-sm my-0 deletebtn" value="삭제"></td>-->
                      
                     
                      </tr>                
                    </c:forEach>
               
                  </tbody>
                </table>
                 
                </div>

            </div>
          </div>
          
        </div>

        </c:when>
<c:otherwise>
관리자 권한이 필요합니다 <br> <br> <br>
<a href="/2848/login">관리자 로그인하러가기</a>
</c:otherwise>
</c:choose> 
    </main>


    <!-- Reminder Modal -->
   

    <!-- Notes Modal -->
    

    <!-- SCRIPTS -->
    <!-- Global Required Scripts Start -->
    <script src="../../resources/admin/assets/js/jquery-3.3.1.min.js"></script>
    <script src="../../resources/admin/assets/js/popper.min.js"></script>
    <script src="../../resources/admin/assets/js/bootstrap.min.js"></script>
    <script src="../../resources/admin/assets/js/perfect-scrollbar.js"> </script>
    <script src="../../resources/admin/assets/js/jquery-ui.min.js"> </script>
    <!-- Global Required Scripts End -->

    <!-- Page Specific Scripts Finish -->
    <script src="../../resources/admin/assets/js/datatables.min.js"> </script>
    <script src="../../resources/admin/assets/js/data-tables.js"> </script>


    <!-- Costic core JavaScript -->
    <script src="../../resources/admin/assets/js/framework.js"></script>

    <!-- Settings -->
    <script src="../../resources/admin/assets/js/settings.js"> </script>

    <script>
    $(document).ready(function(){
    	

    	
    })
    
    
    </script>

    </body>

    </html>
