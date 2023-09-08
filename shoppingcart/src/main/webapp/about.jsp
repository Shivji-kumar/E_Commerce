<%@page import="com.cart.model.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cart.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {

	response.sendRedirect("index.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<title>About Us</title>

<%@include file="includes/head.jsp"%>
</head>
<body class="mycss">
	<%@include file="includes/navbar.jsp"%> 
	<div class="container">
		<h2>About for Projects</h2>
		<p>Create online shopping system in Java using JSPs, Servlets and MySQL.
		Users can view, buy products and admins can add, edit, sell products.
		The Online Shopping System has become an essential tool for sellers and also for buyers.
		The online shopping system in java allows buyers to buy goods/products directly from the seller website and it saves time and money of buyer. 
		There is an advantage of the sellers to attract more customers using online shopping systems and it promotes cashless transactions.</p>
		<p><h2>An ecommerce website</h2> is your digital storefront on the
			internet. It facilitates the transaction between a buyer and seller.
			It is the virtual space where you showcase products, and online
			customers make selections. Your website acts as the product shelves,
			sales staff, and cash register of your online business channel.</p>
		<h2>E-commerce Website</h2>

		A website that allows people to buy and sell physical goods, services,
		and digital products over the internet rather than at a
		brick-and-mortar location. Through an e-commerce website, a business
		can process orders, accept payments, manage shipping and logistics,
		and provide customer service. Get your business online Use Mailchimp's
		all-in-one platform tools to give your brand a home and start selling
		your products and services. Sign up An e-commerce website is one that
		allows people to buy and sell physical goods, services, and digital
		products over the internet rather than at a brick-and-mortar location.
		Through an e-commerce website, a business can process orders, accept
		payments, manage shipping and logistics, and provide customer service.


		<h2>Services E-commerce sites are</h2>
		also a popular way to sell services, like consultations, maintenance,
		tutoring, lessons, and more. Whether you want to learn to code a
		website or you’re looking for an experienced trainer to help fix your
		dog’s troublesome barking habit, there’s no shortage of assistance
		available online. This form of business has evolved
		quite a bit since its beginnings in the electronic data interchange of
		the 1960s and the inception of online shopping in the 1990s. In recent
		years, e-commerce has enjoyed a massive boost from the rise of
		smartphones, which allow consumers to shop from nearly anywhere.
		<h2>Digital products</h2> Digital products—like online
		courses, software, podcasts, music, and e-books—are becoming
		increasingly popular on e-commerce sites as well. The rise of digital
		products has opened up a new way to learn skills on demand. What
		should your e-commerce site do? MailChimp Content Refresh -115 graphic
		-2-01 When it comes to selling goods and services online, there are a
		few basic functions every e-commerce site should include. Accept
		orders If you’re running a business that sells a product, your
		e-commerce site must be able to accept orders from your customers.
		This process can be more complex than you might expect. For each
		order, your site will need to: Record customer information (name,
		address, etc.) 
		<h2>As a seller, your goal is to</h2>
		ensure that customers receive the right product on time and in perfect
		condition. To help this process along, you can either handle shipping
		and logistics yourself or use a third-party provider. No matter which
		method you choose, your website should be able to initiate the process
		accurately and consistently. Your site will also need to have a
		process in place for accepting returned items. Also known as reverse
		logistics, this process is just as important as shipping outbound
		goods. Provide customer service Inevitably, your customers will need
		to communicate with you about their order or experience. They may need
		to correct their personal information, make an exchange, or return a
		faulty product. 
		
	</div>


	<%@include file="includes/footer.jsp"%>
</body>
</html>