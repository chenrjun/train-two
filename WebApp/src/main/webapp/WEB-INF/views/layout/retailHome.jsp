<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<%@ page session="false"%>

<html>
<head>
<title>Pubu 電子書城</title>
<script src="/app/resources/jquery.js"></script>
<!-- custom style -->
<link rel="stylesheet" type="text/css" href="/app/resources/retailStyle.css"/>

<!-- necesserary import -->
<link rel="stylesheet" type="text/css" href="/app/resources/bootstrap.min.css" />
<script src="/app/resources/bootstrap.min.js"></script>
</head>
<body>
	<tiles:insertAttribute name="header"/>
	<div class="container">
		<!-- 廣告 -->
		<div class="row">
			<div class="col-lg-7 col-md-7 col-sm-12">
				<tiles:insertAttribute name="adcarousel"/>
			</div>
			<div class="col-lg-5 col-md-5 col-sm-12">
				<tiles:insertAttribute name="recommendedCarousel"/>
			</div>
		</div>
		<!-- 廣告end -->
		
	</div>
</body>
</html>