<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.body1 {
	background-color: #F4C2C2;
}

#grad2 {
	background-color: #86148c;
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
<title>Upcoming movies</title>

<meta charset="ISO-8859-1">

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
					if (l != null) {
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
	<Center>
		<h1>Admin Home</h1>
	</Center>
	<br>
	<center>

		<a href="addmovies.jsp">Add Movie to Databse</a><br> <br> <br>
		<a href="addshows.jsp">Add Shows to Databse</a><br> <br> <br>
		<a href="delshows.jsp">Delete Shows from Databse</a><br> <br>
		<br> <a href="updateshow.jsp">Update Shows</a><br> <br>
		<br> <a data-toggle="modal" data-target="#myModal"><b>See
				Collections</b></a>
		<div class="container">
			<!-- Modal -->
			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Admin Login</h4>
						</div>
						<div class="modal-body">
							<table>
								<thead>ALL COLLECTIONS
								</thead>
								<tr>
									<td>Esquare, University Road</td>
									<td>Rs. 540.0</td>
								</tr>
								<tr>
									<td>INOX, Bund Grden</td>
									<td>Rs. 0.0</td>
								</tr>
								<tr>
									<td>Cinepolis, Aundh</td>
									<td>Rs. 0.0</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>

	</center>
</body>
</html>