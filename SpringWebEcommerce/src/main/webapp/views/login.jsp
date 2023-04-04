<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<title>Login</title>



</head>
<body>
		<section class="vh-100" style="background-color: #508bfc;">
		
		
		
		
			<div class="container py-5 h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<c:if test="${not empty error}">
		
				<h2>${error }</h2>
   
		</c:if>
		
		<c:if test="${not empty message}">
   				<h2>${message }</h2>
		</c:if>
					<div class="col-12 col-md-8 col-lg-6 col-xl-5">
						<div class="card shadow-2-strong" style="border-radius: 1rem;">
							<form:form  action="/j_spring_security_check" method="post" class="card-body p-5 text-center">
	
								<h3 class="mb-5">Sign in</h3>
	
								<div class="form-outline mb-4">
									<input id="username" name="username" type="text"
										id="typeEmailX-2" class="form-control form-control-lg" /> <label
										class="form-label" for="typeEmailX-2">Phone number</label>
								</div>
	
								<div class="form-outline mb-4">
									<input id="password" name="password" type="password"
										id="typePasswordX-2" class="form-control form-control-lg" /> <label
										class="form-label" for="typePasswordX-2">Password</label>
								</div>
	<div class="form-check d-flex justify-content-start mb-4">
							<a href="/register">Register</a>
						</div>
								<button onclick="session()" class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
	
							</form:form>
						</div>
						
					</div>
				</div>
			</div>
		</section>
</body>

<script type="text/javascript">
function session(){

	const phone = document.getElementById("username");
	const pass = document.getElementById("password");
	var user = {
			nameuser:phone,
			phonenumber:pass
			};
	sessionStorage.setItem("user", user);
}
	

</script>

</html>