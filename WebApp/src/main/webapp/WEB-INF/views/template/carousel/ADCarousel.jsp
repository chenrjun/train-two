<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="/app/resources/custom-carousel.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script src="/app/resources/custom-carousel.js"></script>

<%
	/* Annotations
		this page is for ADCarousel.
		@param adcarouselList
		adcarouselItem.href = link
		adcarouselItem.imgSrc= imageSource
	*/
	/*
		needing to be imported css and style:
		<link rel="stylesheet" type="text/css" href="/app/resources/custom-carousel.css">
		<script src="/app/resources/custom-carousel.js"></script>
	*/
	
%>
<div id="ADCarousel-warp" class="custom-carousel">
	<div id="ADCarousel" class="carousel slide">
		<div class="carousel-outer">
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="http://res2.pubu.tw/secs/5057/74398/kL6yTy.jpg" alt="" />
				</div>
				<div class="item">
					<img src="http://res1.pubu.tw/secs/5104/74398/B3FsCQ.jpg" alt="" />
				</div>
				<!-- jstl block -->
				<c:forEach items="${adcarouselList}" var="adcarouselItem" varStatus="index">
					<c:if test="${index == 0}">
						<div class="item active">
							<a href="${adcarouselItem.href}">
								<img src="${adcarouselItem.imgSrc}" />
							</a>
						</div>
					</c:if>
					<div class="item">
						<a href="${adcarouselItem.href}">
							<img src="${adcarouselItem.imgSrc}" />
						</a>
					</div>
				</c:forEach>
				<!-- jstl block end -->
			</div>
			<!-- Controls -->
			<a class="left carousel-control" href="#ADCarousel" data-slide="prev"> &#60; </a>
			<a class="right carousel-control" href="#ADCarousel" data-slide="next"> &#62; </a>
		</div>
		<!-- Indicators -->
		<ol class="carousel-indicators">
		</ol>
	</div>
</div>

<script>
(function(){

	
}());
</script>

