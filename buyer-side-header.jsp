<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<nav class="navbar navbar-expand-lg stroke">
	<h2>
		<a class="navbar-brand mr-lg-5" href="index.jsp"> Farmer<span>
				Buddy</span>
		</a>
	</h2>
	<button class="navbar-toggler  collapsed bg-gradient" type="button"
		data-toggle="collapse" data-target="#navbarTogglerDemo02"
		aria-controls="navbarTogglerDemo02" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon fa icon-expand fa-bars"></span> <span
			class="navbar-toggler-icon fa icon-close fa-times"></span> </span>
	</button>
	<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item active"><a class="nav-link" href="">&nbsp;
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="">&nbsp;
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="">&nbsp;
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="">&nbsp;
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="">&nbsp;
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="">&nbsp;
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="">&nbsp;
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="">&nbsp;
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="">&nbsp;
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="">&nbsp;
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="">&nbsp;
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="">&nbsp;
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="">&nbsp;
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="">&nbsp;
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="">&nbsp;
			</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="buyer-dashboard.jsp">Home <span class="sr-only">(current)</span></a>
			</li>

			<li class="nav-item"><a class="nav-link"
				href="buyer-view-customer-crops-selling-details.jsp">View
					Farmers Selling Crops</a></li>
			<li class="nav-item"><a class="nav-link"
				href="buyer-view-customers.jsp">View Customers</a></li>
			<li class="nav-item"><a class="nav-link"
				href="buyer-view-profile.jsp">View Profile</a></li>
			<li id="menu-item-26"
				class="menu-item menu-item-type-post_type menu-item-object-page current-menu-ancestor current-menu-parent current_page_parent current_page_ancestor menu-item-has-children menu-item-26 nav-item active dropdown"><a
				href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"
				id="navbar-dropdown-menu-link-26" aria-haspopup="true"
				aria-expanded="false"><%=session.getAttribute("uname")%></a>
				<div class="sub-menu dropdown-menu"
					aria-labelledby="navbar-dropdown-menu-link-26">
					<a href="buyer-change-password.jsp" class="dropdown-item active"
						id="menu-item-27">Settings</a> <a href="logout.jsp"
						class="dropdown-item active" id="menu-item-27">Logout</a>
				</div></li>
		</ul>
	</div>
	<!-- toggle switch for light and dark theme -->
	<div class="mobile-position">
		<nav class="navigation">
			<div class="theme-switch-wrapper">
				<label class="theme-switch" for="checkbox"> <input
					type="checkbox" id="checkbox">
					<div class="mode-container">
						<i class="gg-sun"></i> <i class="gg-moon"></i>
					</div>
				</label>
			</div>
		</nav>
	</div>
	<!-- //toggle switch for light and dark theme -->
</nav>