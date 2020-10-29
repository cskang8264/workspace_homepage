<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="datamingo_head.jsp" %>

<body>

<div id="hamburger">
	<div id="hamburger-button-div">
		<a href="javascript:void(0);" onclick="myFunction()"><img src="../resources/img/nav-button.png" id="hamburger-button"></a>
		<a href="/"><img src="../resources/img/datamingo_logo.png" id="hamburger-logo"></a>
	</div>
</div>

<div id="expanded">
	<div class="topnav">
		<div id="myLinks">
			<a href="/">Home</a>
			<a href="/social">Social</a>
			<a href="/pro">Pro</a>
			<a href="/premium">Premium</a>
			<a href="/design"><B>Design</B></a>
			<a href="#about">Contact us</a>
			<a href="#about">KR</a>
		</div>
	</div>
</div>


<div class="boundary" id="boundary-headline">
	<div class="layer" id="boundary-layer">
		<div class="panel" id="panel-headline">
			<div class="nav">
				<a href="/"><img src="../resources/img/datamingo_logo.png" id="logo"></a>
				<div class="menu">En</div>
				<div class="menu"><a href="/contact">Contact us</a></div>
				<div class="menu">
					<a href="/design">Design</a>
					<div class="menu-indicator-up"></div>
					<div class="menu-indicator-down"></div>
				</div>
				<div class="menu"><a href="/premium">Premium</a></div>
				<div class="menu"><a href="/pro">Pro</a></div>
				<div class="menu"><a href="/social">Social</a></div>
			</div>       
			<p style="height:5vh;"></p>  
			<div id="headline">
				<div id="headline-title">Brand Design</div>
				<div id="headline-subtitle">We help brands transform transactional moments into relationships and emotional experiences.<BR>Become one of the successful brands that works with us.</div>
			</div>    	
			<p style="height:10vh;"></p>  
			<div id="request-demo" class="request-demo">
				<div class="request-demo-text">Sent to Email</div>
				<div id="request-demo-box" class="request-demo-box"><img src="../resources/img/left-arrow-white.svg" class="request-demo-box-icon"></div>
			</div>
			<div id="improve-img-box"><img src="../resources/img/improve-img.jpg" id="improve-img"></div>
		</div>
	</div>
</div>
   
<div class="boundary" id="character-boundary">
	<div class="layer" id="character-layer">
		<div class="panel" id="character-panel">
			<p style="height:20vh;"></p>
		</div>
	</div>
</div>

<div class="boundary" id="production-boundary">
	<div class="layer" id="production-layer">
		<div class="panel" id="production-panel">
			<p style="height:5vh;"></p>
			<div class="h2-text">Brand Production</div>
			<p style="height:5vh;"></p>
			<div class="h3-text">Client’s Request</div>
		</div>
	</div>
</div>
   
  
<div class="boundary" id="brand-boundary">
	<div class="layer" id="brand-layer">
		<div class="panel" id="brand-panel">
			<p style="height:10vh;"></p>
			<div class="h3-text" id="brand-h3-text-01"><div style="color:#9013fe;">1</div>Email consultation and apply</div>
			<div class="h3-text" id="brand-h3-text-02"><div style="color:#9013fe;">2</div>Start right away</div>
			<div id="brand-request-div">
				<div id="brand-request-text">Send to Email</div>
				<div id="brand-request-box">
					<img id="brand-request-icon" src="../resources/img/left-arrow-white.svg">
				</div>
			</div>
 			<p style="height:10vh;"></p>
		</div>
	</div>
</div>
     
<div class="boundary" id="process-boundary">
	<div class="layer" id="process-layer">
		<div class="panel" id="process-panel">
			<p style="height:20vh;"></p>
			<div class="h2-text" id="process-h2-text">Production Process</div>
			<div class="h3-text" id="process-h3-text-01">
				<div style="color:#00baff;">1</div>
				Brand Research<BR>
				<img class="process-img" src="../resources/img/improve-img.jpg">
			</div>
			<div class="h3-text" id="process-h3-text-02">
				<div style="color:#00baff;">2</div>
				Brand Concept<BR>
				<img class="process-img" src="../resources/img/improve-img.jpg">
			</div>
			<div id="process-arrow-div">
				<img id="process-arrow-img" src="../resources/img/slide-arrow-right.png">
			</div>
			<p style="height:20vh;"></p>
		</div>
	</div>        
</div>      
           
<div class="boundary" id="pricing-boundary">
	<div class="layer" id="pricing-layer">
		<div class="panel" id="pricing-panel">
			<div id="pricing-div"><img id="pricing-img" src="../resources/img/improve-img.jpg"></div>
			<p style="height:10vh;"></p>
			<div class="h2-text" id="pricing-h2-text">Pricing</div>
			<div class="h3-text" id="pricing-h3-text">Depends on type of process. <BR>Please contact us for further details.</div>
			<div id="pricing-request-div">
				<div id="pricing-request-text">Send to Email</div>
				<div id="pricing-request-box">
					<img id="pricing-request-icon" src="../resources/img/left-arrow-black.png">
				</div>
			</div>
			<p style="height:10vh;"></p>
		</div>
	</div>
</div>             
         

<%@ include file="datamingo_contact.jsp" %>
<%@ include file="datamingo_footer.jsp" %>