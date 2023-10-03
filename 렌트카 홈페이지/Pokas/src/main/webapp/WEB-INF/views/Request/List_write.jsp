<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!--meta name="viewport" content="width=device-width, initial-scale=1.0"-->
	<title>문의 리스트 작성</title>

	<link rel="stylesheet" href="../../resources/css/common.css" type="text/css">
	<link rel="stylesheet" href="../../resources/css/list_write.css" type="text/css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script>
$(document).ready(function() {
  $("table").on("keyup", "textarea", function(e) {
    $(this).css("height", "auto");
    $(this).height(this.scrollHeight);
  });
  $("table").find("textarea").keyup();
  
  $("#updatebtn").click(function() {
	  
	  var status = "";
	  if($('#status').is(':checked')){
		  status = $("#status").val();
	  }
	  else if($('#status1').is(':checked')){
		  status = $("#status1").val();
	  }
	  else if($('#status2').is(':checked')){
		  status = $("#status2").val();
	  }
	  else if($('#status3').is(':checked')){
		  status = $("#status3").val();
	  }
	  else if($('#status4').is(':checked')){
		  status = $("#status4").val();
	  }
	  else if($('#status5').is(':checked')){
		  status = $("#status5").val();
	  }
	  else if($('#status6').is(':checked')){
		  status = $("#status6").val();
	  }
	  else if($('#status7').is(':checked')){
		  status = $("#status7").val();
	  }
	  else if($('#status8').is(':checked')){
		  status = $("#status8").val();
	  }
	  else if($('#status9').is(':checked')){
		  status = $("#status9").val();
	  }
	  
		$.ajax({
			url : "/Request/InsertProc",
			type : "post",
			dataType : "json",
			data : {
				"id" : $("#id").val(),
				"detail" : $("#autotext").val(),
				"type" : $("#type").val(),
				"status" : status,
				"center" : $("#center").val(),
				"name" : $("#name").val()
			},
			success : function(response) {
				window.location.href="/2848/List?key=edlclsjxm&type=&value=&time=&start=&end=&list=&status=";
			}
		
			
	})
	window.location.href="/2848/List?key=edlclsjxm&type=&value=&time=&start=&end=&list=&status=";
	})
  
})
</script>
</head>

<body>

	<section id="table">

		<div class="cont">
				<c:choose>
      <c:when test="${not empty mdto}">
			<table>
				<tbody>
					<tr>
						<th colspan="5">
							<h2>작성페이지</h2>
						</th>
					</tr>
					<tr>
						<td class="name">구분</td>
						<td class="table_cont cont_04">
							<input class="write-input" type='text' id="type" name='type' value=""/>
						</td>
						<td class="name">차종</td>
						<td class="table_cont cont_04">

							<input class="write-input" type='text' id="car_type" name='car_type' value=""/>

						</td>
					</tr>
					<tr>
						
						<td class="name">고객명</td>
						<td class="table_cont cont_04">

							<input class="write-input" type='text' id="name" name='name' value=""/>

						</td>
						<td class="name">상담 관리자</td>
						<td class="table_cont cont_04">
								<select name="member" id="member">
								<c:forEach var="adminlist" items="${admin}" varStatus="i">
               					 <option value="${adminlist.name}">${adminlist.name}</option>
								  </c:forEach>
            				</select>

						</td>
					</tr>

					<tr>
						<td class="name">상담상태</td>
						<td class="table_cont cont_04" colspan="3">
							
            					<input type="radio" name="type" id="status" value="상담요청"> 상담요청
               					<input type="radio" name="type" id="status1" value="상담중"> 상담중
              					<input type="radio" name="type" id="status2" value="상담완료"> 상담완료
              					<input type="radio" name="type" id="status3" value="부재"> 부재
               					<input type="radio" name="type" id="status4" value="취소"> 취소
              					<input type="radio" name="type" id="status5" value="가망고객"> 가망고객
              					<input type="radio" name="type" id="status6" value="진행중"> 진행중
               					<input type="radio" name="type" id="status7" value="계약완료"> 계약완료
              					<input type="radio" name="type" id="status8" value="재상담"> 재상담
              					<input type="radio" name="type" id="status9" value="기타"> 기타
						</td>
						
					</tr>
					<tr>
						<td class="name">상담 내용</td>
						<td class="table_cont cont_04" colspan="4">

							<textarea  id="autotext" cols="100" rows="10" wrap="on"></textarea>

						</td>
					</tr>

				</tbody>
			</table>
			<div class="btn-wrap">
					<button type="button" id="updatebtn" class="btn_a"><h4 class="a">확인</h4></button>
				<a href="/2848/List?key=edlclsjxm&type=&value=&time=&start=&end=&list=&status="><h4 class="a">취소</h4></a>
			</div>
			</c:when>
<c:otherwise>
관리자 권한이 필요합니다 <br> <br> <br>
<a href="/2848/login">관리자 로그인하러가기</a>
</c:otherwise>
</c:choose> 
		</div>

	</section>

</body>
</html>