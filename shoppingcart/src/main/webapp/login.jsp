<%@page import="com.cart.model.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cart.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
	User auth=(User) request.getSession().getAttribute("auth");
	if(auth!=null){
		
		response.sendRedirect("index.jsp");
	}
	ArrayList<Cart> cart_list=(ArrayList<Cart>)session.getAttribute("cart-list");
	if(cart_list != null){
		request.setAttribute("cart_list", cart_list);
	}
	%>
<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>

<%@include file="includes/head.jsp"%>
</head>
<body class="mycss" style="background-image: url('comm.jpg')">
	<%@include file="includes/navbar.jsp"%>
	<div class="container">
		<div class="card w-50 mx-auto my-5 mycss">
			<div class="card-header text-center ">User Login</div>
			<div class="card-body">
				<form action="user-Login" method="post">
					<div class="form-group">
						<label>Email Address</label> <input type="email"
							class="form-control" name="login-email"
							placeholder="Enter Your Email" required /> <label>Password</label>
						<input type="password" class="form-control" name="login-password"
							placeholder="********" required />

					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>

				</form>

			</div>

		</div>

	</div>


	<%@include file="includes/footer.jsp"%>
</body>
</html>