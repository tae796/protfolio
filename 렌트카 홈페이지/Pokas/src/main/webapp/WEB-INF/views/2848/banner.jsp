<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">

<head>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>Page6</title>
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
        <span class="logo-tit">LABZINE</span>
      </a>
    </div>
    <!-- Navigation -->
    <ul class="accordion ms-main-aside fs-14" id="side-nav-accordion">
    
      <!-- 스탭관리 -->
      <li class="menu-item">
        <a href="banner"> <span><i class="fas fa-clipboard-list fs-16"></i>배너관리 </span>
        </a>
      </li>
      <!-- /스탭관리 -->
      <!-- 댓글관리 -->
      <li class="menu-item">
        <a href="member"> <span><i class="fas fa-clipboard-list fs-16"></i>회원관리 </span>
        </a>
      </li>
      <!-- /댓글관리 -->
           <!-- 댓글관리 -->
      <li class="menu-item">
        <a href="content_list?type=0&cpage=1"> <span><i class="fas fa-clipboard-list fs-16"></i>게시글관리 </span>
        </a>
      </li>
      <!-- /댓글관리 -->
      <!-- 스탭관리 -->
      <li class="menu-item">
        <a href="setting"> <span><i class="fas fa-clipboard-list fs-16"></i>환경설정 </span>
        </a>
      </li>
      <!-- /스탭관리 -->
      <!-- /Apps -->
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
                <c:when test="${mdto.status eq 'admin'}">
    <!-- Navigation Bar -->
    <nav class="navbar ms-navbar">

      <div class="ms-aside-toggler ms-toggler pl-0" data-target="#ms-side-nav" data-toggle="slideLeft">
        <span class="ms-toggler-bar bg-primary"></span>
        <span class="ms-toggler-bar bg-primary"></span>
        <span class="ms-toggler-bar bg-primary"></span>
      </div>

      <div class="logo-sn logo-sm ms-d-block-sm">
        <a class="pl-0 ml-0 text-center navbar-brand mr-0" href="/">
          <span class="logo-tit">LABZINE</span>
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
                  <li class="breadcrumb-item"><a href="#"><i class="material-icons">home</i> 홈</a></li>
                  <li class="breadcrumb-item active" aria-current="page">배너관리</li>
                </ol>
              </nav>
            </div>
 
		※이미지의 권장 사이즈는 1500 x 500 px 입니다.

        <div class="col-12">
          <div class="ms-panel">
            <div class="ms-panel-header d-flex justify-content-between align-items-center">
              <h6>배너 List</h6>
            </div>
            <div class="ms-panel-body">
              <div class="table-responsive">
                <table class="table table-hover thead-primary">
                  <thead>
                    <tr>
                    <th scope="col" class="text-center">no</th>
                      <th scope="col" class="text-center">미리보기</th>
                      <th scope="col" class="text-center">URL</th>
                      <th scope="col" class="text-center">파일 이름</th>
                      <th scope="col" class="text-center">수정  / 삭제</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach var="i" items="${f_dto}">
                  <input type="hidden" id="file${i.f_file}" value="${i.f_file}">
                    <tr>
                    <td class="text-center" id="no${i.f_no}">${i.f_no}</td>
                      <td class="text-center"><a href="/resources/image/${i.f_file}">미리보기</a></td>
                    <%--   <th scope="row" id="f_no${i.f_no}">${i.f_no}</th> --%>
                      <td class="text-center" ><input type="text" id="url${i.f_no}" value="${i.f_board_name}" disabled></td>
                      <td class="text-center" ><input type="text" id="name${i.f_no}" value="${i.f_name}" disabled></td>
                      <td class="text-center">
                      <input type="button" id="${i.f_no}" class="btn btn-success btn-sm my-0 updatebtn" value="수정">
                      <input type="button" id="btn_${i.f_no}" class="btn btn-success btn-sm my-0 updateprocbtn" value="확인" style="display:none"> 
                      <input type="button" id="cancel_${i.f_no}" class="btn btn-success btn-sm my-0 cancelbtn" value="취소" style="display:none">
                      <input type="button" id="${i.f_no}" class="btn btn-light btn-sm my-0 deletebtn" value="삭제">
                      <%-- <input type="file" id="file${i.f_no}" style="display:none"> --%>
                      </td>
                      </tr>
                   
                    </c:forEach>
                  </tbody>
                </table>
             
                <form action="/banner_proc" enctype="multipart/form-data" method="post">
                 <input type="file" name ="files" id="upload_file" required>
                 <input type="text" name ="f_name" placeholder="배너이름을 입력해주세요." required>
                 <input type="text" name ="f_board_name" placeholder="링크를 입력해주세요." required>
                 <input type="submit" id="uploadbtn" class="btn btn-success btn-sm my-0" value="업로드">
                 </form>
                 
                 
                 <br>
                 <br>
              </div>

            </div>
          </div>
          
        </div>

       
       
       </c:when>
<c:otherwise>
관리자 권한이 필요합니다 <br> <br> <br>
<a href="/member/admin_login">관리자 로그인하러가기</a>
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
    	/*  $("#uploadbtn").click(function() {
    		$.ajax({
    			url : "/banner_proc",
    			type : "post",
    			dataType : "json",
    			data : {
    				"f_file" : $("#upload_file").val()
    			},
    			success : function(response) {
    			
    			}
    	});
    	})  */
    	
    	$(".updatebtn").click(function() {
    		var id = $(this).attr('id');
    		$("#url"+id).removeAttr("disabled");
    		$("#name"+id).removeAttr("disabled");
    		$(this).css("display","none");
    		$("#btn_"+id).css("display","inline-block");
    		/* $("#file"+id).css("display","inline-block"); */
    		$("#cancel_"+id).css("display","inline-block");
    		
    	})
    	
    	$(".updateprocbtn").click(function() {
    		var id = $(this).attr('id');
    		var real = id.split("_");
    		$.ajax({
	 			url : "banner_update",
	 			type : "post",
	 			dataType : "json",
	 			data : {
	 				"f_no" : real[1],
	 				"f_board_name" : $("#url"+real[1]).val(),
	 				"f_name" : $("#name"+real[1]).val()
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
    		$("#url"+id).attr("disabled",true);
    		$("#name"+id).attr("disabled",true);
    		$(this).css("display","none");
    		$("#btn_"+id).css("display","none");
    		/* $("#file"+id).css("display","none"); */
    		$("#cancel_"+id).css("display","none");
    		$("#"+id).css("display","inline-block")
    		
    	})
    	 
 	
		 $(".deletebtn").click(function() {
			 
			 var con = confirm("배너를 삭제하시겠습니까?");
	    		if(con == true) {
	    			 var id = $(this).attr('id');
	    		 		$.ajax({
	    		 			url : "banner_delete",
	    		 			type : "post",
	    		 			dataType : "json",
	    		 			data : {
	    		 				"f_no" : id
	    		 			},
	    		 			success : function(response) {
	    		 				window.location.reload();
	    		 			}
	    		 	});
	    		 		window.location.reload();
	    		}
	    		else {
	    			
	    		}
			
	 	}) 
	 	
    })
    
    
    </script>

    </body>

    </html>
