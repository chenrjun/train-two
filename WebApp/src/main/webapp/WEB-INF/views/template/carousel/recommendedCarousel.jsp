<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	/* Annotations
		this page is for recommendedCarousel.
		@param recommendedCarouselList
		recommendedCarouselList.href = link
		recommendedCarouselList.imgSrc= imageSource
		
	*/
%>

<!-- 今日推薦 -->
<div id="recommended-carousel-warp" class="custom-carousel">
	<div id="recommended-carousel" class="carousel slide" data-ride="carousel" data-interval="100000">
		<div class="carousel-outer">
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<article style="background-image: url('http://res2.pubu.tw/secs/5129/91119/m5b32W.jpg');">
						<a class="cover" href="#">
							<img src="http://res2.pubu.tw/secs/5129/91119/m5b32W.jpg" />
						</a>
						<div class="orange"></div>
						<div class="white"></div>
					</article>
				</div>
				<div class="item">
					<article style="background-image: url('http://res2.pubu.tw/secs/5129/91119/m5b32W.jpg');">
						<a class="cover" href="#">
							<img src="http://res2.pubu.tw/secs/5129/91119/m5b32W.jpg" />
						</a>
						<div class="orange"></div>
						<div class="white"></div>
					</article>
				</div>
				<c:forEach items="${recommendedCarouselList}" var="recommendedCarouselItem" varStatus="index">
					<c:if test="${index==0}">
						<div class="item active">
							<article style="background-image: url('${recommendedCarouselItem.imgSrc}');">
								<a class="cover" href="${recommendedCarouselItem.href}">
									<img src="${recommendedCarouselItem.imgSrc}" />
								</a>
								<div class="orange"></div>
								<div class="white"></div>
							</article>
						</div>
					</c:if>
				</c:forEach>
			</div>
			<!-- Controls -->
			<a class="left carousel-control" href="#recommended-carousel" data-slide="prev"> &#60; </a>
			<a class="right carousel-control" href="#recommended-carousel" data-slide="next"> &#62; </a>
		</div>
		<!-- Indicators -->
		<ol class="carousel-indicators">
		</ol>
	</div>
</div>
<!-- 今日推薦end -->