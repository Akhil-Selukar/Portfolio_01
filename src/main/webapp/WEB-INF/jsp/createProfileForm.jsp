<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Profile</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<%@include file='navbar.jsp'%>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div
				class="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
				<h1 class="text-center">Create New Profile</h1>
				<div class="card-body">
					<form:form action="/pfadmin" modelAttribute="personalInfo" method="POST">
						<div class="form-group">
							<form:label path="firstName">First Name</form:label>
							<form:input class="form-control" type="text" path="firstName"
								placeholder="Enter first name" />
						</div>
						<div class="form-group">
							<form:label path="lastName">Last Name</form:label>
							<form:input class="form-control" type="text" path="lastName"
								placeholder="Enter last name" />
						</div>
						<div class="form-group">
							<form:label path="age">Age</form:label>
							<form:input class="form-control" type="number" path="age"
								placeholder="Enter Your Age" />
						</div>
						<div class="form-group">
							<form:label path="gender">Gender</form:label>
							<form:input class="form-control" type="text" path="gender"
								placeholder="Male/Female" />
						</div>
						<div class="form-group">
							<form:label path="langKnown">Languages You Known</form:label>
							<form:input class="form-control" type="text" path="langKnown"
								placeholder="Enter comma seperated list of languages you know" />
						</div>
						<div class="form-group">
							<form:label path="mobileNo">Mobile Number</form:label>
							<form:input class="form-control" type="text" path="mobileNo"
								placeholder="Enter your mobile number" />
						</div>
						<div class="form-group">
							<form:label path="emailId">Email Address</form:label>
							<form:input class="form-control" type="text" path="emailId"
								placeholder="Enter your email address" />
						</div>
						<div class="form-group">
							<form:label path="country">Country</form:label>
							<form:input class="form-control" type="text" path="country"
								placeholder="Enter your country" />
						</div>
						<div class="form-group">
							<form:label path="currentLocation">Current Location</form:label>
							<form:input class="form-control" type="text" path="currentLocation"
								placeholder="Enter your Current Location" />
						</div>
						<div class="form-group">
							<form:label path="gitLink">GitHub Link</form:label>
							<form:input class="form-control" type="text" path="gitLink"
								placeholder="Enter your GitHub account link" />
						</div>
						<div class="form-group">
							<form:label path="LinkedInLink">LinkedIn Link</form:label>
							<form:input class="form-control" type="text" path="LinkedInLink"
								placeholder="Enter your LinkedIn account link" />
						</div>
						<div class="form-group">
							<form:label path="description">Short Description</form:label>
							<form:textarea class="form-control" type="text" path="description" rows="6"
								placeholder="Enter short description about yourself" />
						</div>

						<div class="box-footer">
							<button type="submit" class="btn btn-primary">Submit</button>
							<a href="/pfadmin" class="btn btn-primary">Back</a>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>