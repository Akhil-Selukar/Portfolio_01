<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
</head>
<body>
	<%@include file='navbar.jsp'%>
	<div class="container">
		<div class="row">
			<h1>Students List</h1>
		</div>
		<div class="row">
			<div class="col-lg-3">
				<a href="/pfadmin/new" class="btn btn-primary btn-sm mb-3">Create Profile</a>
			</div>
		</div>

		<table class="table table-striped table-bordered">
			<thead class="table-dark">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${person}" var="person">
					<tr>
						<td><c:out value="${person.firstName}" /></td>
						<td><c:out value="${person.lastName}" /></td>
						<td><c:out value="${person.emailId}" /></td>
						<td>
							<a href="/pfadmin/delete/${person.personalId}" class="btn btn-danger">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
	</div>
</body>
</html>