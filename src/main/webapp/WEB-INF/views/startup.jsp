<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="true" %>

<html>
<style>
div.img {
    margin: 5px;
    padding: 5px;
    border: 1px solid #000000;
    height: auto;
    width: auto;
    float: left;
    text-align: center;
}	

div.img img {
    display: inline;
    margin: 5px;
    border: 1px solid #ffffff;
}

div.img a:hover img{
	border: 1px solid #000000;
}

div.desc {
  text-align: center;
  font-weight: normal;
  width: 120px;
  margin: 5px;
}
</style>
<head>
	<link href="<c:url value="/resources/style/styles.css" />" rel="stylesheet" type="text/css" media="screen" />
	<title>StartUp</title>
</head>
<body>
<div id="container">
	<c:set var="sessiontest" value="${sessionuser }" />
 	<c:if test="${sessiontest == 'signout'}" > 
	  <div class="login"> 	
	  		<a href="http://localhost:8080/com/login">[LogIn]</a>
	   		<a href="http://localhost:8080/com/register">[Sign Up]</a>
	   </div></br>
	   <div class="login">
	   		Welcome, Guest
	   </div>
	</c:if>
	
	<c:if test="${sessiontest != 'signout'}" > 
	   	<div class="login">
	   		<a href="http://localhost:8080/com/signout">[Sign Out]</a>
	   	</div></br>
	   	<div class="login">
	   		Welcome, ${sessionuser } 
	   	</div>
	</c:if>
	
    <header>
		<!-- <div class="width">
	    	<h1><a href="#">E-BIZZNESS IDEA</span></a></h1>
	    </div> -->
	    <div class="header">
			<img src="http://localhost:8080/com/resources/images/logo.png">
	    	<h1><a href="http://localhost:8080/com/home">E-BIZZNESS IDEA</a></h1>
	    </div>
    </header>
    <nav>
		<div class="width">
	    		<ul>
	        		<li class=""><a href="http://localhost:8080/com/home">Home</a></li>
	        	    <li class=""><a href="http://localhost:8080/com/navigation?value=category">Categories</a></li>
	         	   	<li><a href="http://localhost:8080/com/navigation?value=interview">Interviews</a></li>
	          	  	<li><a href="http://localhost:8080/com/navigation?value=article">Articles</a></li>
	          	  	<li class=""><a href="http://localhost:8080/com/startup">StartUp</a></li>
	          	  	<li class=""><a href="http://localhost:8080/com/navigation?value=advertisement">Advertisement</a></li>
	          	  	<li class=""><a href="http://localhost:8080/com/navigation?value=video">Videos</a></li>
	          	 	<li class=""><a href="http://localhost:8080/com/navigation?value=aboutus">About Us</a></li>
	          	 	<li class="end"><a href="http://localhost:8080/com/navigation?value=contactus">Contact Us</a></li>
	        	</ul>
		</div>
    </nav>
    
	<div id="body" class="width">
	
		<section id="content">
		    <article>
		    	<c:set var="sessionuser" value="${sessionuser }" />
				<c:if test="${sessionuser == 'signout' }"><h3>Login First</h3></c:if>
				<c:if test="${sessionuser != 'signout' }">
					<h3>Start Up</h3>
					We want to share the experiences and story of you as a Entrepreneur and bussiness person in the country.</br>
					Anyone can upload the story of their Startup bussiness in this site.</br>
					Like:</br>
					- How you got started?</br>
					- What is your bussiness?</br>
					- How you keep on growing your bussiness?</br>
					- Whats your future plan?</br>
					- What is your secret key?</br>
					And so on.</br>
					Your story and experiences will definitely help others in their bussiness.</br>
					</br>
					The files can be videos (.mp4) or text file (.docx or .pdf) only.</br>
					We will publish your videos and text file by validating in this same page within a day.</br>
					</br>
					<%-- What do you like to upload?</br>
					<form name="upload" method="post" action="startup">
						<input type="submit" name="upload" value="Video">
						<input type="submit" name="upload" value="Story">
					</form>
					<!-- <a href="startup?value=video" style="font-weight: bold;">Video</a>
					<a href="startup?value=text" style="font-weight: bold;">Text File</a></br> -->
					</br>
					<c:set var="upload" value="${upload }" />
					<c:if test="${upload == 'video'}" >
						<form name="uploader" method="post" action="uploadfile" ModelAttribute="uploadfile" commandname="uploadfile">
							<input type="file" name="videofile" id="videofile">
							<input type="submit" name="submitvideo" value="Upload Video">
						</form>
					</c:if>
					<c:if test="${upload == 'story'}" >
						<form name="uploader" method="post" action="uploadfile" ModelAttribute="uploadfile" commandname="uploadfile">
							<input type="file" name="textfile" id="textfile">
							<input type="submit" name="submittext" value="Upload Text">
						</form>
					</c:if> --%>
					<form method="GET" action="http://localhost:8080/com/upload" commandname="uploadfile" >
						Please select a file to upload : <input type="file" name="file" />
						<input type="submit" value="upload" />
					</form>
					</br>
					${filename } uploaded successfully!!!
				</c:if>
			</article>
			
        </section>
        
        <aside class="sidebar">
	
            <ul>	
               <li>
                    <h4>Categories</h4>
                    <ul>
                        <li><a href="http://localhost:8080/com/login">Import/Export</a></li>
                        <li><a href="http://localhost:8080/com/login">Coorporates</a></li>
                        <li><a href="http://localhost:8080/com/login">Vendors</a></li>
                        <li><a href="http://localhost:8080/com/login">Farming</a></li>
                        <li><a href="http://localhost:8080/com/login">Organization</a></li>
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
