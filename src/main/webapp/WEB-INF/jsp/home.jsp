<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

		<a href="#" class="logo"><span>Akhil</span> Selukar</a>
		<nav class="navbar">
			<a href="#home">Home</a> <a href="#about">About</a> <a
				href="#service">Certifications</a> <a href="#experience">Experience</a>
			<a href="#portfolio">Portfolio</a> <a href="#contact">Contact</a>
		</nav>
		<div class="follow">
			<!-- <a href="#" class="fab fa-facebook-f"></a>
			<a href="#" class="fab fa-instagram"></a> -->
			<a href="https://github.com/Akhil-Selukar" class="fab fa-github"></a>
			<a href="#" class="fab fa-linkedin"></a>
		</div>
	</header>
	<!-- End of header -->

	<!-- Home section -->
	<section class="home" id="home">
		<div class="content">
			<span class="hi">Hello..</span>
			<h3>
				i am <span>Akhil Selukar</span>
			</h3>
			<p class="info">I am a Software Developer</p>
			<p class="text">I'm Microsoft azure certified software developer
				with around 4 years of experience in Information Technology industry
				working for techno-giants like Cognizant and Amdocs. I'm an
				excellent team player and have good experience of fast paced agile
				environment. Along with my skills and 'can do' attitude for new
				responsibilities I managed to deliver valuable deliverables within
				provided time and budget for which I was awarded with "Star
				Performer of Team" award and I was recognized by client during
				global townhall as youngest employee delivering innovative solutions
				to reduce application load.</p>
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
				<!-- <img src="images/about-img.jpg" alt="About section image."> -->
				<h3>Professional Summary</h3>
				<!-- <img src="images/about-img.jpg" alt="About section image."> -->
				<!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p> -->
				<ul>
					<li>Around 4 years of IT industry experience as Software
						Developer.</li>
					<li>Handson experience of working on Azure cloud. (Microsoft
						AZ-900 Certified.)</li>
					<li>Experienced and comfortable working in Fast paced agile
						environment.</li>
					<li>Hands on experience of tools like HP-ALM, Atlassian Jira,
						ServiceNow, Git and GitHub.</li>
					<li>Worked as critical resource during application deployment
						and experienced in creating deployment plans.</li>
					<li>Good experience in backend technologies like Java, Spring
						boot and hibernate along with Good understanding of HTML-CSS, JSP
						and JavaScript.</li>
					<li>Experienced in working on Linux and windows based servers
						and shell scripting.</li>
					<li>Proven ability to work creatively in problem solving
						environment with good interpersonal and communication skills.</li>
					<li>Confident in dealing with client and team.</li>
				</ul>
			</div>
			<div class="content">
				<!-- <h3>My name is Akhil and I am a full-stack developer.</h3> -->
				<!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p> -->
				<div class="box-container">
					<div class="box">
						<h3>Technical Skills</h3>
						<p>
							<span> Programming Languages/framework : </span> Java, spring,
							spring-boot, HTML & CSS, JSP
						</p>
						<p>
							<span> Scripting Languages : </span> Shell script, JavaScript
							(basic)
						</p>
						<p>
							<span> Databases : </span> MySQL
						</p>
						<p>
							<span> Tools : </span> putty, WinScp, Eclipse, Atlassian Jira,
							HP-ALM, Git
						</p>
						<p>
							<span> Operating Systems : </span> Windows, Debian 9 (Stretch)
						</p>
						<br>
						<h3>Personal Information</h3>
						<p>
							<span> work : </span> Software developer
						</p>
						<p>
							<span> age : </span> 26
						</p>
						<p>
							<span> gender : </span> male
						</p>
						<p>
							<span> languages known : </span> English, Hindi, Marathi
						</p>
						<p>
							<span> phone : </span> +91 8180905423
						</p>
						<p>
							<span> email : </span> <span id="email">akhilselukar.work@gmail.com</span>
						</p>
						<p>
							<span> country : </span> India
						</p>
					</div>
				</div>
				<a href="pdf/AkhilSelukar_4yr_Java.pdf"
					download="AkhilSelukar_Java_4yr" class="btn">download CV</a> <a
					href="#contact" class="btn">hire me</a>
			</div>
		</div>

		<!-- <h1 class="heading"> my <span> skills </span></h1>
      <div class="row-2">
        <div class="skills">
          <div class="progress">
            <h3> Java Development <span> 85% </span> </h3>
            <div class="bar"> <span></span> </div>
          </div>
          <div class="progress">
            <h3> Spring/Spring Boot <span> 80% </span> </h3>
            <div class="bar"> <span></span> </div>
          </div>
          <div class="progress">
            <h3> Microsoft Azure <span> 75% </span> </h3>
            <div class="bar"> <span></span> </div>
          </div>
          <div class="progress">
            <h3> Linux server/ shell scripting <span> 80% </span> </h3>
            <div class="bar"> <span></span> </div>
          </div>
          <div class="progress">
            <h3> MySQL <span> 75% </span> </h3>
            <div class="bar"> <span></span> </div>
          </div>
          <div class="progress">
            <h3> HTML, CSS and JavaScript <span> 70% </span> </h3>
            <div class="bar"> <span></span> </div>
          </div>
        </div>
        <div class="box-container">
          <div class="box">
            <h3> >> 4 </h3>
            <p>Years of experience</p>
          </div>
          <div class="box">
            <h3> >> 3 </h3>
            <p>happy clients</p>
          </div>
          <div class="box">
            <h3> >> 100+ </h3>
            <p>projects completed</p>
          </div>
          <div class="box">
            <h3> >> 10+ </h3>
            <p>awards won</p>
          </div>
        </div>
      </div> -->
	</section>
	<!-- End of about section -->

	<!-- Services section -->
	<section class="service" id="service">
		<h1 class="heading">
			my <span> Certifications </span>
		</h1>
		<div class="box-container">
			<div class="box">
				<i class="fas fa-file"></i>
				<h3>AZ-900</h3>
				<p>'Microsoft Azure Fundamentals' Certification by Microsoft</p>
				<img alt="az-900 certificate" src="images/az-900 badge.png">
			</div>
			<div class="box">
				<i class="fas fa-file"></i>
				<h3>PSM-1</h3>
				<p>'Professional Scrum Master' Certification by Scrum.org</p>
				<img alt="PSM-1 certificate" src="images/psm-1 badge.png">
			</div>
			<!-- <div class="box">
          <i class="fas fa-file"></i>
          <h3>Python</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.</p>
        </div>
        <div class="box">
          <i class="fas fa-file"></i>
          <h3>Spring-boot</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.</p>
        </div>
        <div class="box">
          <i class="fas fa-file"></i>
          <h3>Painting</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.</p>
        </div>
        <div class="box">
          <i class="fas fa-file"></i>
          <h3>Email marketing</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.</p>
        </div> -->

		</div>
	</section>
	<!-- End of services section -->

	<!-- Experience section -->
	<section class="experience" id="experience">
		<h1 class="heading">
			my <span>experience</span>
		</h1>
		<div class="box-container">
			<div class="box">
				<div class="content">
					<span>May/2018 - May/2019</span>
					<h3>Programmer Analyst Trainee</h3>
					<h4>Cognizant Technology Solutions</h4>
					<p>
					<ul>
						<li>Prepared test scenarios, test plans and deployment plans
							in HP-ALS.</li>
						<li>Executed post deployment test scripts, captured evidences
							and raise defects whenever required.</li>
						<li>Streamlined a process to track post deployment hyper-care
							issues status.</li>
						<li>Hosted status call, walk-through and defect calls.</li>
						<li>Organized daily status report(DSR) and Weekly status
							reports(WSR).</li>
						<li>Worked on service requests and incidents raised by users
							and resolve them within the SLA.</li>
						<li>Worked as first point of contact to application users.</li>
					</ul>
					</p>
				</div>
			</div>

			<div class="box">
				<div class="content">
					<span>May/2019 - May/2021</span>
					<h3>Programmer Analyst</h3>
					<h4>Cognizant Technology Solutions</h4>
					<p>
					<ul>
						<li>Conducted calls with application owner and stake holders
							to understand the business requirements, application and it's
							components.</li>
						<li>Developed automation solutions to reduce load on
							application which reduced the incident counts by more than 20%.</li>
						<li>Managed the resolution of defects raised after deployment
							by performing necessary code changes.</li>
						<li>Worked on hyper-care issues post deployment</li>
					</ul>
					</p>
					<h4>Awards and recognition</h4>
					<p>
					<ul>
						<li>Received "Star Performer Of Team"(SPOT) award for
							reducing the incident count by more than 20%.</li>
						<li>Recognized by client in global town-hall for providing
							innovative automated solutions.</li>
					</ul>
					</p>
				</div>
			</div>

			<div class="box">
				<div class="content">
					<span>May/2021 - Present</span>
					<h3>Software Developer</h3>
					<h4>Amdocs development center</h4>
					<p>
					<ul>
						<li>Modernized the application to move it from on-premises to
							azure cloud.</li>
						<li>Setup Azure infrastructure for application.</li>
						<li>Created CI/CD pipelines in azure devtools for continuous
							integration and deployment.</li>
						<li>Worked on bugs found during QA and UAT testing.</li>
						<li>Conducted agile stand-up calls every alternate day and
							retrospective calls after every sprint.</li>
						<li>Coordinated with other teams having direct coupling with
							our application.</li>
						<li>Ensured smooth handover of application to the Operations
							team via various knowledge transfer and demo sessions.6</li>
						<li>Got hands-on experience with Docker to create docker
							image of application.</li>

					</ul>
					</p>
				</div>
			</div>

			<!-- <div class="box">
          <div class="content">
            <span>2018 - 2019</span>
            <h3>front-end development</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          </div>
        </div>

        <div class="box">
          <div class="content">
            <span>2019 - 2020</span>
            <h3>front-end development</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          </div>
        </div>

        <div class="box">
          <div class="content">
            <span>2020 - present</span>
            <h3>front-end development</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          </div>
        </div> -->

		</div>
	</section>
	<!-- End of experience section -->

	<!-- Portfolio section -->
	<section class="portfolio" id="portfolio">
		<h1 class="heading">
			my <span> portfolio </span>
		</h1>
		<div class="box-container">
			<div class="box">
				<img src="images/img-1.jpg" alt="project 01">
				<h3>Portfolio Application</h3>
				<div class="icons">
					<a href="#" class="fas fa-link"></a> <a href="#"
						class="fas fa-share"></a> <a
						href="https://github.com/Akhil-Selukar/Portfolio_01.git"
						class="fab fa-github-square"></a>
				</div>
			</div>

			<div class="box">
				<img src="images/img-2.jpg" alt="project 01">
				<h3>Student Management System</h3>
				<div class="icons">
					<a href="#" class="fas fa-link"></a> <a href="#"
						class="fas fa-share"></a> <a
						href="https://github.com/Akhil-Selukar/Student_Management_System.git"
						class="fab fa-github-square"></a>
				</div>
			</div>

			<div class="box">
				<img src="images/img-3.jpg" alt="project 01">
				<h3>Project 03</h3>
				<div class="icons">
					<a href="#" class="fas fa-link"></a> <a href="#"
						class="fas fa-share"></a> <a href="#" class="fab fa-github-square"></a>
				</div>
			</div>

			<!-- <div class="box">
          <img src="images/img-4.jpg" alt="project 01">
          <h3> Project 04 </h3>
          <div class="icons">
            <a href="#" class="fas fa-link"></a>
            <a href="#" class="fas fa-share"></a>
            <a href="#" class="fab fa-github-square"></a>
          </div>
        </div>

        <div class="box">
          <img src="images/img-5.jpg" alt="project 01">
          <h3> Project 05 </h3>
          <div class="icons">
            <a href="#" class="fas fa-link"></a>
            <a href="#" class="fas fa-share"></a>
            <a href="#" class="fab fa-github-square"></a>
          </div>
        </div>

        <div class="box">
          <img src="images/img-6.jpg" alt="project 01">
          <h3> Project 06 </h3>
          <div class="icons">
            <a href="#" class="fas fa-link"></a>
            <a href="#" class="fas fa-share"></a>
            <a href="#" class="fab fa-github-square"></a>
          </div>
        </div> -->

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
				<p>akhilselukar.work@gmail.com</p>
				<!-- <p>example2@tenmin.com</p> -->
			</div>

			<div class="icons">
				<i class="fas fa-phone"></i>
				<h3>my number</h3>
				<p>+91 9876543210</p>
				<p>+91 9874561230</p>
			</div>

			<div class="icons">
				<i class="fas fa-map-marker-alt"></i>
				<h3>my address</h3>
				<p>221B, Baker St, London NW1 6XE, United Kingdom</p>
			</div>

		</div>

		<div class="row">
			<form action="#" method="post">
				<input type="text" placeholder="name" class="box"> <input
					type="email" placeholder="email id" class="box"> <input
					type="number" placeholder="Mobile number" class="box">
				<textarea name="message" placeholder="message" id="" rows="10"
					cols="30"></textarea>

				<input type="submit" class="btn" value="Send message">
			</form>

			<!-- <iframe class="map " src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d9929.699405373634!2d-0.1585557!3d51.523767!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfcd227d9a53748f3!2sThe%20Sherlock%20Holmes%20Museum!5e0!3m2!1sen!2sin!4v1630835441710!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe> -->

		</div>

	</section>
	<!-- End of contact section -->

	<!-- Footer section -->
	<footer>
		| created by <span> Akhil Selukar </span> |
		<!-- &#169; tenmin.com -->
	</footer>
	<!-- js file link -->
	<script type="text/javascript" src="/js/script.js"></script>
</body>
</html>