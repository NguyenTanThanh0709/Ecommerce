
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
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
.icon-hover-primary:hover {
	border-color: #3b71ca !important;
	background-color: white !important;
}

.icon-hover-primary:hover i {
	color: #3b71ca !important;
}

.icon-hover-danger:hover {
	border-color: #dc4c64 !important;
	background-color: white !important;
}

.icon-hover-danger:hover i {
	color: #dc4c64 !important;
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
						<a href="/home" class="float-start"> <img
							src="https://mdbootstrap.com/img/logo/mdb-transaprent-noshadows.png"
							height="35" />
						</a>
					</div>
					<!-- Left elements -->

					<!-- Center elements -->
					<div class="order-lg-last col-lg-5 col-sm-8 col-8">
						<div class="d-flex float-end">
							<h3></h3>

						</div>



					</div>
					<!-- Center elements -->

					<!-- Right elements -->
					<nav class="navbar navbar-light bg-light">
						<form class="form-inline">
							<input class="form-control mr-sm-2" type="search"
								placeholder="Search" aria-label="Search">
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
									<a class="dropdown-item" href="#">Action</a> <a
										class="dropdown-item" href="#">Another action</a> <a
										class="dropdown-item" href="#">Something else here</a>
									<div role="separator" class="dropdown-divider"></div>
									<a class="dropdown-item" href="#">Separated link</a>
								</div>
							</div>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Hot
								offers</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Gift
								boxes</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Projects</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Menu
								item</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Menu
								name</a></li>
						<!-- Navbar dropdown -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-mdb-toggle="dropdown" aria-expanded="false">
								Others </a> <!-- Dropdown menu -->
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li><hr class="dropdown-divider" /></li>
								<li><a class="dropdown-item" href="#">Something else
										here</a></li>
							</ul></li>
					</ul>
					<!-- Left links -->
				</div>
			</div>
			<!-- Container wrapper -->
		</nav>
		<!-- Navbar -->
	</header>


	<!-- cart + summary -->
	<section class="bg-light my-5">
		<div class="container">
			<div class="row">
				<!-- cart -->
				<div class="col-lg-9">
					<div class="card border shadow-0">
						<div class="m-4">
							<h4 class="card-title mb-4">Your shopping cart</h4>
							<c:forEach var="c" items="${lists }">
								
								<div class="row gy-3 mb-4">
								<div class="col-lg-5">
									<div class="me-lg-5">
										<div class="d-flex">
											<img
												src="${c.image }"
												class="border rounded me-3"
												style="width: 96px; height: 96px;" />
											<div class="">
												<a href="#" class="nav-link">${c.nameproduct }</a>
												<p class="text-muted">${c.color } and ${c.idcategory }</p>
											</div>
										</div>
									</div>
								</div>
								<div
									class="col-lg-2 col-sm-6 col-6 d-flex flex-row flex-lg-column flex-xl-row text-nowrap">
									<div class="">
										<select style="width: 100px;" class="form-select me-4">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
										</select>
									</div>
									<div class="">
										<text class="h6">$ ${c.price }</text>
										
									</div>
								</div>
								<div
									class="col-lg col-sm-6 d-flex justify-content-sm-center justify-content-md-start justify-content-lg-center justify-content-xl-end mb-2">
									<div class="float-md-end">
										<a href="#"
											class="btn btn-light border px-2 icon-hover-primary"><i
											class="fas fa-heart fa-lg px-1 text-secondary"></i></a> <a
											href="/deleteCart?id=${c.idproduct }&user=${user.phonenumber}"
											class="btn btn-light border text-danger icon-hover-danger">
											Remove</a>
									</div>
								</div>
							</div>
							</c:forEach>
							

							<div class="border-top pt-4 mx-4 mb-4">
								<p>
									<i class="fas fa-truck text-muted fa-lg"></i> Free Delivery
									within 1-2 weeks
								</p>
								<p class="text-muted">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit, sed do eiusmod tempor incididunt
									ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
									nostrud exercitation ullamco laboris nisi ut aliquip</p>
							</div>
						</div>
					</div>
					<!-- cart -->
					<!-- summary -->
					<div class="col-lg-3">
						<div class="card mb-3 border shadow-0">
							<div class="card-body">
								<form>
									<div class="form-group">
										<label class="form-label">Have coupon?</label>
										<div class="input-group">
											<input type="text" class="form-control border" name=""
												placeholder="Coupon code" />
											<button class="btn btn-light border">Apply</button>
										</div>
									</div>
								</form>
							</div>
						</div>
						<div class="card shadow-0 border">
							<div class="card-body">
								<div class="d-flex justify-content-between">
									<p class="mb-2">Total price:</p>
									<p class="mb-2">$329.00</p>
								</div>
								<div class="d-flex justify-content-between">
									<p class="mb-2">Discount:</p>
									<p class="mb-2 text-success">-$60.00</p>
								</div>
								<div class="d-flex justify-content-between">
									<p class="mb-2">TAX:</p>
									<p class="mb-2">$14.00</p>
								</div>
								<hr />
								<div class="d-flex justify-content-between">
									<p class="mb-2">Total price:</p>
									<p class="mb-2 fw-bold">$283.00</p>
								</div>

								<div class="mt-3">
									<a href="/bill?user=${user.phonenumber }" class="btn btn-success w-100 shadow-0 mb-2">
										Make Purchase </a> <a href="/home"
										class="btn btn-light w-100 border mt-2"> Back to shop </a>
								</div>
							</div>
						</div>
					</div>
					<!-- summary -->
				</div>
			</div>
	</section>
	<!-- cart + summary -->
	<section>
		<div class="container my-5">
			<header class="mb-4">
				<h3>Recommended items</h3>
			</header>

			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="card px-4 border shadow-0 mb-4 mb-lg-0">
						<div class="mask px-2" style="height: 50px;">
							<div class="d-flex justify-content-between">
								<h6>
									<span class="badge bg-danger pt-1 mt-3 ms-2">New</span>
								</h6>
								<a href="#"><i
									class="fas fa-heart text-primary fa-lg float-end pt-3 m-2"></i></a>
							</div>
						</div>
						<a href="#" class=""> <img
							src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/7.webp"
							class="card-img-top rounded-2" />
						</a>
						<div class="card-body d-flex flex-column pt-3 border-top">
							<a href="#" class="nav-link">Gaming Headset with Mic</a>
							<div class="price-wrap mb-2">
								<strong class="">$18.95</strong>
								<del class="">$24.99</del>
							</div>
							<div
								class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
								<a href="#" class="btn btn-outline-primary w-100">Add to
									cart</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="card px-4 border shadow-0 mb-4 mb-lg-0">
						<div class="mask px-2" style="height: 50px;">
							<a href="#"><i
								class="fas fa-heart text-primary fa-lg float-end pt-3 m-2"></i></a>
						</div>
						<a href="#" class=""> <img
							src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/5.webp"
							class="card-img-top rounded-2" />
						</a>
						<div class="card-body d-flex flex-column pt-3 border-top">
							<a href="#" class="nav-link">Apple Watch Series 1 Sport </a>
							<div class="price-wrap mb-2">
								<strong class="">$120.00</strong>
							</div>
							<div
								class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
								<a href="#" class="btn btn-outline-primary w-100">Add to
									cart</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="card px-4 border shadow-0">
						<div class="mask px-2" style="height: 50px;">
							<a href="#"><i
								class="fas fa-heart text-primary fa-lg float-end pt-3 m-2"></i></a>
						</div>
						<a href="#" class=""> <img
							src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/9.webp"
							class="card-img-top rounded-2" />
						</a>
						<div class="card-body d-flex flex-column pt-3 border-top">
							<a href="#" class="nav-link">Men's Denim Jeans Shorts</a>
							<div class="price-wrap mb-2">
								<strong class="">$80.50</strong>
							</div>
							<div
								class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
								<a href="#" class="btn btn-outline-primary w-100">Add to
									cart</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="card px-4 border shadow-0">
						<div class="mask px-2" style="height: 50px;">
							<a href="#"><i
								class="fas fa-heart text-primary fa-lg float-end pt-3 m-2"></i></a>
						</div>
						<a href="#" class=""> <img
							src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/10.webp"
							class="card-img-top rounded-2" />
						</a>
						<div class="card-body d-flex flex-column pt-3 border-top">
							<a href="#" class="nav-link">Mens T-shirt Cotton Base Layer
								Slim fit </a>
							<div class="price-wrap mb-2">
								<strong class="">$13.90</strong>
							</div>
							<div
								class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
								<a href="#" class="btn btn-outline-primary w-100">Add to
									cart</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Recommended -->

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

</body>
</html>