<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Personal Project</title>
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
				<h1 class="text-center">Edit Personal Project Details</h1>
				<div class="card-body">
					<form:form action="/pfadmin/personalproject/save/${personalProject.projectId}" modelAttribute="personalProject" method="POST">
						<%-- <div class="form-group">
							<form:input class="form-control" type="text" path="profId"
								placeholder="Enter Certification Code" readonly="true" />
						</div> --%>
						<div class="form-group">
							<form:label path="projectName">Project Name</form:label>
							<form:input class="form-control" type="text" path="projectName"
								placeholder="Enter Project Name" />
						</div>
						<div class="form-group">
							<form:label path="gitLink">GitHub Link</form:label>
							<form:input class="form-control" type="text" path="gitLink"
								placeholder="Enter GitHub Link For Your Project" />
						</div>
						<div class="form-group">
							<form:label path="documentationLink">Documentation Link</form:label>
							<form:input class="form-control" type="text" path="documentationLink"
								placeholder="Enter Documentation Link" />
						</div>
						<div class="form-group">
							<form:label path="url">URL</form:label>
							<form:input class="form-control" type="text" path="url"
								placeholder="Enter URL For The Project " />
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