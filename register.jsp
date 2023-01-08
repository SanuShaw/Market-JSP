<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Registration ~ MARKET</title>

		<%@include file="./common/common-style.jsp" %>
        <style>
            <%@include file="./css/login.css" %>
        </style>
	</head>

	<body>
		<section class="h-100">
		<div class="container py-2 h-100">
			<div class="row d-flex justify-content-center align-items-center h-100">
			<div class="col">
				<div class="card card-registration my-4 cardbody-color">
				<div class="row g-0">
					<div class="col-lg-6 d-none d-lg-block">
						<img src="./image/logo.jpg"
						alt="logo" class="img-fluid" style="height:500px;object-fit: cover;" />
					</div>
					<div class="col-lg-6">

					<form action="./validation_pages/register_validate.jsp" method="post">
					<div class="card-body px-md-4 text-black">
						<h3 class="mb-4 text-uppercase">registration</h3>

						<div class="row">
						<div class="col-md-6 mb-2">
							<div class="form-outline">
							<input type="text" id="fname" class="form-control" name="fname"/>
							<label class="form-label" for="fname">First name</label>
							</div>
						</div>
						<div class="col-md-6 mb-2">
							<div class="form-outline">
							<input type="text" id="lname" class="form-control" name="lname"/>
							<label class="form-label" for="lname">Last name</label>
							</div>
						</div>
						</div>

						
						<div class="form-outline mb-2">
						<input type="text" id="addr" class="form-control" name="addr"/>
						<label class="form-label" for="addr">Address</label>
						</div>

						<div class="d-md-flex justify-content-start align-items-center mb-2 pb-2">

						<h6 class="mb-0 me-4">Gender:&nbsp;</h6>

						<div class="form-check form-check-inline mb-0 me-4">
							<input class="form-check-input" type="radio" name="inlineRadioOptions" id="femaleGender"
							value="option1" />
							<label class="form-check-label" for="femaleGender">Female</label>
						</div>

						<div class="form-check form-check-inline mb-0 me-4">
							<input class="form-check-input" type="radio" name="inlineRadioOptions" id="maleGender"
							value="option2" />
							<label class="form-check-label" for="maleGender">Male</label>
						</div>

						<div class="form-check form-check-inline mb-0">
							<input class="form-check-input" type="radio" name="inlineRadioOptions" id="otherGender"
							value="option3" />
							<label class="form-check-label" for="otherGender">Other</label>
						</div>

						</div>

						<div class="row">
							<div class="col-md-6 mb-4">

								<select class="select">
								<option value="1">City</option>
								<option value="2">Option 1</option>
								<option value="3">Option 2</option>
								<option value="4">Option 3</option>
								</select>

							</div>
							<div class="col-md-6 mb-4">
								<select class="select">
								<option value="1">State</option>
								<option value="2">Option 1</option>
								<option value="3">Option 2</option>
								<option value="4">Option 3</option>
								</select>

								</div>
						</div>
						
						<div class="row">
							<div class="col-md-4 mb-2">
								<div class="form-outline mb-2">
								<input type="text" id="pincode" class="form-control" name="pincode"/>
								<label class="form-label" for="pincode">Pincode</label>
								</div>
							</div>

 							<div class="col-md-8 mb-2">
								<div class="form-outline mb-4">
								<input type="text" id="email" class="form-control" name="email"/>
								<label class="form-label" for="email">Email ID</label>
								</div>
							</div>
						</div>
						
                        <% if(session.getAttribute("errMsg")!=null){
							%>
								<div class="alert alert-danger alert-dismissible fade show" role="alert">
									${errMsg}
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
							<%
						}
						%>
                        <% session.removeAttribute("errMsg"); %>

						<div class="d-flex justify-content-end">
							<button type="submit" class="btn btn-color px-5 mb-3">Sign Up</button>
						</div>
						<div id="emailHelp" class="form-text  text-dark" style="margin-top:-35px">
							Go back to Login! <a href="./login" class="text-dark font-weight-bold"> Click here</a>
						</div>
					</div>
					</form>
					</div>
				</div>
				</div>
			</div>
			</div>
		</div>
		</section>
	</body>
	</html>