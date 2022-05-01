<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Personal Projects</title>
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
				<h1 class="text-center">Personal Projects Details</h1>
				<div class="card-body">

					<c:forEach items="${personalInfoHelper.personalProjects}" var="personalProject">
						<%-- <div class="form-group">
							<form:input class="form-control" type="number"
								path="${profInfoHelper.profId}" placeholder="profileId"
								readonly="true" />
						</div> --%>
						<div class="form-group">
							Project Name :
							<c:out value="${personalProject.projectName}" />
						</div>
						<div class="form-group">
							GitHub Link :
							<c:out value="${personalProject.gitLink}" />
						</div>
						<div class="form-group">
							Documentation Link :
							<c:out value="${personalProject.documentationLink}" />
						</div>
						<div class="form-group">
							Project URL :
							<c:out value="${personalProject.url}" />
						</div>
						<a href="/pfadmin/personalproject/editProject/${personalProject.projectId}"
							class="btn btn-primary">Edit Details</a>
						<br>
						<hr>
					</c:forEach>
					<br> <a href="/pfadmin/personalproject/addproject/${personalInfoHelper.personalId}"
						class="btn btn-primary">Add Project</a>

				</div>
			</div>
		</div>
	</div>
</body>
</html>