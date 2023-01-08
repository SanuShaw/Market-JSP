
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Login ~ MARKET</title>
        <%@include file="./common/common-style.jsp" %>
        <style>
            <%@include file="./css/login.css" %>
        </style>

    </head>

    <body>
            <div class="container">
				<div class="row">
				  <div class="col-md-6 offset-md-3">
					<!--<h2 class="text-center text-dark mt-2">Login</h2>-->
					<div class="card my-5">
			
					  <form class="card-body cardbody-color py-lg-3 px-lg-5" action="./validation_pages/login_validate.jsp" method="post">
						<div class="text-center">
						  <img src="./image/logo.jpg" class="img-fluid profile-image-pic img-thumbnail rounded-circle mb-3"
							width="200px" alt="profile">
						</div>
			
						<div class="mb-3">
						  <input type="text" class="form-control" aria-describedby="emailHelp"
							placeholder="Email Id" name="username">
						</div>
						<div class="mb-3">
						  <input type="password" class="form-control" id="password" placeholder="Password" name="password">
						</div>

						<!-- <p class="text-center text-danger">${errMsg}</p>-->

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

						<div class="text-center"><button type="submit" class="btn btn-color px-3 mb-3 w-100">Login</button></div>
						
						<div id="emailHelp" class="form-text text-center mb-2 text-dark">
							Not Registered? <a href="./register" class="text-dark font-weight-bold"> Create an Account</a>
						</div>
					  </form>
					</div>
			
				  </div>
				</div>
			  </div>
    </body>

    </html>