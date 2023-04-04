
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
<title>Register</title>
</head>
<body>
	<!-- Section: Design Block -->
	<section class="background-radial-gradient overflow-hidden">
		<style>
.background-radial-gradient {
	background-color: hsl(218, 41%, 15%);
	background-image: radial-gradient(650px circle at 0% 0%, hsl(218, 41%, 35%)
		15%, hsl(218, 41%, 30%) 35%, hsl(218, 41%, 20%) 75%,
		hsl(218, 41%, 19%) 80%, transparent 100%),
		radial-gradient(1250px circle at 100% 100%, hsl(218, 41%, 45%) 15%,
		hsl(218, 41%, 30%) 35%, hsl(218, 41%, 20%) 75%, hsl(218, 41%, 19%) 80%,
		transparent 100%);
}

#radius-shape-1 {
	height: 220px;
	width: 220px;
	top: -60px;
	left: -130px;
	background: radial-gradient(#44006b, #ad1fff);
	overflow: hidden;
}

#radius-shape-2 {
	border-radius: 38% 62% 63% 37%/70% 33% 67% 30%;
	bottom: -60px;
	right: -110px;
	width: 300px;
	height: 300px;
	background: radial-gradient(#44006b, #ad1fff);
	overflow: hidden;
}

.bg-glass {
	background-color: hsla(0, 0%, 100%, 0.9) !important;
	backdrop-filter: saturate(200%) blur(25px);
}
</style>

		<div
			class="container px-4 py-5 px-md-5 text-center text-lg-start my-5">
			<div class="row gx-lg-5 align-items-center mb-5">
				<div class="col-lg-6 mb-5 mb-lg-0" style="z-index: 10">
					<h1 class="my-5 display-5 fw-bold ls-tight"
						style="color: hsl(218, 81%, 95%)">
						The best offer <br /> <span style="color: hsl(218, 81%, 75%)">for
							your business</span>
					</h1>
					<p class="mb-4 opacity-70" style="color: hsl(218, 81%, 85%)">
						Lorem ipsum dolor, sit amet consectetur adipisicing elit.
						Temporibus, expedita iusto veniam atque, magni tempora mollitia
						dolorum consequatur nulla, neque debitis eos reprehenderit quasi
						ab ipsum nisi dolorem modi. Quos?</p>
				</div>

				<div class="col-lg-6 mb-5 mb-lg-0 position-relative">
					<div id="radius-shape-1"
						class="position-absolute rounded-circle shadow-5-strong"></div>
					<div id="radius-shape-2" class="position-absolute shadow-5-strong"></div>

					<div class="card bg-glass">
						<div class="card-body px-4 py-5 px-md-5">
							<form id="formSubmit" method="post">
								<!-- 2 column grid layout with text inputs for the first and last names -->


								<!-- Email input -->
								<div class="form-outline mb-4">
									<input id="nameuser" name="nameuser" type="text" 
										class="form-control" /> <label class="form-label"
										for="form3Example3">Your name</label>
								</div>

								<!-- Email input -->
								<div class="form-outline mb-4">
									<input id="phonenumber" name="phonenumber" type="text" 
										class="form-control" /> <label class="form-label"
										for="form3Example3">Phone number</label>
								</div>

								<!-- Password input -->
								<div class="form-outline mb-4">
									<input id="pass" name="pass" type="password" 
										class="form-control" /> <label class="form-label"
										for="form3Example4">Password</label>
								</div>

								<div class="form-outline mb-4">
									<input id="address" name="address" type="text" 
										class="form-control" /> <label class="form-label"
										for="form3Example4">address</label>
								</div>

								<!-- Checkbox -->

								<a href="/login">Have Account</a>

								<!-- Submit button -->
								<button id="btnAddOrUpdateNew" type="submit"
									class="btn btn-primary btn-block mb-4">Sign up</button>

								<!-- Register buttons -->
								<div class="text-center">
									<p>or sign up with:</p>
									<button type="button" class="btn btn-link btn-floating mx-1">
										<i class="fab fa-facebook-f"></i>
									</button>

									<button type="button" class="btn btn-link btn-floating mx-1">
										<i class="fab fa-google"></i>
									</button>

									<button type="button" class="btn btn-link btn-floating mx-1">
										<i class="fab fa-twitter"></i>
									</button>

									<button type="button" class="btn btn-link btn-floating mx-1">
										<i class="fab fa-github"></i>
									</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Section: Design Block -->

<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


	<script type="text/javascript">
		$('#btnAddOrUpdateNew').click(function(e) {
			e.preventDefault();

			var data = {};
			var formData = $('#formSubmit').serializeArray();
			$.each(formData, function(i, v) {
				data["" + v.name + ""] = v.value;
			});

			console.log(data);
			addNew(data);

		});

		function addNew(data) {
			$.ajax({
				url : '/registerhandle',
				type : 'POST',
				contentType : 'application/json',
				data : JSON.stringify(data),
				dataType : 'json',
				success : function(result) {
					alert("success")
					window.location.href = "/login";
				},
				error : function(error) {

				}
			});
		}


	</script>
</body>
</html>