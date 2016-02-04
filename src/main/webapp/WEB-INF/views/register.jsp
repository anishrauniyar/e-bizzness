<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="true" %>

<html>
<head>
	<link href="<c:url value="/resources/style/styles.css" />" rel="stylesheet" type="text/css" media="screen" />
	<title>register</title>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
</head>
<body>
<div id="container">
	<div class="login"> 	
  		<a href="login">[LogIn]</a>
   		<a href="register">[Sign Up]</a>
   </div></br>
   <div class="login">
   		Welcome, Guest
   </div>
    <header>
		<div class="header">
			<img src="resources/images/logo.png">
	    	<h1><a href="home">E-BIZZNESS IDEA</a></h1>
	    </div>
    </header>
    <nav>
		<div class="width">
	    		<ul>
	        		<li class=""><a href="home">Home</a></li>
	        	    <li class=""><a href="navigation?value=category">Categories</a></li>
	         	   	<li><a href="navigation?value=interview">Interviews</a></li>
	          	  	<li><a href="navigation?value=article">Articles</a></li>
	          	  	<li class=""><a href="startup">StartUp</a></li>
	          	  	<li class=""><a href="navigation?value=advertisement">Advertisement</a></li>
	          	  	<li class=""><a href="navigation?value=video">Videos</a></li>
	          	 	<li class=""><a href="navigation?value=aboutus">About Us</a></li>
	          	 	<li class="end"><a href="navigation?value=contactus">Contact Us</a></li>
	        	</ul>
		</div>
    </nav>
    
	<div id="body" class="width">
	
		<section id="content">
		
			<article>
		   		<%-- <c:if test="${not empty message}">${message}</c:if> --%>
		   		<%-- <form:form action="/form" method="post" modelAttribute="HomeBeans" > 
				  	<label for="lname">Last Name: </label>
				    <form:input path="HomeBeans.lname" id="lnameInput" />
				    <br/>
				    <label for="fname">First Name: </label>
				    <form:input path="fname" id="fnameInput" />
				    <br/>
				    <label for="phno">Phone Number: </label>
				    <form:input path="phno" id="phInput" />
				    <br/>
				    <label for="email">Email: </label>
				    <form:input path="phno" id="emailInput" />
				    <br/>
				    <label for="uname">Username: </label>
				    <form:input path="uname" id="unameInput" />
				    <br/>
				    <label for="password">Password: </label>
				    <form:input path="password" id="passwordInput" />
				    <br/>			      
				    <input type="submit" value="Submit" />
			    </form:form> --%>
			    
			    <jsp:useBean id="user" class="com.mypackage.com.HomeBeans" scope="page" />
				<jsp:setProperty name="user" property="*"/>
				<h2>Registration Form</h2>
			    <form name="registerform" method="get" action="form">
			    	<table>
						<tr>
							<td>First Name</td>
							<td><input type="text" name="fname" value="<%= user.getFname() %>" ></td>
							<td><%= user.getFname() %></td>
							<c:set var="firstname" value="<%= user.getFname() %>" />
							<c:if test="${firstname == null }" ><td>*</td></c:if>
						</tr>
						<tr>
							<td>Last Name</td>
							<td><input type="text" name="lname" value="<%= user.getLname() %>"></td>
							<td><%= user.getLname() %></td>
							<c:set var="lastname" value="<%= user.getLname() %>" />
							<c:if test="${lastname == null }" ><td>*</td></c:if>
						</tr>
						<tr>
							<td>Phone Number</td>
							<td><input type="text" name="phno" value="<%= user.getPhno() %>"></td>
							<td><%= user.getPhno() %></td>
							<c:set var="phone" value="<%= user.getPhno() %>" />
							<c:if test="${phone == null }" ><td>*</td></c:if>
						</tr>
						<tr>
							<td>Email</td>
							<td><input type="text" name="email" value="<%= user.getEmail() %>"></td>
							<td><%= user.getEmail() %></td>
							<c:set var="email" value="<%= user.getEmail() %>" />
							<c:if test="${email == null }" ><td>*</td></c:if>
						</tr>
						<tr>
							<td>Username</td>
							<td><input type="text" name="uname" value="<%= user.getUname() %>"></td>
							<td><%= user.getUname() %></td>
							<c:set var="username" value="<%= user.getUname() %>" />
							<c:if test="${username == null }" ><td>*</td></c:if>
						</tr> 
						<tr>
							<td>Password</td>
							<td><input type="password" name="password" value="<%= user.getPassword() %>"></td>
							<td><%= user.getPassword() %></td>
							<c:set var="password" value="<%= user.getPassword() %>" />
							<c:if test="${password == null }" ><td>*</td></c:if>
						</tr>
						<tr>
							<td>Confirm Password</td>
							<td><input type="password" name="cpassword" value="<%= user.getCpassword() %>"></td>
							<td><%= user.getCpassword() %></td>
							<c:set var="cpassword" value="<%= user.getCpassword() %>" />
							<c:if test="${cpassword == null }" ><td>*</td></c:if>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" value="Register"></td>
						</tr> 
					</table>
				</form>
			</article>
			
			<article>
				<table>
					<tr>
						<td>First Name:</td>
						<td><%= request.getParameter("fname") %></td>
						<td><%= user.getFname() %></td>
					</tr>
					<tr>
						<td>Last Name:</td>
						<td><%= request.getParameter("lname") %></td>
						<td><%= user.getLname() %></td>
					</tr>
					</tr>
					<tr>
						<td>Phone Number:</td>
						<td><%= request.getParameter("phno") %></td>
						<td><%= user.getPhno() %></td>
					</tr>
					<tr>
						<td>Email:</td>
						<td><%= request.getParameter("email") %></td>
						<td><%= user.getEmail() %></td>
					</tr>
					<tr>
						<td>Username:</td>
						<td><%= request.getParameter("uname") %></td>
						<td><%= user.getUname() %></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><%= request.getParameter("password") %></td>
						<td><%= user.getPassword() %></td>
					</tr>
					<tr>
						<td>Confirm Password:</td>
						<td><%= request.getParameter("cpassword") %></td>
						<td><%= user.getCpassword() %></td>
					</tr>
				</table>
				
			</article>
			
        </section>
        
        <aside class="sidebar">
	
            <ul>	
               <li>
                    <h4>Categories</h4>
                    <ul>
                        <li><a href="login">Import/Export</a></li>
                        <li><a href="login">Coorporates</a></li>
                        <li><a href="login">Vendors</a></li>
                        <li><a href="login">Farming</a></li>
                        <li><a href="login">Organization</a></li>
                    </ul>
                </li>
                
                <li>
                    <h4>About us</h4>
                    <ul>
                        <li class="text">
                        	<p style="margin: 0;">We are the new technology. The headquater lies in New Road, Ktm, Nepal. 
                        	The main motto of our organization is 'Lets get down to business with a eagle vision'. 					
                        	<a href="#" class="readmore">Read More</a></p>
                        </li>
                    </ul>
                </li>
                
                <li>
                	<h4>Subscribe Us</h4>
                    <ul>
                    	<li class="text">
                            <form method="get" class="subsribe" action="#" >
                                <p>
                                    <input type="text" size="31" value="Enter email to subscribe" name="s" class="s" />
                                    
                                </p>
                            </form>	
						</li>
					</ul>
                </li>
                
                <li>
                    <h4>Helpful Links</h4>
                    <ul>
                        <li><a href="#" >Farming Nepal</a></li>
                        <li><a href="#" >Corporate Business</a></li>
                        <li><a href="#" title="">Import Export Nepal</a></li>
                    </ul>
                </li>
                
            </ul>
		
        </aside>
    	<div class="clear"></div>
    </div>
	
	<footer>
        <div class="footer-content width">
            <ul>
            	<li><h4>Partners</h4></li>
                <li><a href="#">ekantipur</a></li>
                <li><a href="#">Forbes</a></li>
                <li><a href="#">BBC</a></li>
                <li><a href="#">Human Soul</a></li>
                <li><a href="#">Corporate House</a></li>
            </ul>
            
            <ul>
            	<li><h4>Branches</h4></li>
                <li><a href="#">Sydney</a></li>
                <li><a href="#">London</a></li>
                <li><a href="#">Silicon Valley</a></li>
                <li><a href="#">Bahamas</a></li>
                <li><a href="#">Jamaica</a></li>
            </ul>
            
            <ul class="endfooter">
            	<li><h4>Advertisements</h4></li>
                <li><a href="#">Job Vacancies </a></li>
                <li><a href="#">New Products </a></li>
                <li><a href="#">Technologies </a></li>
                <li><a href="#">Real States </a></li>
                <li><a href="#">Corporates </a></li>
            </ul>
            
            <div class="clear"></div>
        </div>
        <div class="footer-bottom">
        	<p>Copyright © 2014 by IT Professional. All Rights Reserved.</p>
        </div>
    </footer>
</div>
</body>
</html>
