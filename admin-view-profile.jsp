<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!doctype html>
<html lang="zxx">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Farmer Buddy</title>
<!-- google fonts -->
<link
	href="//fonts.googleapis.com/css2?family=Poppins:wght@300;600;700&display=swap"
	rel="stylesheet">
<!-- google fonts -->
<!-- Template CSS -->
<link rel="stylesheet" href="assets/css/style-starter.css">
<!-- <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script> -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<!-- Template CSS -->
</head>

<body>
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<!--header-->
	<header id="site-header" class="fixed-top">
		<div class="container-fluid">
			<jsp:include page="admin-side-header.jsp"></jsp:include>
		</div>
	</header>
	<!-- //header -->
	<!-- about breadcrumb -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="row pad-botm">
			<div class="col-md-6">
				<h4 class="header-line">
					<strong>Admin Profile</strong>
				</h4>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<img src="assets/images/my-profile.jpg"
					style="width: 600px; height: 400px;">
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="panel panel-warning shadow p-3 mb-5">
					<div class="panel-heading">View Profile</div>
					<div class="panel-body">
						<%
							ResultSet resultset = DatabaseConnection
								.getResultFromSqlQuery("select * from tbladmin where uname='" + session.getAttribute("uname") + "'");
						if (resultset.next()) {
						%>
						<div class="form-row">
							<div class="form-group col-md-12">
								<label for="adminId">Admin Id</label> <input type="text"
									class="form-control" id="adminId" placeholder="Admin Id"
									name="adminId" value="<%=resultset.getInt("id")%>" readonly>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
								<label for="email">Email Id</label> <input type="text"
									class="form-control" id="email" placeholder="Email Id"
									name="email" value="<%=resultset.getString("email")%>" readonly>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
								<label for="email">User Name</label> <input type="text"
									class="form-control" id="uname" placeholder="User Name"
									name="uname" value="<%=resultset.getString("uname")%>" readonly>
							</div>
						</div>
						<%
							}
						%>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="admin-side-footer.jsp"></jsp:include>
	<!-- //footer-29 block -->
	<!-- disable body scroll which navbar is in active -->
	<script>
		$(function() {
			$('.navbar-toggler').click(function() {
				$('body').toggleClass('noscroll');
			})
		});
	</script>
	<!-- disable body scroll which navbar is in active -->

	<!-- Template JavaScript -->
	<script src="assets/js/jquery-3.3.1.min.js"></script>
	<script src="assets/js/theme-change.js"></script>
	<!--/MENU-JS-->
	<script>
		$(window).on("scroll", function() {
			var scroll = $(window).scrollTop();

			if (scroll >= 80) {
				$("#site-header").addClass("nav-fixed");
			} else {
				$("#site-header").removeClass("nav-fixed");
			}
		});

		//Main navigation Active Class Add Remove
		$(".navbar-toggler").on("click", function() {
			$("header").toggleClass("active");
		});
		$(document).on("ready", function() {
			if ($(window).width() > 991) {
				$("header").removeClass("active");
			}
			$(window).on("resize", function() {
				if ($(window).width() > 991) {
					$("header").removeClass("active");
				}
			});
		});
	</script>
	<!--//MENU-JS-->
	<script src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#success').delay(3000).show().fadeOut('slow');
		});

		$(function() {
			$('#danger').delay(3000).show().fadeOut('slow');
		});

		$(function() {
			$('#warning').delay(3000).show().fadeOut('slow');
		});

		$(function() {
			$('#info').delay(3000).show().fadeOut('slow');
		});
	</script>
	<%
		} else {
	response.sendRedirect("admin-login.jsp");
	}
	%>
</body>
</html>