<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<title>Login Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link
	href="${pageContext.request.contextPath}/resources/css/vendor/bootstrap.min.css"
	rel="stylesheet" />

<!-- Loading Flat UI -->
<link
	href="${pageContext.request.contextPath}/resources/css/flat-ui.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/complementar.css"
	rel="stylesheet" />


<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
	      <script src="js/vendor/html5shiv.js"></script>
	      <script src="js/vendor/respond.min.js"></script>
	    <![endif]-->

</head>

<body onload='document.f.j_username.focus();'>
	<div id="wrap">

		<!-- Static navbar -->
		<div class="navbar navbar-inverse navbar-default navbar-static-top"
			role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
					</button>
					<a class="navbar-brand" href="#">Nexter</a>
				</div>
			</div>
		</div>


		<div class="container">

			<div class="page-header">
				<h3>Please log in</h3>
			</div>

<%-- 			<c:if test="${param.error != null}"> --%>
<!-- 				<p class="bg-danger loginError">Wrong username or password.</p> -->
<%-- 			</c:if> --%>

			<c:if test="${not empty error}">
				<p class="bg-danger loginError">Wrong username or password.<br />
					Caused: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message }
				</p>
				<p>
			</c:if>

			<form name='f'
				action='${pageContext.request.contextPath}/j_spring_security_check'
				method='POST'>

				<div class="login-form">
					<div class="form-group">
						<input type="text" class="form-control login-field" value=""
							placeholder="Enter your name" id="login-name" name='j_username' />
						<label class="login-field-icon fui-user" for="login-name"></label>
					</div>

					<div class="form-group">
						<input type="password" class="form-control login-field" value=""
							placeholder="Password" id="login-pass" name='j_password' /> <label
							class="login-field-icon fui-lock" for="login-pass"></label>
					</div>

					<input name="submit" type="submit" value="Login"
						class="btn btn-primary btn-lg btn-block" /> <a class="login-link"
						href="#">Lost your password?</a>
				</div>

			</form>


		</div>
		<div id="push"></div>
	</div>
	<!-- wrap -->

	<div id="footer">
		<div class="container">
			<p class="muted credit">
				Copyright &nbsp;&copy;&nbsp; 2015 &nbsp;<a
					href="http://codeonblue.com.br"> Code on Blue</a>
			</p>
		</div>
	</div>

	<!-- jQuery (necessary for Flat UI's JavaScript plugins) -->
	<script
		src="${pageContext.request.contextPath}/resources/js/vendor/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="${pageContext.request.contextPath}/resources/js/vendor/video.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/flat-ui.min.js"></script>

</body>
</html>
