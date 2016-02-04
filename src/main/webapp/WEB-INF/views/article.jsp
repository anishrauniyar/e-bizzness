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
  width: 120px;
  margin: 5px;
}
</style>
<head>
	<link href="<c:url value="/resources/style/styles.css" />" rel="stylesheet" type="text/css" media="screen" />
	<title>Article</title>
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
		<!-- <div class="width">
	    	<h1><a href="#">E-BIZZNESS IDEA</span></a></h1>
	    </div> -->
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
		    	<c:set var="sessionuser" value="${sessionuser }" />
				<c:if test="${sessionuser == 'signout' }"><h3>Login First</h3></c:if>
				<c:if test="${sessionuser != 'signout' }">
					<h3>Articles</h3>
					<div class="img">
						<a><img src="<c:url value="/resources/images/businessidea1.jpg" />" width="110" height="110" onclick="window.open('resources/pdf/business_idea.pdf')"></a>
						<div class="desc">Business ideas you can start</br></div>
					</div>
					<div class="img">
						<a><img src="<c:url value="/resources/images/businessidea2.jpg" />" width="110" height="110" onclick="window.open('resources/pdf/9_tips.pdf')"></a>
						<div class="desc">9 Ideas for Business Article</div>
					</div>
					<div class="img">
						<a><img src="<c:url value="/resources/images/businessidea3.jpg" />" width="110" height="110" onclick="window.open('resources/pdf/10_ideas.pdf')"></a>
						<div class="desc">Idea to Business</div>
					</div>
					<div class="img">
						<a><img src="<c:url value="/resources/images/businessidea4.jpg" />" width="110" height="110" onclick=""></a>
						<div class="desc">Idea that can change</div>
					</div>
					<div class="img">
						<a><img src="<c:url value="/resources/images/businessidea7.jpg" />" width="574" height="200" onclick=""></a>
						<div class="desc" style="width:auto;">Articles by the Business Tycoons. A must see it.</div>
					</div>
					<div class="img">
						<a><img src="<c:url value="/resources/images/businessidea4.jpg" />" width="110" height="110" onclick=""></a>
						<div class="desc">Something that matters</div>
					</div>
					<div class="img">
						<a><img src="<c:url value="/resources/images/businessidea3.jpg" />" width="110" height="110" onclick=""></a>
						<div class="desc">See something new</div>
					</div>
					<div class="img">
						<a><img src="<c:url value="/resources/images/businessidea6.jpg" />" width="110" height="110" onclick=""></a>
						<div class="desc">Recognize your goal</div>
					</div>
					<div class="img">
						<a><img src="<c:url value="/resources/images/businessidea5.jpg" />" width="110" height="110" onclick=""></a>
						<div class="desc">3 Tips to success</div>
					</div>
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
