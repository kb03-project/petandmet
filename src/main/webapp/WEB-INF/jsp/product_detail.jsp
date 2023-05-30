<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Pet&Met</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="../../resources/assets/img/favicon.png" rel="icon">

<!--  bootstrap 5.3.0 css -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

<!-- font Awesome 6 CDN -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">

<!-- Google Fonts -->
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic-coding.css" rel="stylesheet">
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="../../resources/assets/vendor/aos/aos.css" rel="stylesheet">
<link href="../../resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../../resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="../../resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="../../resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
<link href="../../resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="../../resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="../../resources/assets/css/style.css" rel="stylesheet">
<!-- html 분리 위함 -->
<script src="../../resources/assets/js/includeHTML.js"></script>
<!-- =======================================================
* Template Name: Gp
* Updated: Mar 10 2023 with Bootstrap v5.2.3
* Template URL: https://bootstrapmade.com/gp-free-multipurpose-html-bootstrap-template/
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
======================================================== -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<!-- ======= Header ======= -->
<header id="header" class="fixed-top header-inner-pages" include-html="../../resources/assets/html/navbar2.html"></header><!-- End Header -->

<main id="main">

	<!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>상품 상세</h2>
                
            </div>

        </div>
    </section><!-- End Breadcrumbs -->
    
    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-8">
            <div class="portfolio-details-slider swiper">
              <div class="swiper-wrapper align-items-center">
                <div class="swiper-slide">
                  <img alt="${dto.name}" src="${dto.image}">
                </div>
              </div>
              <div class="swiper-pagination"></div>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="portfolio-info">
              <h2>${dto.name}</h2>
              <hr>
              <ul>
                <li><strong>상품 종류</strong> : ${dto.category}</li>
                <c:if test="${dto.category eq '사료'}">
                <li><strong>사료 종류</strong> : ${dto.feed_type}
                <c:choose>
                <c:when test="${dto.feed_type eq '퍼피' or dto.feed_type eq '키튼'}"> (1세 미만)</c:when>
                <c:when test="${dto.feed_type eq '어덜트'}"> (1세 이상 7세 미만)</c:when>
                <c:when test="${dto.feed_type eq '시니어'}"> (7세 이상)</c:when>
                <c:otherwise>(모든 연령)</c:otherwise>
                </c:choose>
                </li>				
                </c:if>
                <li><strong>가격 : <fmt:formatNumber value="${dto.price}" pattern="#,###"></fmt:formatNumber>원</strong></li>
                
                <li>
                <c:if test="${dto.patella}">
                <span class="badge rounded-pill" style="color: black; background-color: aquamarine !important;">슬개골, 탈구질환</span>
                </c:if>
                <c:if test="${dto.tooth}">
                <span class="badge rounded-pill" style="color: black; background-color: bisque !important;">잇몸질환</span>
                </c:if>
                <c:if test="${dto.skin}">
                <span class="badge rounded-pill text-bg-info">피부질환</span>
                </c:if>
                <c:if test="${dto.scaling}">
                <span class="badge rounded-pill" style="color: black; background-color: deeppink !important;">스켈링</span>
                </c:if>
                </li>
                                
                <li class="text-center"><br><strong><a href="${dto.info_url}" target="_blank">자세히 보기</a></strong></li>
                
              </ul>
            </div>
            
            <div class="portfolio-description"></div>
            
            <div class="portfolio-info">
              <h3>상품 후기 (${fn:length(reviews)})</h3>
              <ul>
              <c:forEach items="${reviews}" var="review">
              	<li>
              	<p><strong>${review.uname}</strong></p>
              	<p>평점 
              	<c:forEach var="i" begin="1" end="${review.rate}">
	              	<i class="fa-solid fa-star" style="color: gold;"></i>
              	</c:forEach>
              	<c:forEach var="i" begin="1" end="${5 - review.rate}">
	              	<i class="fa-solid fa-star" style="color: gray;"></i>
              	</c:forEach>
              	</p>
              	<p>${review.content}</p>
              	</li>
              </c:forEach>
              </ul>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Portfolio Details Section -->
    
</main><!-- End #main -->

<footer id="footer" include-html="../../resources/assets/html/footer.html"></footer>

<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- bootstrap 5.3.0 js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

<!-- Vendor JS Files -->
<script src="../../resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
<script src="../../resources/assets/vendor/aos/aos.js"></script>
<script src="../../resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../../resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="../../resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="../../resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="../../resources/assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="../../resources/assets/js/main.js"></script>

<script>
	let f = () => {} // 화살표 함수
	includeHTML(f); // 콘솔 오류뜨는거 방지하려고 파라미터로 f 같이 보냈음
</script>
</body>
</html>