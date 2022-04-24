<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Experience</title>
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
				<h1 class="text-center">Total Work Experience</h1>
				<div class="card-body">

					<c:forEach items="${profInfoHelper.workProjects}" var="wProject">
						<%-- <div class="form-group">
							<form:input class="form-control" type="number"
								path="${profInfoHelper.profId}" placeholder="profileId"
								readonly="true" />
						</div> --%>
						<div class="form-group">
							Project Duration :
							<c:out value="${wProject.duration}" />
						</div>
						<div class="form-group">
							Designation :
							<c:out value="${wProject.position}" />
						</div>
						<div class="form-group">
							Organization :
							<c:out value="${wProject.organization}" />
						</div>
						<div class="form-group">
							Highlights (# separated list) :
							<c:out value="${wProject.highlights}" />
						</div>
						<div class="form-group">
							Awards :
							<c:out value="${wProject.awards}" />
						</div>
						<a href="/pfadmin/work/editProject/${wProject.projectId}"
							class="btn btn-primary">Edit Details</a>
						<br>
						<hr>
					</c:forEach>
					<br> <a href="/pfadmin/work/addproject/${profInfoHelper.profId}"
						class="btn btn-primary">Add Project</a>

				</div>
			</div>
		</div>
	</div>
</body>
</html>