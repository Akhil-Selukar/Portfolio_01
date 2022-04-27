<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Certificate</title>
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
				<h1 class="text-center">Edit Certification Details</h1>
				<div class="card-body">
					<form:form
						action="/pfadmin/certificate/save/${certificate.certificateId}" modelAttribute="certificate" method="POST">

						<div class="form-group">
							<form:label path="examCode">Exam Code</form:label>
							<form:input class="form-control" type="text" path="examCode"
								placeholder="Enter Exam Code" />
						</div>
						<div class="form-group">
							<form:label path="certificateName">Certification Name</form:label>
							<form:input class="form-control" type="text"
								path="certificateName"
								placeholder="Enter The Name Of Certification" />
						</div>
						<div class="form-group">
							<form:label path="certificateProvider">Certification Provider Name</form:label>
							<form:input class="form-control" type="text"
								path="certificateProvider"
								placeholder="Enter The Name Of Certification Provider" />
						</div>
						<div class="form-group">
							<form:label path="certificateLink">Certificate/Badge Link</form:label>
							<form:input class="form-control" type="text"
								path="certificateLink" placeholder="Enter Certificate/Badge URL" />
						</div>
				</div>
				<div class="box-footer">
					<button type="submit" class="btn btn-primary">Submit</button>
				</div>
				</form:form>
			</div>
		</div>
	</div>
	</div>

</body>
</html>