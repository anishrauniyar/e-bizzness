<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
  width: 170px;
  margin: 5px;
}
div.video{
	width: auto;
	height: auto;
	margin: 5px;
	padding: 5px;
	float: left;
}
div.video img{
	width: 150px;
	height: 110px;
	margin: 17px;
}
div.back{
	width: 170px;
	height: 110px;
	margin: 17px;
}
div.back img{
	width: 50px;
	height: 50px;
	margin: 30px 40px 40px 30px;
}

div.back a:hover img{
	border: 1px solid #d4d4d4;
}


</style>
<head>
	<link href="<c:url value="/resources/style/styles.css" />" rel="stylesheet" type="text/css" media="screen" />
	<title>${value }</title>
</head>
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
		
		<section id="content" style="overflow: hidden;">
		    <article>
		    	<c:set var="sessionuser" value="${sessionuser }" />
		    	<c:if test="${(value !='Aboutus')  && (value != 'Contactus') }" >
					<c:if test="${sessionuser == 'signout' }">
						<h3>Login First</h3>
					</c:if>
				</c:if>
				<c:if test="${sessionuser != 'signout' }">
					<c:if test="${value == 'Category' }">
						<h3>Categories</h3>
						There are various category that you can surf. They are as follows:</br>
						<li><a href="#">Import/Export</a></br></li>
						<li><a href="#">Agriculture</a></br></li>
						<li><a href="#">Corporate Business</a></br></li>
						<li><a href="#">Transport</a></br></li>
						<li><a href="#">Others</a></br></li>
					</c:if>
					<c:if test="${value == 'Interview' }">
						<h3>Interviews</h3>
					</c:if>
					<c:if test="${value == 'Article' }">
						
					</c:if>
					<c:if test="${value == 'Startup' }">
						<h3>Startups</h3>
					</c:if>
					<c:if test="${value == 'Advertisement' }">
						<h3>Advertisements</h3>
					</c:if>
					<c:if test="${value == 'Video' }">
						<h3>Videos</h3>
						<div class="video">
								<div class="back" style="background:url('resources/images/mushroom.jpg');">
									<a><img src="resources/images/plays.jpg" onclick="window.open('resources/video/test.mp4')"></a>
								</div>
								<div class="desc">
									<a href="" onclick="window.open('resources/video/test.mp4')">
										Mushroom Farming
									</a>
								</div>
						</div>
						<div class="video">
								<div class="back" style="background:url('resources/images/mushroom1.jpg');">
									<a><img src="resources/images/plays.jpg" onclick="window.open('resources/video/test.mp4')"></a>
								</div>
								<div class="desc">
									<a href="" onclick="window.open('resources/video/test.mp4')">
										Mushroom Farming and dancing suit
									</a>
								</div>
						</div>
					</c:if>
				</c:if>
				
				<c:if test="${value == 'Aboutus' }">
					<h3>About Us</h3>
					<div class="img">
							<img src="<c:url value="/resources/images/steve_jobs.jpg" />" width="186" height="175">
						<div class="desc">Steve Jobs</div>
					</div>
					<div class="img">
							<img src="<c:url value="/resources/images/bill_gates.jpg" />" width="186" height="175">
						<div class="desc">Bill Gates</div>
					</div>
					<div class="img">
							<img src="<c:url value="/resources/images/alan_turing.jpg" />" width="186" height="175">
						<div class="desc">Alan Turing</div>
					</div>
					<div>
					They say "Growth Stops When Innovation Stops". Thats what we are. We believe in innovations and nothing more.</br>
					The main motivation of our organization is "Lets get down to business with eagle vision".</br>
					We continue to develop the tools and technology for you so that you can find your best capability to do the business.</br>
					</div>
				</c:if>
				<c:if test="${value == 'Contactus' }">
					<h3>Contact Us</h3>
					<img src="<c:url value="/resources/images/business1.jpg" />" width="175" height="175" style="float:right; overflow: hidden;"; />
					<h5>Sydney Branch</h5>
					Contact Number: 0918349787, 12938409190</br>
					E-mail: harry@ebizness.com, harry@ebizness.com </br>
					Address: southpoint, 9873 Street, Sydney, Australia</br>
					</br>
					</br>
					</br> 
					</br>
					<img src="<c:url value="/resources/images/business2.jpg" />" width="175" height="175" style="float:right"; />
					<h5>London Branch</h5>
					Contact Number: 0918349787, 12938409190</br>
					E-mail: harry@ebizness.com, harry@ebizness.com </br>
					Address: southpoint, 9873 Street, Sydney, Australia</br>
					</br>
					</br>
					</br>
					</br>
					<img src="<c:url value="/resources/images/business3.jpg" />" width="175" height="175" style="float:right"; />
					<h5>Silicon Valley Branch</h5>
					Contact Number: 0918349787, 12938409190</br>
					E-mail: harry@ebizness.com, harry@ebizness.com </br>
					Address: southpoint, 9873 Street, Sydney, Australia</br>
					</br>
					</br>
					</br>
					</br>
					<img src="<c:url value="/resources/images/business4.jpg" />" width="175" height="175" style="float:right"; />
					<h5>Bahamas Branch</h5>
					Contact Number: 0918349787, 12938409190</br>
					E-mail: harry@ebizness.com, harry@ebizness.com </br>
					Address: southpoint, 9873 Street, Sydney, Australia</br>
					</br>
					</br>
					</br>
					</br>
					<img src="<c:url value="/resources/images/business5.jpg" />" width="175" height="175" style="float:right"; />
					<h5>Jamaica Branch</h5>
					Contact Number: 0918349787, 12938409190</br>
					E-mail: harry@ebizness.com, harry@ebizness.com </br>
					Address: southpoint, 9873 Street, Sydney, Australia</br>
					</br>
					</br>
					</br>
					</br>
				</c:if>
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
