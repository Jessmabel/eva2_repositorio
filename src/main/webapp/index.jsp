<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<!-- CSS only -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
 
</head>
<body>
	<div class="container">
		<div class="colums">
			<div id="login" class="col">
				<h3 class="title">Iniciar Sesion</h3>
				<form method="post" action="login.jsp">
					<!-- Email input -->
					<div class="form-outline mb-4">
						<input type="text" placeholder="Usuario" id="form2Example1" name="usuario"
							class="input is-primary" />
					</div>
					<!-- Password input -->
					<div class="form-outline mb-4">
						<input type="password" id="form2Example2" class="input is-primary" placeholder="Password"
							name="password" /> 
					</div>
					<!-- Submit button -->
					<button type="submit" value="login"
						class="button is-info mb-4">Entrar</button>
				</form>
				<%
				String profile_msg = (String) request.getAttribute("profile_msg");
				if (profile_msg != null) {
					out.print(profile_msg);
				}
				String login_msg = (String) request.getAttribute("login_msg");
				if (login_msg != null) {
					out.print(login_msg);
				}
				%>  
			</div>
		</div>
	</div>
</body>
</html>