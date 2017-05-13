<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<script src="/app/resources/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="/app/resources/bootstrap.min.css" />
<script src="/app/resources/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/app/resources/custom-carousel.css" />

</head>
<body>
	<div class="container">
		<div class="row">
			<!-- 廣告輪播 -->
			<div class="col-lg-7 col-md-7 col-sm-12">
				<div id="ADCarousel-warp" class="custom-carousel">
					<div id="ADCarousel" class="carousel slide" data-ride="carousel" data-interval="5000">
						<div class="carousel-outer">
							<!-- Wrapper for slides -->
							<div class="carousel-inner">
								<div class="item active">
									<img src="http://res2.pubu.tw/secs/5057/74398/kL6yTy.jpg" alt="" />
								</div>
								<div class="item">
									<img src="http://res1.pubu.tw/secs/5104/74398/B3FsCQ.jpg" alt="" />
								</div>
							</div>
							<!-- Controls -->
							<a class="left carousel-control" href="#ADCarousel" data-slide="prev"> &#60; </a>
							<a class="right carousel-control" href="#ADCarousel" data-slide="next"> &#62; </a>
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#ADCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#ADCarousel" data-slide-to="1"></li>
							</ol>
						</div>

					</div>
				</div>
			</div>
			<!-- 廣告輪播end -->
			
			<div class="col-lg-5 col-md-5 col-sm-12">
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
							</div>
							<!-- Controls -->
							<a class="left carousel-control" href="#recommended-carousel" data-slide="prev"> &#60; </a>
							<a class="right carousel-control" href="#recommended-carousel" data-slide="next"> &#62; </a>
						</div>
						<ol class="carousel-indicators">
							<li data-target="#recommended-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#recommended-carousel" data-slide-to="1"></li>
						</ol>
					</div>
				</div>
				<!-- 今日推薦end -->
			</div>
			
		</div>
	</div>

</body>
</html>
