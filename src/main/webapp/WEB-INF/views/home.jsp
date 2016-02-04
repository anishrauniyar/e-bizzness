<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>

<!-- <link rel="stylesheet" type="text/css" href="/resources/style/styles.css"> -->

<html>
<head>
	<link href="<c:url value="/resources/style/styles.css" />" rel="stylesheet" type="text/css" media="screen" />
	<title>Home</title>
</head>
<style>
	div.nav width a:hover{
	background: #111111;
}
</style>
<body>
<div id="container">

	 	<c:set var="sessiontest" value="${sessionuser }" />
	 	<c:if test="${sessiontest == 'signout'}" > 
		  <div class="login">
		  		<a href="login">[LogIn]</a>
		   		<a href="register">[Sign Up]</a>
		   </div></br>
		   <div class="login">
		   		Welcome, Guest
		   </div>
		</c:if>
		
		<c:if test="${sessiontest != 'signout'}" > 
		   	<div class="login">
		   		<a href="signout">[Sign Out]</a>
		   	</div></br>
		   	<div class="login">
		   		Welcome, ${sessionuser } 
		   	</div>
		</c:if>

    <header>
		<div class="header">
			<img src="/com/resources/images/logo.png">
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
		    <c:set var="baseURL" value="${pageContext.request.localName}"/>
				<h2>Introduction to e-bizzness idea</h2>
				<div class="article-info">Posted on <time datetime="2014-09-26">26 Sept</time> by <a href="#" rel="author">Anish Rauniyar</a></div>
	            <p>Welcome to e-bizzness idea, a free place to find out your real capability to do the business. 
	            This site is full of information about the business that lies in the Nepal. So that you can find the type of the business you want to do.
	            You can find every thing related to the start up of the business. 
	            You can find the interviews of the business tycoons in the country, different articles related to the business.
	            Its one way stop for the business if you are a business person.</p>    
				<a href="#" class="button">Read more</a>
				<a href="#" class="button">Comments</a>
			</article>
		
			<article class="expanded">
	            <h2>How to use the Site?</h2>
				<div class="article-info">Posted on <time datetime="2014-09-26">26 Sept</time> by <a href="#" rel="author">Anish Rauniyar</a></div>
	            <p>The site is really easy to use. Any confusion regarding the business will be clear after using the site.
	            The site contain the interactive videos in the navigation where you can find the interviews of the business celebs.
	            The site have the search facility at the right top corner of the page where you can directly search the type of the business you are looking for.
	            Also the catagory option in the site have variety of the category of the business. There will be no any difficulty in using the site.</p>
			</article>
			
        </section>
        
        <aside class="sidebar">
	
            <ul>	
               <li>
                    <h4>Categories</h4>
                    <ul>
                        <li><a href="#">Import/Export</a></li>
                        <li><a href="#">Coorporates</a></li>
                        <li><a href="#">Vendors</a></li>
                        <li><a href="#">Farming</a></li>
                        <li><a href="#">Organization</a></li>
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
                            <form method="get" class="subsribe" action="home" >
                                <p>
                                    <input type="text" size="31" placeholder="Enter email to subscribe" name="subscribe" />
                                </p>
                            </form>	
						</li>
					</ul>
                </li>
                
                <li>
                    <h4>Helpful Links</h4>
                    <ul>
                        <li><a href="" onclick="window.open('http://www.agricultureinnepal.com')" >Farming Nepal</a></li>
                        <li><a href="" onclick="window.open('http://www.newbusinessage.com')" >Corporate Business</a></li>
                        <li><a href="" onclick="window.open('http://www.tepc.gov.np')">Import Export Nepal</a></li>
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
