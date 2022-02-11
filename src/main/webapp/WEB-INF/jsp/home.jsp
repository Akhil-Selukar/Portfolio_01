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
<c:url value="/css/master.css" var="style" />
<link href="${style}" rel="stylesheet" />
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

		<a href="#" class="logo"><span>${fName}</span> ${lName}</a>
		<nav class="navbar">
			<a href="#home">Home</a>
			<a href="#about">About</a>
			<a href="#service">Services</a>
			<a href="#experience">Experience</a>
			<a href="#portfolio">Portfolio</a>
			<a href="#contact">Contact</a>
		</nav>
		<div class="follow">
			<a href="#" class="fab fa-facebook-f"></a>
			<a href="#" class="fab fa-twitter"></a>
			<a href="#" class="fab fa-instagram"></a>
			<a href="#" class="fab fa-linkedin"></a>
		</div>
	</header>
	<!-- End of header -->

    <!-- Home section -->
    <section class="home" id="home">
      <div class="content">
        <span class="hi">Hello..</span>
        <h3>i am <span>Akhil Selukar</span></h3>
        <p class="info">I am a full-stack developer</p>
        <p class="text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        <a href="#about" class="btn">about me</a>
      </div>
      <div class="image">
        <img src="images/home-img.png" alt="My image.">
      </div>

    </section>
    <!-- End of home section -->

    <!-- About section -->
    <section class="about" id="about">
      <h1 class="heading"> about <span> me </span></h1>
      <div class="row-1">
        <div class="image">
            <img src="images/about-img.jpg" alt="About section image.">
        </div>
        <div class="content">
          <h3>My name is Akhil and I am a full-stack developer.</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          <div class="box-container">
            <div class="box">
              <p> <span> age : </span> 25 </p>
              <p> <span> gender : </span> male </p>
              <p> <span> languages : </span> English, Hindi, Marathi </p>
              <p> <span> work : </span> Full-stach developer </p>
            </div>
            <div class="box">
              <p> <span> freelance : </span> available </p>
              <p> <span> phone : </span> +91 9876543210 </p>
              <p> <span> email : </span> sample.mail@tenmin.com </p>
              <p> <span> country : </span> India </p>
            </div>
          </div>
          <a href="#" class="btn">download CV</a>
          <a href="#" class="btn">hire me</a>
        </div>
      </div>

      <h1 class="heading"> my <span> skills </span></h1>
      <div class="row-2">
        <div class="skills">
          <div class="progress">
            <h3> Web design <span> 75% </span> </h3>
            <div class="bar"> <span></span> </div>
          </div>
          <div class="progress">
            <h3> java development <span> 85% </span> </h3>
            <div class="bar"> <span></span> </div>
          </div>
          <div class="progress">
            <h3> Spring-boot <span> 80% </span> </h3>
            <div class="bar"> <span></span> </div>
          </div>
          <div class="progress">
            <h3> Python <span> 70% </span> </h3>
            <div class="bar"> <span></span> </div>
          </div>
        </div>
        <div class="box-container">
          <div class="box">
            <h3> >> 2+ </h3>
            <p>Years of experience</p>
          </div>
          <div class="box">
            <h3> >> 50+ </h3>
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
      </div>
    </section>
    <!-- End of about section -->

    <!-- Services section -->
    <section class="service" id="service">
      <h1 class="heading"> my <span> services </span></h1>
      <div class="box-container">
        <div class="box">
          <i class="fas fa-code"></i>
          <h3>web design</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.</p>
        </div>
        <div class="box">
          <i class="fab fa-java"></i>
          <h3>java development</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.</p>
        </div>
        <div class="box">
          <i class="fab fa-python"></i>
          <h3>Python</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.</p>
        </div>
        <div class="box">
          <i class="fas fa-leaf"></i>
          <h3>Spring-boot</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.</p>
        </div>
        <div class="box">
          <i class="fas fa-paint-brush"></i>
          <h3>Painting</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.</p>
        </div>
        <div class="box">
          <i class="fas fa-envelope"></i>
          <h3>Email marketing</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod.</p>
        </div>

      </div>
    </section>
    <!-- End of services section -->

    <!-- Experience section -->
    <section class="experience" id="experience">
      <h1 class="heading"> my <span>experience</span> </h1>
      <div class="box-container">
        <div class="box">
          <div class="content">
            <span>2015 - 2016</span>
            <h3>front-end development</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          </div>
        </div>

        <div class="box">
          <div class="content">
            <span>2016 - 2017</span>
            <h3>front-end development</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          </div>
        </div>

        <div class="box">
          <div class="content">
            <span>2017 - 2018</span>
            <h3>front-end development</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          </div>
        </div>

        <div class="box">
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
        </div>

      </div>
    </section>
    <!-- End of experience section -->

    <!-- Portfolio section -->
    <section class="portfolio" id="portfolio">
      <h1 class="heading"> my <span> portfolio </span> </h1>
      <div class="box-container">
        <div class="box">
          <img src="images/img-1.jpg" alt="project 01">
          <h3> Project 01 </h3>
          <div class="icons">
            <a href="#" class="fas fa-link"></a>
            <a href="#" class="fas fa-share"></a>
            <a href="#" class="fab fa-github-square"></a>
          </div>
        </div>

        <div class="box">
          <img src="images/img-2.jpg" alt="project 01">
          <h3> Project 02 </h3>
          <div class="icons">
            <a href="#" class="fas fa-link"></a>
            <a href="#" class="fas fa-share"></a>
            <a href="#" class="fab fa-github-square"></a>
          </div>
        </div>

        <div class="box">
          <img src="images/img-3.jpg" alt="project 01">
          <h3> Project 03 </h3>
          <div class="icons">
            <a href="#" class="fas fa-link"></a>
            <a href="#" class="fas fa-share"></a>
            <a href="#" class="fab fa-github-square"></a>
          </div>
        </div>

        <div class="box">
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
        </div>

      </div>
    </section>
    <!-- End of portfolio section -->

    <!-- Contact section -->
    <section class="contact" id="contact">
      <h1 class="heading"> my <span> contact </span> </h1>
      <div class="icons-container">
        <div class="icons">
          <i class="fas fa-envelope"></i>
          <h3>my email</h3>
          <p>example@tenmin.com</p>
          <p>example2@tenmin.com</p>
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
          <p>221B, Baker St, London NW1 6XE, United Kingdom </p>
        </div>

      </div>

      <div class="row">
        <form action="#" method="post">
          <input type="text" placeholder="name" class="box">
          <input type="email" placeholder="email" class="box">
          <input type="number" placeholder="number" class="box">
          <textarea name="" placeholder="message" id="" rows="10" cols="30"></textarea>

          <input type="submit" class="btn" value="Send message">
        </form>

        <iframe class="map " src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d9929.699405373634!2d-0.1585557!3d51.523767!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfcd227d9a53748f3!2sThe%20Sherlock%20Holmes%20Museum!5e0!3m2!1sen!2sin!4v1630835441710!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

      </div>

    </section>
    <!-- End of contact section -->

    <!-- Footer section -->
    <footer> created by <span> Akhil Selukar </span> | &#169; tenmin.com </footer>
	<!-- js file link -->
    <script type="text/javascript" src="/js/script.js"></script>
</body>
</html>