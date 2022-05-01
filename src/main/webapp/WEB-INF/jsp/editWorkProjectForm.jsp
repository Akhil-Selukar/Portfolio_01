<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Work Experience</title>
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
				<h1 class="text-center">Edit Work Experience</h1>
				<div class="card-body">
					<form:form action="/pfadmin/work/save/${workProject.projectId}" modelAttribute="workProject" method="POST">
						<%-- <div class="form-group">
							<form:input class="form-control" type="text" path="profId"
								placeholder="Enter Certification Code" readonly="true" />
						</div> --%>
						<div class="form-group">
							<form:label path="duration">Project Duration</form:label>
							<form:input class="form-control" type="text" path="duration"
								placeholder="Enter Project Duration" />
						</div>
						<div class="form-group">
							<form:label path="position">Your Designation</form:label>
							<form:input class="form-control" type="text" path="position"
								placeholder="Enter Designation You Worked On" />
						</div>
						<div class="form-group">
							<form:label path="organization">Organization Name</form:label>
							<form:input class="form-control" type="text" path="organization"
								placeholder="Enter Organization Name" />
						</div>
						<div class="form-group">
							<form:label path="highlights">Highlights</form:label>
							<form:textarea class="form-control" type="text" path="highlights" rows="6"
								placeholder="Enter # Separated List Of Your Work Highlights" />
						</div>
						<div class="form-group">
							<form:label path="awards">Awards and Recognition</form:label>
							<form:textarea class="form-control" type="text" path="awards" rows="6"
								placeholder="Enter # Separated List Of Your Achievements" />
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