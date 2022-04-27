<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Certificates</title>
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
				<h1 class="text-center">Certificatio Details</h1>
				<div class="card-body">

					<c:forEach items="${personalInfoHelper.certificates}" var="certificate">
						<%-- <div class="form-group">
							<form:input class="form-control" type="number"
								path="${profInfoHelper.profId}" placeholder="profileId"
								readonly="true" />
						</div> --%>
						<div class="form-group">
							Certificate Name :
							<c:out value="${certificate.certificateName}" />
						</div>
						<div class="form-group">
							Exam Code :
							<c:out value="${certificate.examCode}" />
						</div>
						<div class="form-group">
							Certificate Provider :
							<c:out value="${certificate.certificateProvider}" />
						</div>
						<div class="form-group">
							Certificate/Badge Link :
							<c:out value="${certificate.certificateLink}" />
						</div>
						<a href="/pfadmin/certificate/edit/${certificate.certificateId}"
							class="btn btn-primary">Edit Details</a>
						<br>
						<hr>
					</c:forEach>
					<br> <a href="/pfadmin/certificate/addcertificate/${personalInfoHelper.personalId}"
						class="btn btn-primary">Add Certificate</a>

				</div>
			</div>
		</div>
	</div>
</body>
</html>