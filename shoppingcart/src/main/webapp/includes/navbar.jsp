<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
		<div class="container">
		<a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-bag-shopping"></i>E-Commerce Shopping Cart</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" 
				    href="index.jsp"><i class="fa-solid fa-house"></i>Home</a></li>
				<li class="nav-item"><a class="nav-link" href="cart.jsp"><i class="fa-solid fa-cart-shopping"></i>Cart<span class="badge badge-danger px-1">${cart_list.size()}</span></a></li>	
				<% 
				if(auth!=null){%>
					<li class="nav-item"><a class="nav-link" href="orders.jsp"><i class="fa-solid fa-truck"></i>Order</a></li>
					<li class="nav-item"><a class="nav-link" href="Log-out"><i class="fa-solid fa-right-from-bracket"></i>Logout</a></li>
					
				<%}else{ %>
					<li class="nav-item"><a class="nav-link" href="login.jsp"><i class="fa-solid fa-user"></i>Login</a></li>
					<li class="nav-item"><a class="nav-link" href="about.jsp"><i class="fa-solid fa-address-card"></i>About Us</a></li>
				<%} %>
				
				
				
						
				
			</ul>
			
		</div>
		</div>
	</nav>