<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Professional Details</title>
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
					<form:form action="/pfadmin/professional" modelAttribute="profInfoModel" method="POST">
						<div class="form-group">
							<form:input class="form-control" type="number" path="personalId"
								placeholder="profileId" readonly="true"/>
						</div>
						<div class="form-group">
							<form:label path="designation">Designation</form:label>
							<form:input class="form-control" type="text" path="designation"
								placeholder="Enter Your Current Designation" />
						</div>
						<div class="form-group">
							<form:label path="summaryPoints">Summary Points</form:label>
							<form:input class="form-control" type="text" path="summaryPoints"
								placeholder="Enter # seperated list of summary points" />
						</div>
						<div class="form-group">
							<form:label path="progLanguages">Programming Languages/Frameworks</form:label>
							<form:input class="form-control" type="text" path="progLanguages"
								placeholder="Enter Programming Languages You Know" />
						</div>
						<div class="form-group">
							<form:label path="scriptLanguages">Scripting Languages</form:label>
							<form:input class="form-control" type="text" path="scriptLanguages"
								placeholder="Enter Scripting Languages You Know" />
						</div>
						<div class="form-group">
							<form:label path="knownDbs">Databases You Know</form:label>
							<form:input class="form-control" type="text" path="knownDbs"
								placeholder="Enter Databases You Are familiar With" />
						</div>
						<div class="form-group">
							<form:label path="toolsUsed">Tools/Applications Used</form:label>
							<form:input class="form-control" type="text" path="toolsUsed"
								placeholder="Enter Tools and Applications You Have Used" />
						</div>
						<div class="form-group">
							<form:label path="operatingSys">Operating Systems</form:label>
							<form:input class="form-control" type="text" path="operatingSys"
								placeholder="Operating Systems You Are Comfortable With" />
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