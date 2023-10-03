<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>관리자목록</title>
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
			window.location.href="/2848/Admin_join?key=edlclsjxm";
				
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
	  
	$(".updatebtn").click(function() {
		var id = $(this).attr('id');
		$("#center"+id).removeAttr("disabled");
		$("#team"+id).removeAttr("disabled");
  		$("#grade"+id).removeAttr("disabled");
  		$("#password"+id).removeAttr("disabled");
		$(this).css("display","none");
		$("#btn_"+id).css("display","inline-block");
		/* $("#file"+id).css("display","inline-block"); */
		$("#cancel_"+id).css("display","inline-block");
		
	})
	
	$(".updateprocbtn").click(function() {
		var id = $(this).attr('id');
		var real = id.split("_");
		$.ajax({
 			url : "/2848/Admin_updateproc",
 			type : "post",
 			dataType : "json",
 			data : {
 				"id" : real[1],
 				"center" : $("#center"+real[1]).val(),
 				"team" : $("#team"+real[1]).val(),
     		   "grade" :  $("#grade"+real[1]).val(),
     		  "password" :  $("#password"+real[1]).val()
 			},
 			success : function(response) {
 				window.location.reload();
 			}
		
 			
	})
		window.location.reload();
	})
	
	
	$(".cancelbtn").click(function() {
		var id1 = $(this).attr('id');
		var id2 = id1.split("_");
		var id = id2[1];
		$("#center"+id).attr("disabled",true);
		$("#team"+id).attr("disabled",true);
    	$("#grade"+id).attr("disabled",true);
    	$("#password"+id).attr("disabled",true);
		$(this).css("display","none");
		$("#btn_"+id).css("display","none");
		/* $("#file"+id).css("display","none"); */
		$("#cancel_"+id).css("display","none");
		$("#"+id).css("display","inline-block")
		
	})
	 
	
	 $(".deletebtn").click(function() {
		 
		 var con = confirm("관리자를 삭제하시겠습니까?");
    		if(con == true) {
    			 var id = $(this).attr('id');
    		 		$.ajax({
    		 			url : "/2848/Admin_deleteproc",
    		 			type : "post",
    		 			dataType : "json",
    		 			data : {
    		 				"id" : id
    		 			},
    		 			success : function(response) {
    		 				window.location.reload();
    		 			
    		 			}
    		 	});
    		 		window.location.reload();
    		 		
    		}
    		else {
    			window.location.reload();	
    		}
    		window.location.reload();
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
      <c:when test="${not empty mdto}">
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
  <c:choose>
                <c:when test="${mdto.center eq 'master' || mdto.center eq 'supervisior'}"> 
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
                  <li class="breadcrumb-item active" aria-current="page">관리자목록</li>
                </ol>
              </nav>
            </div>
 			<input type="button" id="writebtn" class="btn btn-success btn-sm my-0 updatebtn" value="회원가입">


        <div class="col-12">
          <div class="ms-panel">
            <div class="ms-panel-header d-flex justify-content-between align-items-center">
              <h6>관리자목록</h6>
            </div>
            <div class="ms-panel-body">
              <div class="table-responsive">
                <table class="table table-hover thead-primary">
                  <thead>
                    <tr>
                      <th scope="col" class="text-center">No</th>
                      <th scope="col" class="text-center">id</th>
                      <th scope="col" class="text-center">등급</th>
                      <th scope="col" class="text-center">본부</th>
                      <th scope="col" class="text-center">팀</th>
                      <c:choose>
                <c:when test="${mdto.center eq 'master'}"> 
            		<th scope="col" class="text-center">비밀번호</th>
                </c:when>
				<c:otherwise>
				</c:otherwise>
				</c:choose>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach var="i" items="${rq_list}">
                  <input type="hidden" value="${i.id}">
                    <tr onClick="location.href='/2848/Admin_update?id='+${i.id}">
                      <th scope="row" id="f_no${i.id}">${i.id}</th>
                      <td class="text-center">${i.userid}</td>
                      <td class="text-center">
                      <input type="textarea" id="grade${i.id}" value="${i.grade}" disabled>
                        <!-- <select  id="grade${i.id}" value="${i.grade}"  disabled>
                          <option value="member">member</option>
                          <option value="manager">manager</option>
                          <option value="supervisor ">supervisor </option>
                          <option value="master">master</option>
                      </select> -->
                      </td>
                      <td class="text-center">
                        <input type="textarea" id="center${i.id}" value="${i.center}" disabled>
                                            </td>
                      <td class="text-center"><input type="textarea" id="team${i.id}" value="${i.team}" disabled></td>
                        <c:choose>
                       <c:when test="${mdto.center eq 'master'}"> 
            		 <td class="text-center"><input type="text" id="password${i.id}" value="${i.password}" disabled></td>
                </c:when>
				<c:otherwise>
				</c:otherwise>
				</c:choose>
                      <td class="text-center">

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
권한이 없습니다 <br> <br> <br>
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
