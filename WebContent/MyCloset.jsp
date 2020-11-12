<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Closet</title>
	<link rel="stylesheet" href="resource/style/bootstrap-grid.css">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="resource/javascript/bootstrap.bundle.js"></script>
	<link rel="stylesheet" href="resource/style/222myPage-style.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
</head>




<body>
	<jsp:include page="/WEB-INF/views/common/Top.jsp"></jsp:include>
	<div id="wrapper" class="my-4">
		<div class="container">
			<div class="row">
				<div class="col-md-4 mx-auto my-auto" >
					<div>
					<c:set var="member" value="${requestScope.member}" />
						<div class="profile">
							<div class="closet-name">
								<h1>##의 옷장</h1>
							</div>
							<div class="user-state">
								<span id = heart><i class="fa fa-heart-o" aria-hidden="true" ></i> </span>
								<div id="cnt">
									100
								</div>
							</div>
							<div class="profile">
							<div class="profile-image">
								<img src="resource/image/mypage/man.png"  alt="">
								
							</div>
							<div class="profile-user-setting">
								<h1 class="profile-user-name">${member.name}</h1>
					
							</div>
							<div>
								<p>${member.addr}</p>
							</div>
							
							
							<div class="profile-bio">
								<p>intro</p>
								
							</div>
							</div>
							<button id="edit" class="" onclick="location.href='<%=request.getContextPath()%>/myInfoEditPage.my?id=${member.id}'">수정</button>
						</div>
					</div>
				</div>
				<div class="col-md-8 mx-auto my-4" >
				<div class="tabmenu">
				<input id="tab1" type="radio" name="tabs" checked>
				<label for="tab1">판매목록</label>
				<input id="tab2" type="radio" name="tabs" >
				<label for="tab2">찜목록</label>
				
				</div>
			
					
				  
					<div class="outer-grid">
						<div class="inner-grid">
							<a href="#">
								<img src="resource/image/mypage/1.jpg">
							</a>
								<div class="overlay"> 
									<p> Like </p>
								</div>
								
						</div>
						
						<div class="inner-grid">
							<a href="#">
								<img src="resource/image/mypage/2.jpg">
							</a>
								<div class="overlay">
									<p> Like </p>
								</div>
								
						</div>
						<div class="inner-grid">
							<a href="#">
								<img src="resource/image/mypage/3.jpg">
							</a>
								<div class="overlay"> 
									<p> Like </p>
								</div>	
							
						</div>
						<div class="inner-grid">
							<a href="#">
								<img src="resource/image/mypage/4.jpg">
							</a>
								<div class="overlay"> 
									<p> Like </p>
								</div>	
							
						</div>
						<div class="inner-grid">
							<a href="#">
								<img src="resource/image/mypage/5.png">
							</a>
								<div class="overlay"> 
									<p> Like </p>
								</div>	
							
						</div>
						<div class="inner-grid">
							<a href="#">
								<img src="resource/image/mypage/1.jpg">
							</a>
								<div class="overlay"> 
									<p> Like </p>
								</div>
							
						</div>
					</div> 
				</div>
			</div>
		</div>
	</div>



	

	
	<jsp:include page="WEB-INF/views/common/Bottom.jsp"></jsp:include>
	
	
</body>
<script>
	$(document).ready(function(){
	  $("#heart").click(function(){
	    if($("#heart").hasClass("liked")){
	      $("#heart").html('<i class="fa fa-heart-o" aria-hidden="true"></i>');
	      $("#heart").removeClass("liked");
	    }else{
	      $("#heart").html('<i class="fa fa-heart" aria-hidden="true"></i>');
	      $("#heart").addClass("liked");
	    }
	  });
	});
</script>


</html>