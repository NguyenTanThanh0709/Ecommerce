<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Home page</title>

<style>
.icon-hover:hover {
	border-color: #3b71ca !important;
	background-color: white !important;
}

.icon-hover:hover i {
	color: #3b71ca !important;
}

.product_view .modal-dialog {
	max-width: 800px;
	width: 100%;
}

.pre-cost {
	text-decoration: line-through;
	color: #a5a5a5;
}

.space-ten {
	padding: 10px 0;
}
</style>

</head>
<body>


	<header>
		<!-- Jumbotron -->
		<div class="p-3 text-center bg-white border-bottom">
			<div class="container">
				<div class="row gy-3">
					<!-- Left elements -->
					<div class="col-lg-2 col-sm-4 col-4">
						<a href="https://mdbootstrap.com/" target="_blank"
							class="float-start"> <img
							src="https://mdbootstrap.com/img/logo/mdb-transaprent-noshadows.png"
							height="35" />
						</a>
					</div>
					<!-- Left elements -->

					<!-- Center elements -->
					<div class="order-lg-last col-lg-5 col-sm-8 col-8">
						<div class="d-flex float-end">
							<h3 id="inforUser" data-user="${user.phonenumber}">hello
								${user.nameuser }</h3>
							<a href="/login"
								class="me-1 border rounded py-1 px-3 nav-link d-flex align-items-center">
								<i class="fas fa-user-alt m-1 me-md-2"></i>
								<p class="d-none d-md-block mb-0">Sign in</p>
							</a> <a href="/cart"
								class="border rounded py-1 px-3 nav-link d-flex align-items-center">
								<i class="fas fa-shopping-cart m-1 me-md-2"></i>
								<p class="d-none d-md-block mb-0">My cart</p>
							</a>

							<form:form  action="/logout" class = "btn btn-outline-secondary" method="post">
								<button type="submit">Logout</button>
							</form:form>



						</div>



					</div>
					<!-- Center elements -->

					<!-- Right elements -->
					<nav class="navbar navbar-light bg-light">
						<form class="form-inline">
							<input oninput="searchByName(this)" class="form-control mr-sm-2"
								type="search" placeholder="Search" aria-label="Search">
							<button class="btn btn-outline-success my-2 my-sm-0"
								type="submit">Search</button>
						</form>
					</nav>
					<!-- Right elements -->
				</div>
			</div>
		</div>
		<!-- Jumbotron -->

		<!-- Navbar -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
			<!-- Container wrapper -->
			<div
				class="container justify-content-center justify-content-md-between">
				<!-- Toggle button -->
				<button class="navbar-toggler" type="button"
					data-mdb-toggle="collapse"
					data-mdb-target="#navbarLeftAlignExample"
					aria-controls="navbarLeftAlignExample" aria-expanded="false"
					aria-label="Toggle navigation">
					<i class="fas fa-bars"></i>
				</button>

				<!-- Collapsible wrapper -->
				<div class="collapse navbar-collapse" id="navbarLeftAlignExample">
					<!-- Left links -->
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item">
							<div class="input-group-append">
								<button class="btn btn-outline-secondary dropdown-toggle"
									type="button" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">Categories</button>
								<div class="dropdown-menu">
									<c:forEach var="c" items="${cate }">
										<span onclick="searchBrand(this)"
											data-animal-type="${c.idcategory }" class="dropdown-item">${c.namecategory }</span>
									</c:forEach>
								</div>
							</div>
						</li>
						<li class="nav-item">

							<div class="input-group-append">
								<button class="btn btn-outline-secondary dropdown-toggle"
									type="button" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">Colors</button>
								<div class="dropdown-menu">
									<c:forEach var="c" items="${colors }">
										<span onclick="searchColors(this)" data-animal-type="${c}"
											class="dropdown-item" href="#">${c }</span>
									</c:forEach>
								</div>
							</div>


						</li>
					</ul>
					<!-- Left links -->
				</div>
			</div>
			<!-- Container wrapper -->
		</nav>
		<!-- Navbar -->
	</header>



	<!-- Products -->
	<section>
		<div class="container my-5">
			<header class="mb-4">
				<h3>All products</h3>
			</header>

			<div class="row" id="content">



				<c:forEach var="c" items="${listproduct}">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="card my-2 shadow-0">
							<a href="#" class="img-wrap">
								<div class="mask" style="height: 50px;"></div> <img
								src="${c.image}" class="card-img-top" style="aspect-ratio: 1/1">
							</a>
							<div class="card-body p-0 pt-3">
								<h5 class="card-title">${c.price}$</h5>
								<p class="card-text mb-0">${c.nameproduct}</p>
								<p class="card-text mb-0">
									<c:if test="${c.idcategory == 1}">
											Phone
										</c:if>
									<c:if test="${c.idcategory == 2}">
											Cloth
										</c:if>
									<c:if test="${c.idcategory == 3}">
											Electronics
										</c:if>
									<c:if test="${c.idcategory == 4}">
											Laptop
										</c:if>

								</p>
								<p class="text-muted">Color: ${c.color}</p>
								<div onclick="showModal(this)" data-index="${c.idproduct }"
									class="btn-ground text-center m-3">
									<button type="button" class="btn btn-primary"
										data-toggle="modal" data-target="#exampleModalCenter">
										<i class="fa fa-search"></i> Quick View and add to cart
									</button>
								</div>
							</div>

						</div>
					</div>
				</c:forEach>










			</div>
			<button onclick="loadMoreData()" type="button"
				class="btn btn-primary">Load More</button>
		</div>
	</section>
	<!-- Products -->



	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="ten"></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="card" style="width: 18rem;">
						<img class="card-img-top" id="img" alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title" id="gia"></h5>
							<h5 class="card-text" id="mau"></h5>
							<h5 class="card-text" id="brand"></h5>
							<p class="card-text" id="des"></p>

						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button id="id_pro_addCart" onclick="addcard(this)" data-id=""
						type="button" class="btn btn-primary" data-dismiss="modal">Add
						to Cart</button>
				</div>
			</div>
		</div>
	</div>



	<h1 class="ml-5">Best Seller</h1>
	<!-- Feature -->
	<section class="">
		<div class="container">
			<div class="row gy-4">
				<div class="col-lg-6">
					<div class="card-banner bg-gray h-100"
						style="min-height: 200px; background-size: cover; background-position: center; width: 100%; background-repeat: no-repeat; top: 50%; background-image: url('https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/banners/banner-item2.webp');">
						<div class="p-3 p-lg-5" style="max-width: 70%;">
							<h3 class="text-dark">Best products & brands in our store at
								80% off</h3>
							<p>That's true but not always</p>
							<button class="btn btn-warning shadow-0" href="#">Claim
								offer</button>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="row mb-3 mb-sm-4 g-3 g-sm-4">
						<div class="col-6 d-flex">
							<div class="card w-100 bg-primary" style="min-height: 200px;">
								<div class="card-body">
									<h5 class="text-white">Gaming toolset</h5>
									<p class="text-white-50">Technology for cyber sport</p>
									<a class="btn btn-outline-light btn-sm" href="#">Learn more</a>
								</div>
							</div>
						</div>
						<div class="col-6 d-flex">
							<div class="card w-100 bg-primary" style="min-height: 200px;">
								<div class="card-body">
									<h5 class="text-white">Quality sound</h5>
									<p class="text-white-50">All you need for music</p>
									<a class="btn btn-outline-light btn-sm" href="#">Learn more</a>
								</div>
							</div>
						</div>
					</div>
					<!-- row.// -->

					<div class="card bg-success" style="min-height: 200px;">
						<div class="card-body">
							<h5 class="text-white">Buy 2 items, With special gift</h5>
							<p class="text-white-50" style="max-width: 400px;">Buy one,
								get one free marketing strategy helps your business improves the
								brand by sharing the profits</p>
							<a class="btn btn-outline-light btn-sm" href="#">Learn more</a>
						</div>
					</div>
				</div>
				<!-- col.// -->
			</div>
			<!-- row.// -->
		</div>
		<!-- container end.// -->
	</section>
	<!-- Feature -->

	<!-- Recently viewed -->
	<section class="mt-5 mb-4">
		<div class="container text-dark">
			<header class="">
				<h3 class="section-title">New Products</h3>
			</header>

			<div class="row gy-3">
				<c:forEach var="c" items="${listTOp6product}">
					<div class="col-lg-2 col-md-4 col-4">
						<a href="#" class="img-wrap"> <img height="200" width="200"
							class="img-thumbnail" src="${c.image }" />
						</a>
					</div>
					<!-- col.// -->

				</c:forEach>
			</div>
		</div>
	</section>
	<!-- Recently viewed -->



	<!-- Footer -->
	<footer class="text-center text-lg-start text-muted bg-primary mt-3">
		<!-- Section: Links  -->
		<section class="">
			<div class="container text-center text-md-start pt-4 pb-4">
				<!-- Grid row -->
				<div class="row mt-3">
					<!-- Grid column -->
					<div class="col-12 col-lg-3 col-sm-12 mb-2">
						<!-- Content -->
						<a href="https://mdbootstrap.com/" target="_blank"
							class="text-white h2"> MDB </a>
						<p class="mt-1 text-white">© 2023 Copyright: MDBootstrap.com
						</p>
					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-6 col-sm-4 col-lg-2">
						<!-- Links -->
						<h6 class="text-uppercase text-white fw-bold mb-2">Store</h6>
						<ul class="list-unstyled mb-4">
							<li><a class="text-white-50" href="#">About us</a></li>
							<li><a class="text-white-50" href="#">Find store</a></li>
							<li><a class="text-white-50" href="#">Categories</a></li>
							<li><a class="text-white-50" href="#">Blogs</a></li>
						</ul>
					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-6 col-sm-4 col-lg-2">
						<!-- Links -->
						<h6 class="text-uppercase text-white fw-bold mb-2">
							Information</h6>
						<ul class="list-unstyled mb-4">
							<li><a class="text-white-50" href="#">Help center</a></li>
							<li><a class="text-white-50" href="#">Money refund</a></li>
							<li><a class="text-white-50" href="#">Shipping info</a></li>
							<li><a class="text-white-50" href="#">Refunds</a></li>
						</ul>
					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-6 col-sm-4 col-lg-2">
						<!-- Links -->
						<h6 class="text-uppercase text-white fw-bold mb-2">Support</h6>
						<ul class="list-unstyled mb-4">
							<li><a class="text-white-50" href="#">Help center</a></li>
							<li><a class="text-white-50" href="#">Documents</a></li>
							<li><a class="text-white-50" href="#">Account restore</a></li>
							<li><a class="text-white-50" href="#">My orders</a></li>
						</ul>
					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-12 col-sm-12 col-lg-3">
						<!-- Links -->
						<h6 class="text-uppercase text-white fw-bold mb-2">Newsletter</h6>
						<p class="text-white">Stay in touch with latest updates about
							our products and offers</p>
						<div class="input-group mb-3">
							<input type="email" class="form-control border"
								placeholder="Email" aria-label="Email"
								aria-describedby="button-addon2" />
							<button class="btn btn-light border shadow-0" type="button"
								id="button-addon2" data-mdb-ripple-color="dark">Join</button>
						</div>
					</div>
					<!-- Grid column -->
				</div>
				<!-- Grid row -->
			</div>
		</section>
		<!-- Section: Links  -->

		<div class="">
			<div class="container">
				<div class="d-flex justify-content-between py-4 border-top">
					<!--- payment --->
					<div>
						<i class="fab fa-lg fa-cc-visa text-white"></i> <i
							class="fab fa-lg fa-cc-amex text-white"></i> <i
							class="fab fa-lg fa-cc-mastercard text-white"></i> <i
							class="fab fa-lg fa-cc-paypal text-white"></i>
					</div>
					<!--- payment --->

					<!--- language selector --->
					<div class="dropdown dropup">
						<a class="dropdown-toggle text-white" href="#" id="Dropdown"
							role="button" data-mdb-toggle="dropdown" aria-expanded="false">
							<i class="flag-united-kingdom flag m-0 me-1"></i>English
						</a>

						<ul class="dropdown-menu dropdown-menu-end"
							aria-labelledby="Dropdown">
							<li><a class="dropdown-item" href="#"><i
									class="flag-united-kingdom flag"></i>English <i
									class="fa fa-check text-success ms-2"></i></a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#"><i
									class="flag-poland flag"></i>Polski</a></li>
							<li><a class="dropdown-item" href="#"><i
									class="flag-china flag"></i>中文</a></li>
							<li><a class="dropdown-item" href="#"><i
									class="flag-japan flag"></i>日本語</a></li>
							<li><a class="dropdown-item" href="#"><i
									class="flag-germany flag"></i>Deutsch</a></li>
							<li><a class="dropdown-item" href="#"><i
									class="flag-france flag"></i>Français</a></li>
							<li><a class="dropdown-item" href="#"><i
									class="flag-spain flag"></i>Español</a></li>
							<li><a class="dropdown-item" href="#"><i
									class="flag-russia flag"></i>Русский</a></li>
							<li><a class="dropdown-item" href="#"><i
									class="flag-portugal flag"></i>Português</a></li>
						</ul>
					</div>
					<!--- language selector --->
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer -->


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


	<script type="text/javascript">
	
		const listcart = new Set();
	
		function addcard(thiss){
			var id = thiss.getAttribute("data-id");
			var user = document.getElementById("inforUser").getAttribute("data-user");
	
	console.log(id);
	console.log(user);
			$.ajax({
		        url: '/saveCart?id=' + id + "&user=" + user,
		        type : "POST", //send it through get method
				dataType : 'json',
		        success: function (result) {
		        	alert("success!");
		        },
		        error: function (error) {
		        	alert("err!");
		        }
		    });
	
			
			
			
		}
	
		function showModal(thiss){
			var id = thiss.getAttribute("data-index");
			//var id = $(this).attr("data-index");
			console.log(id);
			
			$.ajax({
				url : '/getOne?id=' + id,
				type : "get", //send it through get method
				dataType : 'json',
				success : function(data) {
					console.log(id);
					console.log(data);
					var cate = "";
					if (data.idcategory == 1) {
						cate = "Phone";
					} else if (data.idcategory == 2) {
						cate = "Clothing";
					} else if (data.idcategory == 3) {
						cate = "Electonics";
					} else if (data.idcategory == 4) {
						cate = "Laptop";
					}
					
					$("#ten").text(data.nameproduct);
					$("#img").attr('src', data.image)
					$("#gia").text(data.price);
					$("#mau").text(data.color);
					$("#brand").text(cate);
					$("#des").text(data.description);
					$("#id_pro_addCart").attr('data-id', id);
				},
				error : function(xhr) {
					//Do Something to handle error
					alert("r");
				}
			});
			
		}
	
	
			function searchColors(thiss) {
	
				var animalType = thiss.getAttribute("data-animal-type");
	
				$.ajax({
					url : '/getAll',
					type : "get", //send it through get method
					dataType : 'json',
					success : function(data) {
	
						content.innerHTML = "";
						console.log(animalType);
						for (const c of data) { // You can use `let` instead of `const` if you like
						    if(c.color == animalType){
	
	
	
						    	const colDiv = document.createElement('div');
								colDiv.classList.add('col-lg-3', 'col-md-6', 'col-sm-6');
	
								const cardDiv = document.createElement('div');
								cardDiv.classList.add('card', 'my-2', 'shadow-0');
	
								const link = document.createElement('a');
								link.href = '#';
								link.classList.add('img-wrap');
	
								const maskDiv = document.createElement('div');
								maskDiv.classList.add('mask');
								maskDiv.style.height = '50px';
	
								const img = document.createElement('img');
								img.src = c.image;
								img.classList.add('card-img-top');
								img.style.aspectRatio = '1/1';
	
								const cardBodyDiv = document.createElement('div');
								cardBodyDiv.classList.add('card-body', 'p-0', 'pt-3');
	
								const title = document.createElement('h5');
								title.classList.add('card-title');
								title.innerText = c.price + " $";
	
								const nameProduct = document.createElement('p');
								nameProduct.classList.add('card-text', 'mb-0');
								nameProduct.innerText = c.nameproduct;
	
								const categoryId = document.createElement('p');
								categoryId.classList.add('card-text', 'mb-0');
								var cate = "";
								if (c.idcategory == 1) {
									cate = "Phone";
								} else if (c.idcategory == 2) {
									cate = "Clothing";
								} else if (c.idcategory == 3) {
									cate = "Electonics";
								} else if (c.idcategory == 4) {
									cate = "Laptop";
								}
								categoryId.innerText = "Category id: = " + cate;
	
								const color = document.createElement('p');
								color.classList.add('text-muted');
								color.innerText = "Color " + c.color;
	
								const btnGroundDiv = document.createElement('div');
								btnGroundDiv.classList.add('btn-ground', 'text-center', 'm-3');
	
								const btn = document.createElement('button');
								btn.type = 'button';
								btn.classList.add('btn', 'btn-primary');
								btn.setAttribute('data-toggle', 'modal');
								btn.setAttribute('data-target', '#exampleModalCenter');
	
								const icon = document.createElement('i');
								icon.classList.add('fa', 'fa-search');
	
								const buttonText = document
										.createTextNode(' Quick View and add to cart');
	
								btn.appendChild(icon);
								btn.appendChild(buttonText);
	
								btnGroundDiv.appendChild(btn);
								btnGroundDiv.setAttribute("data-index", c.idproduct);
								btnGroundDiv.addEventListener("click", function() {
									  showModal(this);
									});
								cardBodyDiv.appendChild(title);
								cardBodyDiv.appendChild(nameProduct);
								cardBodyDiv.appendChild(categoryId);
								cardBodyDiv.appendChild(color);
								cardBodyDiv.appendChild(btnGroundDiv);
	
								link.appendChild(maskDiv);
								link.appendChild(img);
	
								cardDiv.appendChild(link);
								cardDiv.appendChild(cardBodyDiv);
	
								colDiv.appendChild(cardDiv);
								content.append(colDiv);
	
	
	
	
	
							}
						}
	
					},
					error : function(xhr) {
						//Do Something to handle error
					}
				});
			}
	
	
				
	
	
		function searchBrand(thiss) {
	
			var animalType = thiss.getAttribute("data-animal-type");
	
			$.ajax({
				url : '/getAll',
				type : "get", //send it through get method
				dataType : 'json',
				success : function(data) {
	
					content.innerHTML = "";
					console.log(animalType);
					for (const c of data) { // You can use `let` instead of `const` if you like
					    if(c.idcategory == animalType){
	
	
	
					    	const colDiv = document.createElement('div');
							colDiv.classList.add('col-lg-3', 'col-md-6', 'col-sm-6');
	
							const cardDiv = document.createElement('div');
							cardDiv.classList.add('card', 'my-2', 'shadow-0');
	
							const link = document.createElement('a');
							link.href = '#';
							link.classList.add('img-wrap');
	
							const maskDiv = document.createElement('div');
							maskDiv.classList.add('mask');
							maskDiv.style.height = '50px';
	
							const img = document.createElement('img');
							img.src = c.image;
							img.classList.add('card-img-top');
							img.style.aspectRatio = '1/1';
	
							const cardBodyDiv = document.createElement('div');
							cardBodyDiv.classList.add('card-body', 'p-0', 'pt-3');
	
							const title = document.createElement('h5');
							title.classList.add('card-title');
							title.innerText = c.price + " $";
	
							const nameProduct = document.createElement('p');
							nameProduct.classList.add('card-text', 'mb-0');
							nameProduct.innerText = c.nameproduct;
	
							const categoryId = document.createElement('p');
							categoryId.classList.add('card-text', 'mb-0');
							var cate = "";
							if (c.idcategory == 1) {
								cate = "Phone";
							} else if (c.idcategory == 2) {
								cate = "Clothing";
							} else if (c.idcategory == 3) {
								cate = "Electonics";
							} else if (c.idcategory == 4) {
								cate = "Laptop";
							}
							categoryId.innerText = "Category id: = " + cate;
	
							const color = document.createElement('p');
							color.classList.add('text-muted');
							color.innerText = "Color " + c.color;
	
							const btnGroundDiv = document.createElement('div');
							btnGroundDiv.classList.add('btn-ground', 'text-center', 'm-3');
	
							const btn = document.createElement('button');
							btn.type = 'button';
							btn.classList.add('btn', 'btn-primary');
							btn.setAttribute('data-toggle', 'modal');
							btn.setAttribute('data-target', '#exampleModalCenter');
	
							const icon = document.createElement('i');
							icon.classList.add('fa', 'fa-search');
	
							const buttonText = document
									.createTextNode(' Quick View and add to cart');
	
							btn.appendChild(icon);
							btn.appendChild(buttonText);
	
							btnGroundDiv.appendChild(btn);
							btnGroundDiv.setAttribute("data-index", c.idproduct);
							btnGroundDiv.addEventListener("click", function() {
								  showModal(this);
								});
							cardBodyDiv.appendChild(title);
							cardBodyDiv.appendChild(nameProduct);
							cardBodyDiv.appendChild(categoryId);
							cardBodyDiv.appendChild(color);
							cardBodyDiv.appendChild(btnGroundDiv);
	
							link.appendChild(maskDiv);
							link.appendChild(img);
	
							cardDiv.appendChild(link);
							cardDiv.appendChild(cardBodyDiv);
	
							colDiv.appendChild(cardDiv);
							content.append(colDiv);
	
	
							
						}
					}
	
				},
				error : function(xhr) {
					//Do Something to handle error
				}
			});
		}
	
	
	
	
		
			var start = 9;
			var end = 12;
			var content = document.getElementById("content");
	
			function loadMoreData() {
	
				$.ajax({
					url : '/loadMore?start=' + start + '&end=' + end,
					type : "get", //send it through get method
					dataType : 'json',
					success : function(data) {
	
						data.forEach(myFunction_test);
	
						start = end + 1;
						end = end + 4;
	
					},
					error : function(xhr) {
						//Do Something to handle error
					}
				});
	
			}
	
			function searchByName(thiss) {
	
				var txt = thiss.value;
	
				$.ajax({
					url : '/searchAjax?query=' + txt,
					type : "get", //send it through get method
					dataType : 'json',
					success : function(data) {
	
						content.innerHTML = "";
						data.forEach(myFunction);
	
					},
					error : function(xhr) {
						//Do Something to handle error
					}
				});
			}
	
			function myFunction_test(c) {
				const colDiv = document.createElement('div');
				colDiv.classList.add('col-lg-3', 'col-md-6', 'col-sm-6');
	
				const cardDiv = document.createElement('div');
				cardDiv.classList.add('card', 'my-2', 'shadow-0');
	
				const link = document.createElement('a');
				link.href = '#';
				link.classList.add('img-wrap');
	
				const maskDiv = document.createElement('div');
				maskDiv.classList.add('mask');
				maskDiv.style.height = '50px';
	
				const img = document.createElement('img');
				img.src = c.image;
				img.classList.add('card-img-top');
				img.style.aspectRatio = '1/1';
	
				const cardBodyDiv = document.createElement('div');
				cardBodyDiv.classList.add('card-body', 'p-0', 'pt-3');
	
				const title = document.createElement('h5');
				title.classList.add('card-title');
				title.innerText = c.price + " $";
	
				const nameProduct = document.createElement('p');
				nameProduct.classList.add('card-text', 'mb-0');
				nameProduct.innerText = c.nameproduct;
	
				const categoryId = document.createElement('p');
				categoryId.classList.add('card-text', 'mb-0');
				var cate = "";
				if (c.idcategory == 1) {
					cate = "Phone";
				} else if (c.idcategory == 2) {
					cate = "Clothing";
				} else if (c.idcategory == 3) {
					cate = "Electonics";
				} else if (c.idcategory == 4) {
					cate = "Laptop";
				}
				categoryId.innerText = "Category id: = " + cate;
	
				const color = document.createElement('p');
				color.classList.add('text-muted');
				color.innerText = "Color " + c.color;
	
				const btnGroundDiv = document.createElement('div');
				btnGroundDiv.classList.add('btn-ground', 'text-center', 'm-3');
				btnGroundDiv.setAttribute("data-index", c.idproduct);
				btnGroundDiv.addEventListener("click", function() {
					  showModal(this);
					});
				const btn = document.createElement('button');
				btn.type = 'button';
				btn.classList.add('btn', 'btn-primary');
				btn.setAttribute('data-toggle', 'modal');
				btn.setAttribute('data-target', '#exampleModalCenter');
	
				const icon = document.createElement('i');
				icon.classList.add('fa', 'fa-search');
	
				const buttonText = document
						.createTextNode(' Quick View and add to cart');
	
				btn.appendChild(icon);
				btn.appendChild(buttonText);
	
				btnGroundDiv.appendChild(btn);
				btnGroundDiv.setAttribute("data-index", c.idproduct);
				btnGroundDiv.addEventListener("click", function() {
					  showModal(this);
					});
				cardBodyDiv.appendChild(title);
				cardBodyDiv.appendChild(nameProduct);
				cardBodyDiv.appendChild(categoryId);
				cardBodyDiv.appendChild(color);
				cardBodyDiv.appendChild(btnGroundDiv);
	
				link.appendChild(maskDiv);
				link.appendChild(img);
	
				cardDiv.appendChild(link);
				cardDiv.appendChild(cardBodyDiv);
	
				colDiv.appendChild(cardDiv);
				content.append(colDiv);
			}
	
			function myFunction(c) {
				const colDiv = document.createElement('div');
				colDiv.classList.add('col-lg-3', 'col-md-6', 'col-sm-6');
	
				const cardDiv = document.createElement('div');
				cardDiv.classList.add('card', 'my-2', 'shadow-0');
	
				const link = document.createElement('a');
				link.href = '#';
				link.classList.add('img-wrap');
	
				const maskDiv = document.createElement('div');
				maskDiv.classList.add('mask');
				maskDiv.style.height = '50px';
	
				const img = document.createElement('img');
				img.src = c.image;
				img.classList.add('card-img-top');
				img.style.aspectRatio = '1/1';
	
				const cardBodyDiv = document.createElement('div');
				cardBodyDiv.classList.add('card-body', 'p-0', 'pt-3');
	
				const title = document.createElement('h5');
				title.classList.add('card-title');
				title.innerText = c.price + " $";
	
				const nameProduct = document.createElement('p');
				nameProduct.classList.add('card-text', 'mb-0');
				nameProduct.innerText = c.nameproduct;
	
				const categoryId = document.createElement('p');
				categoryId.classList.add('card-text', 'mb-0');
				var cate = "";
				if (c.idcategory == 1) {
					cate = "Phone";
				} else if (c.idcategory == 2) {
					cate = "Clothing";
				} else if (c.idcategory == 3) {
					cate = "Electonics";
				} else if (c.idcategory == 4) {
					cate = "Laptop";
				}
				categoryId.innerText = "Category id: = " + cate;
	
				const color = document.createElement('p');
				color.classList.add('text-muted');
				color.innerText = "Color " + c.color;
	
				const btnGroundDiv = document.createElement('div');
				btnGroundDiv.classList.add('btn-ground', 'text-center', 'm-3');
	
				const btn = document.createElement('button');
				btn.type = 'button';
				btn.classList.add('btn', 'btn-primary');
				btn.setAttribute('data-toggle', 'modal');
				btn.setAttribute('data-target', '#exampleModalCenter');
	
				const icon = document.createElement('i');
				icon.classList.add('fa', 'fa-search');
	
				const buttonText = document
						.createTextNode(' Quick View and add to cart');
	
				btn.appendChild(icon);
				btn.appendChild(buttonText);
	
				btnGroundDiv.appendChild(btn);
				btnGroundDiv.setAttribute("data-index", c.idproduct);
				btnGroundDiv.addEventListener("click", function() {
					  showModal(this);
					});
				cardBodyDiv.appendChild(title);
				cardBodyDiv.appendChild(nameProduct);
				cardBodyDiv.appendChild(categoryId);
				cardBodyDiv.appendChild(color);
				cardBodyDiv.appendChild(btnGroundDiv);
	
				link.appendChild(maskDiv);
				link.appendChild(img);
	
				cardDiv.appendChild(link);
				cardDiv.appendChild(cardBodyDiv);
	
				colDiv.appendChild(cardDiv);
				content.append(colDiv);
			}
		</script>

</body>
</html>