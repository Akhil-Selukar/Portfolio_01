<%@page import="com.myfolio.portfolio.dto.MailSendingHelper"%>
<%@page import="com.myfolio.portfolio.entity.WorkProject"%>
<%@page import="com.myfolio.portfolio.dto.ProfileHelper"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.myfolio.portfolio.entity.ProfessionalInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Portfolio</title>
<!-- cdn for font -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<!-- css file link -->
<link rel="stylesheet" href="/css/master.css" />

</head>
<body>
	<!-- custom cursors -->
	<div class="cursor-1"></div>
	<div class="cursor-2"></div>

	<div id="menu-bars" class="fas fa-bars"></div>

	<!-- Header section -->
	<header>
		<!-- adding profile picture -->
		<div class="profile-pic">
			<img src="/images/sidebar-img.png" alt="My image.">
		</div>
		<!-- end of progfile picture -->

		<a href="#" class="logo"><span>${profileHelper.firstName}</span> ${profileHelper.lastName}</a>
		<nav class="navbar">
			<a href="#home">Home</a> <a href="#about">About</a> <a
				href="#service">Certifications</a> <a href="#experience">Experience</a>
			<a href="#portfolio">Portfolio</a> <a href="#contact">Contact</a>
		</nav>
		<div class="follow">
			<a href="${profileHelper.gitLink}" class="fab fa-github"></a>
			<a href="${profileHelper.linkedInLink}" class="fab fa-linkedin"></a>
		</div>
	</header>
	<!-- End of header -->

	<!-- Home section -->
	<section class="home" id="home">
		<div class="content">
			<span class="hi">Hello..</span>
			<h3>
				i am <span>${profileHelper.firstName} ${profileHelper.lastName}</span>
			</h3>
			<p class="info">I am a ${profileHelper.professionalInfo.designation}</p>
			<p class="text">${profileHelper.description}</p>
			<a href="#about" class="btn">about me</a>
		</div>
		<div class="image">
			<img src="images/home-img.png" alt="My image.">
		</div>

	</section>
	<!-- End of home section -->

	<!-- About section -->
	<section class="about" id="about">
		<h1 class="heading">
			about <span> me </span>
		</h1>
		<div class="row-1">
			<div class="leftContent">
				<h3>Professional Summary</h3>
				
				<%
					ProfileHelper profileHelper = (ProfileHelper) request.getAttribute("profileHelper");
					System.out.println("===>>> === " + profileHelper);
					ProfessionalInfo professionalInfo = profileHelper.getProfessionalInfo();			
					System.out.println("===>>> " + professionalInfo);	
					String[] summaryPt = professionalInfo.getSummaryPoints().split("#");
					List<String> summaryPoints = new ArrayList<String>();
					
					for(String summaryPoint : summaryPt){
						System.out.println("+++>>> " + summaryPoint);
						summaryPoints.add(summaryPoint);
					}
					
					request.setAttribute("summaryPoints", summaryPoints);
				%>
				
				<c:forEach items="${summaryPoints}" var="summaryPoint">
					<ul>
						<li>${summaryPoint}</li>
					</ul>
				</c:forEach>
				
			</div>
			<div class="content">
				<div class="box-container">
					<div class="box">
						<h3>Technical Skills</h3>
						<p>
							<span> Programming Languages/framework : </span> ${profileHelper.professionalInfo.progLanguages}
						</p>
						<p>
							<span> Scripting Languages : </span> ${profileHelper.professionalInfo.scriptLanguages}
						</p>
						<p>
							<span> Databases : </span> ${profileHelper.professionalInfo.knownDbs}
						</p>
						<p>
							<span> Tools : </span> ${profileHelper.professionalInfo.toolsUsed}
						</p>
						<p>
							<span> Operating Systems : </span> ${profileHelper.professionalInfo.operatingSys}
						</p>
						<br>
						<h3>Personal Information</h3>
						<p>
							<span> work : </span> ${profileHelper.professionalInfo.designation}
						</p>
						<p>
							<span> age : </span> ${profileHelper.age}
						</p>
						<p>
							<span> gender : </span> ${profileHelper.gender}
						</p>
						<p>
							<span> languages known : </span> ${profileHelper.langKnown}
						</p>
						<p>
							<span> phone : </span> ${profileHelper.mobileNo}
						</p>
						<p>
							<span> email : </span> <span id="email">${profileHelper.emailId}</span>
						</p>
						<p>
							<span> country : </span> ${profileHelper.country}
						</p>
					</div>
				</div>
				<a href="pdf/AkhilSelukar_4yr_Java.pdf"
					download="AkhilSelukar_Java_4yr" class="btn">download CV</a> <a
					href="#contact" class="btn">hire me</a>
			</div>
		</div>
	</section>
	<!-- End of about section -->

	<!-- Services section -->
	<section class="service" id="service">
		<h1 class="heading">
			my <span> Certifications </span>
		</h1>
		<div class="box-container">
			<c:forEach items="${profileHelper.certificates}" var="certificate">
				<div class="box">
					<i class="fas fa-file"></i>
					<a href="${certificate.certificateLink}"><h3>${certificate.examCode}</h3></a>
					<p>'${certificate.certificateName}' Certification by ${certificate.certificateProvider}</p>
					<img alt="az-900 certificate" src="images/${certificate.examCode}.png">
				</div>
			</c:forEach>

		</div>
	</section>
	<!-- End of services section -->

	<!-- Experience section -->
	<section class="experience" id="experience">
		<h1 class="heading">
			my <span>experience</span>
		</h1>
		<div class="box-container">
		<c:forEach items="${profileHelper.professionalInfo.projects}" var="workProject">
			<div class="box">
				<div class="content">
					<span>${workProject.duration}</span>
					<h3>${workProject.position}</h3>
					<h4>${workProject.organization}</h4>
					<p>
					<%
							WorkProject wp = (WorkProject) pageContext.getAttribute("workProject");
							String[] hlts = wp.getHighlights().split("#");

							List<String> highlt = new ArrayList<String>();

							for (String hlt : hlts) {
								highlt.add(hlt);
							}

							String[] awards = wp.getAwards().split("#");

							List<String> awardsList = new ArrayList<String>();

							for (String awd : awards) {
								awardsList.add(awd);
							}

							request.setAttribute("highLightList", highlt);
							request.setAttribute("awardsList", awardsList);
							System.out.println("===>>> ===**** " + awardsList);
							System.out.println("===>>> 1 ===**** " + awardsList.get(0));
					%>
					<ul>
						<c:forEach items="${highLightList}" var="highLight">
							<li>${highLight}</li>
						</c:forEach>
					</ul>
						<c:if test="${fn:length(awardsList) > 1}">
								<h4>Awards and recognition</h4>
						</c:if>
					<ul>
						<c:forEach items="${awardsList}" var="award">
							<c:if test="${not empty award}">
								<li>${award}</li>
							</c:if>
						</c:forEach>
					</ul>
					</p>
				</div>
			</div>
		</c:forEach>
		</div>
	</section>
	<!-- End of experience section -->

	<!-- Portfolio section -->
	<section class="portfolio" id="portfolio">
		<h1 class="heading">
			my <span> portfolio </span>
		</h1>
		<div class="box-container">
			<c:forEach items="${profileHelper.personalProjects}" var="personalProject">
				<div class="box">
				<img src="images/${personalProject.projectName}.png" alt="project 01">
				<h3>${personalProject.projectName}</h3>
				<div class="icons">
					<a href="${personalProject.url}" class="fas fa-link"></a> 
					<a href="${personalProject.documentationLink}" class="fas fa-share"></a>
					<a href="${personalProject.gitLink}" class="fab fa-github-square"></a>
				</div>
			</div>
			
			</c:forEach>

		</div>
	</section>
	<!-- End of portfolio section -->

	<!-- Contact section -->
	<section class="contact" id="contact">
		<h1 class="heading">
			my <span> contact </span>
		</h1>
		<div class="icons-container">
			<div class="icons">
				<i class="fas fa-envelope"></i>
				<h3>my email</h3>
				<p>${profileHelper.emailId}</p>
				<!-- <p>example2@tenmin.com</p> -->
			</div>

			<div class="icons">
				<i class="fas fa-phone"></i>
				<h3>my number</h3>
				<p>+91 ${profileHelper.mobileNo}</p>
			</div>

			<div class="icons">
				<i class="fas fa-map-marker-alt"></i>
				<h3>Location</h3>
				<p>${profileHelper.currentLocation}</p>
			</div>

		</div>

		<div class="row">
			<%
				MailSendingHelper mailSendingHelper = new MailSendingHelper();
				ProfileHelper profHelper = (ProfileHelper) request.getAttribute("profileHelper");
				
				mailSendingHelper.setTo(profHelper.getEmailId());
				
				request.setAttribute("mailSendingHelper", (MailSendingHelper)mailSendingHelper);
				System.out.println("===>>> 2222 ===**** " + mailSendingHelper.getTo());
			%>
			
			<%-- <form:form action="/pfadmin/mail/sendmail" modelAttribute="${mailSendingHelper}" method="POST">
				<form:input class="form-control" type="text" path="name" placeholder="Your Name" />
				<form:input class="form-control" type="email" path="eMail" placeholder="Your Email Id" />
				<form:input class="form-control" type="text" path="phoneNo" placeholder="Your Contact No" />
				<form:input class="form-control" type="text" path="message" placeholder="Your Message" />
				
				<input type="submit" class="btn" value="Send message">
			</form:form> --%>
			
			<form action="/pfadmin/mail/sendmail" method="GET">
				<input name="name" type="text" placeholder="name" class="box"> 
				<input name="eMail" type="text" placeholder="email id" class="box">
				<input name="phoneNo" type="number" placeholder="Mobile number" class="box">
				<textarea name="message" placeholder="message" id="" rows="10" cols="30"></textarea>

				<input type="submit" class="btn" value="Send message">
			</form>

		</div>

	</section>
	<!-- End of contact section -->

	<!-- Footer section -->
	<footer>
		| created by <span> ${profileHelper.firstName} ${profileHelper.lastName} </span> |
	</footer>
	<!-- js file link -->
	<script type="text/javascript" src="/js/script.js"></script>
</body>
</html>