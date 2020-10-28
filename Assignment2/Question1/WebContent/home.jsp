<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">


<head>
<style>
#grad2 {
	background-color: #86148c;
}

.body1 {
	background-color: #F4C2C2;
}
</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Movie Talkies</title>
</head>
<body class="body1">


	<div></div>
	<div id="grad2">
		<nav class="navbar navbar-light">
			<div class="container-fluid">


				<font style="font-family: Algerian;"><h1>
						<b><a href="home.jsp" style="color: white">Movie Talkies</a></b>
					</h1></font>
				<h4 style="color: white;">
					<%
						String l = (String) session.getAttribute("login");
						if (l != null) {
							out.print("Welcome " + l);
						}
						session.setAttribute("flag", "0");
					%>
				</h4>
				<br> <a href="home.jsp" class="active" style="color: white">Home</a>
				<a href="latest.jsp" style="color: white">Latest Movies</a> <a
					href="upcoming.jsp" style="color: white">Upcoming Movies</a>
				<%
					
				%>
				<%
					if (l != null) {
						if (!l.contains(".com")) {
				%>
				<button class="btn btn-info btn-lg">
					<a href="adminhome.jsp" style="color: white">Admin Home</a>
				</button>
				<%
					}
				%>
				<div align=right>
					<a href="Logout.jsp" style="color: white">Logout</a>
				</div>
				<%
					} else {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="Register.jsp"><span
							class="glyphicon glyphicon-user"> Sign-up</a></span></li>
					<li><a href="Login.jsp"><span
							class="glyphicon glyphicon-log-in"> Login</a></span></li>
				</ul>
				<%
					}
				%>
			</div>
	</div>
	</nav>


	<div class="container" style="background-image: url("black.jpg")">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="Screenshot (101).png" style="height: 150%;">
				</div>
				<div class="item">
					<img src="nani2.jpg">
				</div>
				<div class="item">
					<img src="MANTO-POSTER.jpg">
				</div>

			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
		<button type="button" class="btn btn-info btn-block">
			<a href="latest.jsp" style="color: white">Book Now</a>
		</button>


		<div style="text-align: center">
			<span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
		</div>



	</div>
	<br>

</body>
</html>