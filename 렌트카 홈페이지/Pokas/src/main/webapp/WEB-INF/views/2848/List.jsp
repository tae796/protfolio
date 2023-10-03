<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">

<head>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>문의목록</title>
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
	  
      $("#logoutbtn").click(function() {
       			 $.ajax({
    		 			url : "/2848/logout",
    		 			type : "post",
    		 			success : function(response) {
                window.location.href="/2848/login";
    		 			}
    		 	});
      })

	$("#searchbtn").click(function() {
		type = $("#type").val();
		value = $("#searchvalue").val();
		start = $("#start").val();
		end = $("#end").val();
		
		if(value==""){
			window.location.href="/2848/List?key=edlclsjxm&type=&value="+value+"&time=&start="+start+"&end="+end;
		}
		else{
			window.location.href="/2848/List?key=edlclsjxm&type="+type+"&value="+value+"&time=&start="+start+"&end="+end;	
		}
		
	})
	
	$("#pet-select").change(function(){
		window.location.href="List?key=edlclsjxm&type=&value=&time=all&start=&end=&list="+$("#pet-select").val()+"&status=";
	})
	
	$("#status-select").change(function(){
		window.location.href="List?key=edlclsjxm&type=&value=&time=all&start=&end=&list=&status="+$("#status-select").val();
	})


	
	$("#updatebtn").click(function() {
		if($("input:checkbox[id='list_check']:checked").val() == null)
			alert("수정할 것을 선택해주세요");
			
		else{
		var id = $("input:checkbox[id='list_check']:checked").val();
		window.location.href="/Request/List_update?id="+id;
		}
	});
	
	
	
	$(".cancelbtn").click(function() {
		var id1 = $(this).attr('id');
		var id2 = id1.split("_");
		var id = id2[1];
		$("#detail"+id).attr("disabled",true);
		$("#status"+id).attr("disabled",true);
		$("#center"+id).attr("disabled",true);
		$(this).css("display","none");
		$("#btn_"+id).css("display","none");
		/* $("#file"+id).css("display","none"); */
		$("#cancel_"+id).css("display","none");
		$("#"+id).css("display","inline-block")
		
	});
	
	
	
	 
	$("#today").click(function() {
		window.location.href="List?key=edlclsjxm&type=&value=&time=today";
	})
	
	$("#yesterday").click(function() {
		window.location.href="List?key=edlclsjxm&type=&value=&time=yesterday";
	})
	
	$("#month").click(function() {
		window.location.href="List?key=edlclsjxm&type=&value=&time=month";
	})
	
	$("#all").click(function() {
		window.location.href="List?key=edlclsjxm&type=&value=&time=all&start=&end=&list=";
	})
	
	$("#writebtn").click(function() {
		window.location.href="/Request/List_write";
	})
	
	
	
	 $(".deletebtn").click(function() {
		 
		 var con = confirm("게시글을 삭제하시겠습니까?");
    		if(con == true) {
    			if($("input:checkbox[id='list_check']:checked").val() == null)
    				alert("수정할 것을 선택해주세요");
    				
    			else{
    			var id = $("input:checkbox[id='list_check']:checked").val();
    			}
    			
    		 		$.ajax({
    		 			url : "/Request/DeleteProc",
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
    			
    		}
		
 	}) ;
    });
    
    

    
    </script>

  <style>
    .table td, .table th {vertical-align:middle;}
  </style>

</head>
<!-- ms-aside-left-open -->
<body class="ms-body ms-aside-left ms-primary-theme ms-has-quickbar">


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
 <c:choose>
      <c:when test="${not empty mdto}">
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
    
      <!-- 스탭관리 -->
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
<%--  <c:choose>
                <c:when test="${mdto.status eq 'admin'}"> --%>
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
                  <li class="breadcrumb-item active" aria-current="page">문의목록</li>
                </ol>
              </nav>
            </div>
 
        <div class="col-12">
          <div class="ms-panel">
            <div class="ms-panel-header d-flex justify-content-between align-items-center">
              <!-- <h6>문의목록</h6> -->
              <div class="write_btn_wrap">
              <input type="button" id="writebtn" class="btn btn-success btn-sm my-0 updatebtn" value="글쓰기">
                <input type="button" id="updatebtn" class="btn btn-success btn-sm my-0 updatebtn" value="선택 수정">
            
            <input type="button" id="${i.id}" class="btn btn-light btn-sm my-0 deletebtn" value="선택 삭제">

              </div>
            <div class="seach-wrap">
            <form name="seach-area" action="" method="post">
            <select name="type" id="type">
               <option value="name">고객명</option>
               <option value="brand">브랜드</option>
               <option value="region">지역</option>
               <option value="phone">휴대폰 번호</option>

            </select>
            <input type="text" id="searchvalue">
            <input type="button" value="검색" name="seach" id="searchbtn">
            <input type="date" id="start" name="date-1"> ~ <input type="date" id="end" name="date-2">
            <input type="button" value="오늘${today}" name="day" id ="today">
            <input type="button" value="어제${yesterday}" name="day-1" id = "yesterday">
            <input type="button" value="지난달${month}" name="month" id ="month">
            <input type="button" value="전체${all}" name="all" id = "all">
            </form>
            
            </div>
            
            </div>
            
            <div class="ms-panel-body">
              <div class="table-responsive">
                <table class="table table-hover thead-primary">
                  <thead>
                    <tr>
                      <th scope="col" class="text-center">
                        <input type="checkbox" name="selectall" onclick='selectAll(this)'></th>
                      <th scope="col" class="text-center">번호</th>
                      <th scope="col" class="text-center">구분</th>
                      <th scope="col" class="text-center">차종</th>
                      <th scope="col" class="text-center"><a onClick="location.href='List?key=edlclsjxm&type=&value=&time=&start=&end=&list=name">
                      고객명</a></th>
                      <th scope="col" class="text-center">연락처</th>
                      <th scope="col" class="text-center">유입경로</th>
                      <!-- <th scope="col" class="text-center"><a onClick="List?key=edlclsjxm&type=&value=&time=&start=&end=&list=status">상담상태</a></th> -->
                      <th scope="col" class="text-center" >
                     <select name="asdf" id="status-select">
						    <option value="">상담 상태</option>
						    <option value="상담요청">상담요청</option>
						    <option value="상담중">상담중</option>
						    <option value="상담완료">상담완료</option>
						    <option value="부재">부재</option>
						    <option value="취소">취소</option>
						    <option value="가망고객">가망고객</option>
						    <option value="진행중">진행중</option>
						    <option value="계약완료">계약완료</option>
						    <option value="재상담">재상담</option>
						    <option value="기타">기타</option>
						</select>
						</th>
                      <th scope="col" class="text-center">이메일</th>
                      <th scope="col" class="text-center">개월</th>
                      <th scope="col" class="text-center">날짜</th>
                      <th scope="col" class="text-center" >
 
						<select name="pets" id="pet-select">
						    <option value="">상담 담당자</option>
						    <option value="">전체</option>
						    <c:forEach var="i" items="${admin}">
						    <option value="${i.name}">${i.name}</option>
							</c:forEach>
						</select>
						
                        <!-- <a onClick="List?key=edlclsjxm&type=&value=&time=&start=&end=&list=member" >상담 담당자</a> --></th>
                      <th scope="col" class="text-center">상담내용</th>
                  </thead>
                  <tbody>
                   
                  <c:forEach var="i" items="${rq_list}">
                  
                  <input type="hidden" id="id" value="${i.id}">

                    <tr>
                      
                      <th scope="row"><input type="checkbox" id="list_check" value="${i.id}" name="check" onclick='checkSelectAll(this)'></th>
                      <th scope="row" id="f_no${i.id}" onClick="location.href='/Request/List_update?id='+${i.id}">${i.id}</th><!--번호-->
                      <c:choose>
                       <c:when test="${i.type eq '1'}">
                       <td class="text-center">장기렌트</td> <!--구분-->
                       </c:when>
                       <c:otherwise>
                       <td class="text-center">오토리스</td>
                       </c:otherwise>
                      </c:choose>

                      <td class="text-center" onClick="location.href='/Request/List_update?id='+${i.id}">${i.brand} ${i.car_type}</td> <!--차종-->
                      <td class="text-center" onClick="location.href='/Request/List_update?id='+${i.id}">${i.name}</td> <!--고객명-->
                      <td class="text-center" onClick="location.href='/Request/List_update?id='+${i.id}">${i.phone}</td> <!--연락처-->
                      
                   	  <td class="text-center" onClick="location.href='/Request/List_update?id='+${i.id}" style="word-break: break-all;">${i.url}</td>
                      <td class="text-center" onClick="location.href='/Request/List_update?id='+${i.id}"> ${i.status}</td> <!--상담상태-->
                      <td class="text-center" onClick="location.href='/Request/List_update?id='+${i.id}">${i.email}</td>
                      <td class="text-center" onClick="location.href='/Request/List_update?id='+${i.id}">${i.months}</td>
                      <td class="text-center" onClick="location.href='/Request/List_update?id='+${i.id}">${i.date}</td> <!--날짜-->
                      <td class="text-center" onClick="location.href='/Request/List_update?id='+${i.id}">
                        <input type="text" value="${i.member}" disabled>
                      </td> <!--상담담당자-->
                      <td class="text-center" style="width:30%;" onClick="location.href='/Request/List_update?id='+${i.id}"> 
                        <textarea name="detail" id="detail" clos="10" rows="5" wrap="on" style="width:100%;" disabled>
                          ${i.detail}
                        </textarea> 
                      </td> <!--상담내용-->
                           
                      </tr> 
                         
                    </c:forEach>
           
                  </tbody>
                  
                </table>
                 
<!--                 <div class="cont_button">
                  <button><a href=""></a></button>
                  <button><a href=""></a></button>
                  <button><a href="">1</a></button>
                  <button><a href=""></a></button>
                  <button><a href=""></a></button>
                </div> -->

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
$(document).ready(function() {
  $("table").on("keyup", "textarea", function(e) {
    $(this).css("height", "auto");
    $(this).height(this.scrollHeight);
  });
  $("table").find("textarea").keyup();
})
    </script>

    <script type="text/javascript">
   function checkSelectAll(checkbox)  {
  const selectall 
    = document.querySelector('input[name="selectall"]');
  
  if(checkbox.checked === false)  {
    selectall.checked = false;
  }
}

function selectAll(selectAll)  {
  const checkboxes 
     = document.getElementsByName('check');
  
  checkboxes.forEach((checkbox) => {
    checkbox.checked = selectAll.checked
  })
}

$("tr").click(function(){
var checkbox = $(this).find('#list_check');
checkbox.attr('checked', !checkbox.is(':checked'));

});
    </script>
    </body>

    </html>
