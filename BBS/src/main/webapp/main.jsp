<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="styleseet" href="css/bootstrap.css">
<link rel="styleseet" href="css/custom.css">
<title> JSP Bulletin Board Site </title>
</head>
<body>

	<%
		String userID = null;
		if(session.getAttribute("userID") != null) {
			userID = (String)session.getAttribute("userID");
		}
	%>
	
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp"> JSP Bulletin Board Site </a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">Main</a>
				<li><a href="bbs.jsp">BBS</a>
			</ul>
			<%
				if(userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Access<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">Login</a>
						<li><a href="join.jsp">Register</a>
					</ul>
			</ul>
			<%
				}
				else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">My Page<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">Logout</a>
					</ul>
			</ul>
			<%
				}
			%>
		</div>
	</nav>

	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>Introduce</h1>
				<p>This Website is a jSP Website made of bootstrap. It was developed using minimal simple logic. Bootstrap was used as a design template.
				<p><a class="btn btn-primary btn-pull" href="#" role="button">details</a>
			</div>
		</div>
	</div>

	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active">
				<li data-target="#myCarousel" data-slide-to="1">
				<li data-target="#myCarousel" data-slide-to="2">
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="https://search.naver.com/search.naver?where=image&section=image&query=%ED%8C%AC%EC%BC%80%EC%9D%B4%ED%81%AC%EB%A7%9B%20%EC%BF%A0%ED%82%A4&res_fr=786432&res_to=100000000&sm=tab_opt&color=&ccl=0&nso=so%3Ar%2Ca%3Aall%2Cp%3Aall&recent=0&datetype=0&startdate=0&enddate=0&gif=0&optStr=r&nso_open=0#">
				</div>
				<div class="item">
					<img src="https://search.naver.com/search.naver?where=image&section=image&query=%ED%8C%AC%EC%BC%80%EC%9D%B4%ED%81%AC%EB%A7%9B%20%EC%BF%A0%ED%82%A4&res_fr=&res_to=&sm=tab_opt&color=&ccl=0&nso=so%3Ar%2Ca%3Aall%2Cp%3Aall&recent=0&datetype=0&startdate=0&enddate=0&gif=0&optStr=&nso_open=0#">
				</div>
				<div class="item">
					<img src="https://postfiles.pstatic.net/MjAyMTAxMjNfMjI1/MDAxNjExNDEyNTUwMTQw.fGNUURNR304n-bu6P7CwQLpf5DUfTSrdCpooYK4fO4Ig.OEOZxkRLoZ-T8cUG-5h5ESHKnPJ8mb-P4yaRgA37Vz8g.JPEG.ekfaam/IMG_4778.jpg?type=w966">
				</div>
				<a class="left carousel-control" href="#myCarousel" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
				</a>
				<a class="right carousel-control" href="#myCarousel" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>