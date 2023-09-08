<%@page import="com.cart.model.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cart.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.cart.model.User"%>
<%@page import="com.cart.dao.ProductDao"%>
<%@page import="com.cart.connection.DbCon"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
	request.setAttribute("auth", auth);
}
ProductDao pd=new ProductDao(DbCon.getConnection());
List<Product> products=	pd.getAllProducts();

ArrayList<Cart> cart_list=(ArrayList<Cart>)session.getAttribute("cart-list");
if(cart_list != null){
	request.setAttribute("cart_list", cart_list);
}
%>

<!DOCTYPE html>
<html>
<head>
<title>Welcome to Shopping Cart</title>
<%@include file="includes/head.jsp"%>

</head>
<body class="mycss" style="background-image: url('/product-img/back3.jpg')">
		
	<%@include file="includes/navbar.jsp"%>
	<!-- <img src="product-images/shop.png" alt=""> -->

	<div class="container">
	
		<div class="card-header my-3">Here We are Showing Available All Products Details..</div>
		<div class="row">
			<% 
			if( !products.isEmpty()){
				for(Product p:products){%>
					<div class="col-md-3 my-3">
					<div class="card w-100" style="width: 18rem;">
						<img class="card-img-top" src="product-images/<%= p.getImage() %>" alt="">
						<div class="card-body">
							<h5 class="card-title"><%= p.getName() %></h5>
							<h6 class="price">Price $<%= p.getPrice() %></h6>
							<h6 class="catagory">Category <%= p.getCategory() %></h6>
							<div class="mt-3 d-flex justify-content-between">
								<a href="add-to-cart?id=<%= p.getId() %>" class="btn btn-dark btn-sm">Add Cart</a>
								<a href="order-now?quantity=1&id=<%= p.getId() %>" class="btn btn-primary btn sm">Buy Now</a>
							</div>
						</div>
					</div>
				</div>
					
				<% }
			} 
		%>

		</div>
	</div>



	<%@include file="includes/footer.jsp"%>
</body>
</html>