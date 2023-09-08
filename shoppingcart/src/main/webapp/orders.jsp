<%@page import="com.cart.model.Order"%>
<%@page import="java.util.List"%>
<%@page import="com.cart.dao.OrderDao"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.cart.model.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cart.model.User"%>
<%@page import="com.cart.connection.DbCon"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
	DecimalFormat dcf=new DecimalFormat("#.##");
	request.setAttribute("dcf", dcf);
	User auth=(User) request.getSession().getAttribute("auth");
	List<Order> orders=null;
	if(auth!=null){
		request.setAttribute("auth", auth);
		orders=new OrderDao(DbCon.getConnection()).userOrders(auth.getId());
	}else{
		
		response.sendRedirect("login.jsp");
	}
	ArrayList<Cart> cart_list=(ArrayList<Cart>)session.getAttribute("cart-list");
	if(cart_list != null){
		request.setAttribute("cart_list", cart_list);
	}
	%>
<!DOCTYPE html>
<html>
<head>
<title>Orders Page</title>
<%@include file="includes/head.jsp" %>
</head>
<body class="mycss">
	<%@include file="includes/navbar.jsp"%>
	<div class="container">
	<div class="card-header my-3">This Your All Orders Details Here..</div>
		<div class="d-flex py-3">
			
			<a class="max-3 btn btn-primary" href="cart-check-out">Check Out</a>
		</div>
		<table class="table table-dark">
			<thead>
				<tr>
					<th scope="col">Date</th>
					<th scope="col">Name</th>
					<th scope="col">Category</th>
					<th scope="col">Quantity</th>
					<th scope="col">Price</th>
					<th scope="col">Cancel</th>
				</tr>
			</thead>
			<tbody>
			<%
				if(orders !=null){
					for(Order o:orders){%>
					<tr>
					<td><%= o.getDate()%></td>
					<td><%= o.getName()%></td>
					<td><%= o.getCategory()%></td>
					<td><%= o.getQuantity()%></td>
					<td><%= dcf.format(o.getPrice()) %></td>
					<td><a class="btn btn-danger btn-sm" href="cancel-order?id=<%= o.getOrderId()%>">Cancel</a></tr>
					</tr>
					<%}
				}
			%>
			</tbody>
			
		</table>
	</div>
			
			
	
	<%@include file="includes/footer.jsp" %>
</body>
</html>