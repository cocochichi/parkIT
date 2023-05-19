<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>ParkIT</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/quList.css">
</head>
<body>

<jsp:include page="../inc/top.jsp"/>

<!-- 	<nav -->
<!-- 		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" -->
<!-- 		id="ftco-navbar"> -->
<!-- 		<div class="container"> -->
<!-- 			<a class="navbar-brand" href="./MainMain.park">Park<span>IT</span></a> -->
<!-- 			<button class="navbar-toggler" type="button" data-toggle="collapse" -->
<!-- 				data-target="#ftco-nav" aria-controls="ftco-nav" -->
<!-- 				aria-expanded="false" aria-label="Toggle navigation"> -->
<!-- 				<span class="oi oi-menu"></span> -->
<!-- 			</button> -->
			
			

<!-- 			<div class="collapse navbar-collapse" id="ftco-nav"> -->
<!--   <ul class="navbar-nav ml-auto"> -->
<!--     <li class="nav-item active"><a href="index.jsp" class="nav-link">Home</a></li> -->
<!--     <li class="nav-item dropdown"> -->
<!--       <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">회사소개</a> -->
<!--       <ul class="dropdown-menu"> -->
<!--         <li class="nav-item"><a href="pricing.jsp" class="nav-link2">이용수칙</a></li> -->
<!--         <li class="nav-item"><a href="pricing.jsp" class="nav-link2">주차장 안내</a></li> -->
<!--       </ul> -->
<!--     </li> -->
<!--     <li class="nav-item"><a href="services.jsp" class="nav-link">예약하기</a></li> -->
<!--      <li class="nav-item dropdown"> -->
<!--       <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">커뮤니티</a> -->
<!--       <ul class="dropdown-menu"> -->
<!--         <li class="nav-item"><a href="pricing.jsp" class="nav-link2">공지사항</a></li> -->
<!--         <li class="nav-item"><a href="./FaqList.fa" class="nav-link2">자주 묻는 질문</a></li> -->
<!--       </ul> -->
<!--     </li> -->
<!--   </ul> -->
<!-- </div> -->
<!-- 		</div> -->

<%-- <c:if test="${empty id }"> --%>
<!--   <div class="login-form"> -->
<!--     <div class="form-group"> -->
<!--       <a class="navbar-brand" href="./MemberLogin.me">Park<span>IT 로그인</span></a> -->
<!--     </div> -->
<!--     <div class="join-membership"> -->
<!--       <a href="#">아이디/비밀번호 찾기</a> -->
<!--     </div> -->
<!--     <div class="join-membership"> -->
<!--       <a href="./MemberJoin.me">회원가입</a> -->
<!--     </div> -->
<!--   </div> -->
<%-- </c:if> --%>
<%-- <c:if test="${not empty id }"> --%>
<!--   <div class="login-form"> -->
<%--     아이디: ${id } <br> <!-- sessionScope 생략 --> --%>
	
<!-- 	<input type="button" value="로그아웃" onclick="location.href='./MemberLogout.me'">	 -->
<!-- 	<hr> -->
	
<!-- 	<h3><a href="./MemberInfo.me">회원정보 조회</a></h3> -->

<!-- 	<h3><a href="./MemberUpdate.me">회원정보 수정</a></h3> -->

<!-- 	<h3><a href="./MemberDelete.me">회원정보 삭제</a></h3> -->
<!--   </div> -->
<%-- </c:if> --%>
<!-- 	</nav> -->
<!-- 	<!-- END nav -->

<!-- 	<section class="hero-wrap hero-wrap-2 js-fullheight" -->
<!-- 		style="background-image: url('images/bg_3.jpg');" -->
<!-- 		data-stellar-background-ratio="0.5"> -->
<!-- 		<div class="overlay"></div> -->
<!-- 		<div class="container"> -->
<!-- 			<div -->
<!-- 				class="row no-gutters slider-text js-fullheight align-items-end justify-content-start"> -->
<!-- 				<div class="col-md-9 ftco-animate pb-5"> -->
<!-- 					<p class="breadcrumbs"> -->
<!-- 						<span class="mr-2"><a href="index.jsp">Home <i -->
<!-- 								class="ion-ios-arrow-forward"></i></a></span> <span>Contact <i -->
<!-- 							class="ion-ios-arrow-forward"></i></span> -->
<!-- 					</p> -->
<!-- 					<h1 class="mb-3 bread">Contact Us</h1> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</section> -->

<!-- 	<section class=king> -->
	<section class="ftco-section contact-section">
		
		
	
<!-- 		</head> -->
<!-- 		<body> -->
		
			
			
	
			<c:if test="${id.equals('admin')}">
<div class="writeform">
  <table border="1">
    <tr>
      <th>글번호</th>
      <th>문의유형</th>
      <th>제목</th>
      <th>작성일</th>
      <th>작성자</th>
      <th>답글유무</th>
    </tr>

    <!-- noticeList 있을 때마다 들고오는 거 -->
    <c:forEach var="qu" items="${quList}">
   <tr>
   
  <form action="./QuestionReWrite.qu" method="post">
  
    <td>${qu.quNo}</td>
    <td>${qu.selOp}</td>
    <td>
      <a href="./QuestionContents.qu?quNo=${qu.quNo}&amp;pageNum=${pageNum}">
        ${qu.quTitle}
      </a>
    </td>
    <td>${qu.quDateTime}</td>
    <td>${qu.id}</td>
    <td>
      <c:choose>
        <c:when test="${not id.equals('admin')}">
          <a href="./QuestionContents.qu?quNo=${qu.quNo}&amp;pageNum=${pageNum}">O</a>
        </c:when>
        <c:otherwise>
          <input type="hidden" name="quNo" value="${qu.quNo}">
          <input type="hidden" name="quTitle" value="${qu.quTitle}">
          <input type="submit" value="X" class="btn">
        </c:otherwise>
      </c:choose>
    </td>
  </form>
</tr>
      
    </c:forEach>
  </table>

  <form id="searchForm" action="./noticeList.no" method="get">
    <div>
      <input type="text" name="keyWord">
      <input type="submit" value="검색">
    </div>
  </form>

  <div id="pageBlock">
    <c:if test="${startPage > pageBlock}">
      <a href="./QuestionList.qu?pageNum=${startPage-pageBlock}">[이전]</a>
    </c:if>

    <c:forEach var="i" begin="${startPage}" end="${endPage}">
      <a href="./QuestionList.qu?pageNum=${i}">[${i}]</a>
    </c:forEach>

    <c:if test="${endPage < pageCount}">
      <a href="./QuestionList.qu?pageNum=${startPage+pageBlock}">[다음]</a>
    </c:if>
  </div>

  <div id="writeButton">
    <input type="button" value="글쓰기" onclick="location.href='./noticeWriteForm.no'">
  </div>
</div>
			
			</c:if>
			
				<c:if test="${not id.equals('admin') }">
<div class="writeform">
  <table border="1">
    <tr>
      <th>문의유형</th>
      <th>제목</th>
      <th>작성일</th>
      <th>작성자</th>
      <th>답글유무</th>
    </tr>

    <!-- noticeList 있을 때마다 들고오는 거 -->
    <c:forEach var="qu" items="${quList}">
    <c:if test="${qu.id.equals(id)}">
      <tr>
        <td>${qu.selOp}</td>
        <td>
          <a href="./QuestionContents.qu?quNo=${qu.quNo}&amp;pageNum=${pageNum}">
            ${qu.quTitle}
          </a>
        </td>
        <td>${qu.quDateTime}</td>
        <td>${qu.id }</td>
          <td>
        <c:choose>
          <c:when test="${id.equals('admin')}">
            <a href="./QuestionContents.qu?quNo=${qu.quNo}&amp;pageNum=${pageNum}">O</a>
          </c:when>
          <c:otherwise>
          <a href="./QuestionContents.qu?quNo=${qu.quNo}&amp;pageNum=${pageNum}">X</a>
          
          </c:otherwise>
        </c:choose>
        </td>
      </tr>
      </c:if>
    </c:forEach>
  </table>

  <form id="searchForm" action="./noticeList.no" method="get">
    <div>
      <input type="text" name="keyWord">
      <input type="submit" value="검색">
    </div>
  </form>

  <div id="pageBlock">
    <c:if test="${startPage > pageBlock}">
      <a href="./QuestionList.qu?pageNum=${startPage-pageBlock}">[이전]</a>
    </c:if>

    <c:forEach var="i" begin="${startPage}" end="${endPage}">
      <a href="./QuestionList.qu?pageNum=${i}">[${i}]</a>
    </c:forEach>

    <c:if test="${endPage < pageCount}">
      <a href="./QuestionList.qu?pageNum=${startPage+pageBlock}">[다음]</a>
    </c:if>
  </div>

  <div id="writeButton">
    <input type="button" value="글쓰기" onclick="location.href='./noticeWriteForm.no'">
  </div>
</div>
			
			</c:if>
	
	</section>
	
	
	
	
	
	
	<!-- 여기서부터 footer -->
	<footer class="ftco-footer ftco-bg-dark ftco-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">
							<a href="#" class="logo">Car<span>book</span></a>
						</h2>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</p>
						<ul
							class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
							<li class="ftco-animate"><a href="#"><span
									class="icon-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-instagram"></span></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4 ml-md-5">
						<h2 class="ftco-heading-2">Information</h2>
						<ul class="list-unstyled">
							<li><a href="#" class="py-2 d-block">About</a></li>
							<li><a href="#" class="py-2 d-block">Services</a></li>
							<li><a href="#" class="py-2 d-block">Term and Conditions</a></li>
							<li><a href="#" class="py-2 d-block">Best Price
									Guarantee</a></li>
							<li><a href="#" class="py-2 d-block">Privacy &amp;
									Cookies Policy</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Customer Support</h2>
						<ul class="list-unstyled">
							<li><a href="#" class="py-2 d-block">FAQ</a></li>
							<li><a href="#" class="py-2 d-block">Payment Option</a></li>
							<li><a href="#" class="py-2 d-block">Booking Tips</a></li>
							<li><a href="#" class="py-2 d-block">How it works</a></li>
							<li><a href="#" class="py-2 d-block">Contact Us</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Have a Questions?</h2>
						<div class="block-23 mb-3">
							<ul>
								<li><span class="icon icon-map-marker"></span><span
									class="text">203 Fake St. Mountain View, San Francisco,
										California, USA</span></li>
								<li><a href="#"><span class="icon icon-phone"></span><span
										class="text">+2 392 3929 210</span></a></li>
								<li><a href="#"><span class="icon icon-envelope"></span><span
										class="text">info@yourdomain.com</span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">

					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="icon-heart color-danger" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.timepicker.min.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
</html>