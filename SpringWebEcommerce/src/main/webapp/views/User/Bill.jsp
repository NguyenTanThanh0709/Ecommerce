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
<title>Bill</title>

</head>
<body>

	<div class="card">
		<div class="card-body">
			<div class="container mb-5 mt-3">
				<div class="row d-flex align-items-baseline">

					<div class="col-xl-3 float-end">
						<a class="btn btn-light text-capitalize border-0"
							data-mdb-ripple-color="dark"><i
							class="fas fa-print text-primary"></i> Print</a> <a
							class="btn btn-light text-capitalize"
							data-mdb-ripple-color="dark"><i
							class="far fa-file-pdf text-danger"></i> Export</a> <a href="/home"
							class="btn btn-light text-capitalize border-0"
							data-mdb-ripple-color="dark"> Home</a>
					</div>
					<hr>
				</div>

				<div class="container">
					<div class="col-md-12"></div>


					<div class="row">
						<div class="col-xl-8">
							<ul class="list-unstyled">
								<li class="text-muted">To: <span style="color: #5d9fc5;">${user.nameuser }</span></li>
								<li class="text-muted">${user.address }</li>
								<li class="text-muted"><i class="fas fa-phone"></i>
									${user.phonenumber	 }</li>
							</ul>
						</div>

					</div>

					<div class="row my-2 mx-1 justify-content-center">
						<table class="table table-striped table-borderless">
							<thead style="background-color: #84B0CA;" class="text-white">
								<tr>

									<th scope="col">Description</th>
									<th scope="col">Qty</th>
									<th scope="col">Unit Price</th>
									<th scope="col">Amount</th>
								</tr>
							</thead>
							<tbody>





								<c:forEach var="c" items="${lists }">
									<tr>

											<td>${c.nameproduct }</td>
											<td>1</td>
											<td>${c.price }</td>
											<td>${c.price }</td>
										</tr>
								</c:forEach>


							</tbody>

						</table>
					</div>
					<div class="row">
						<div class="col-xl-8">
							<p class="ms-3">Add additional notes and payment information</p>

						</div>
						<div class="col-xl-3">

							<p class="text-black float-start">
								<span class="text-black me-3"> Total Amount</span><span
									style="font-size: 25px;">$ ${tt }</span>
							</p>
						</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-xl-10">
							<p>Thank you for your purchase</p>
						</div>

					</div>

				</div>
			</div>
		</div>
	</div>

</body>
</html>