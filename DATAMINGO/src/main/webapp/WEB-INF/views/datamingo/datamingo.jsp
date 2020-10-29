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
			<a href="/"><B>Home</B></a>
			<a href="/social">Social</a>
			<a href="/pro">Pro</a>
			<a href="/premium">Premium</a>
			<a href="/design">Design</a>
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
				<div class="menu"><a href="/design">Design</a></div>
				<div class="menu"><a href="/premium">Premium</a></div>
				<div class="menu"><a href="/pro">Pro</a></div>
				<div class="menu"><a href="/social">Social</a></div>
			</div>   
			<p style="height:5vh;"></p>
			<div id="headline">
				<div id="headline-title">Our Service</div>
				<div id="headline-subtitle">Datamingo uses predictive data-driven analytics to increase<BR>sales and maximize profit</div>
			</div>
			<p style="height:10vh;"></p>  
			<div id="request-demo" class="request-demo">
				<div class="request-demo-text">Request a Demo</div>
				<div id="request-demo-box" class="request-demo-box"><img src="../resources/img/left-arrow-white.svg" class="request-demo-box-icon"></div>
			</div>
		</div>   
	</div>   
</div>          
                                 
<div class="boundary" id="boundary-whatwedo">
	<div class="layer" id="layer-whatwedo">
		<div class="panel" id="panel-whatwedo">
			<p style="height:10vh;"></p>
			<div class="h2-text" id="h1-text-whatwedo">WHAT<BR>We Do?</div>
			<p style="height:3vh;"></p>  
			<div class="h4-text" id="h3-text-whatwedo">Predict sales, optimize inventory <div class="br-div"><BR></div>and customize consumer engagement.<BR>Datamingo works with all types of businesses big and Small.<BR>Our solutions work as hard as you do, to boost margins<div class="br-div"><BR></div> while saving valuable monetary and time resources,<BR>getting more done in every shift, every day.</div>
			<div id="slide-box">
				<div id="slide">
					<input type="radio" name="pos-first" id="pos1" checked>
					<input type="radio" name="pos-first" id="pos2">
					<input type="radio" name="pos-first" id="pos3">
					<input type="radio" name="pos-first" id="pos4">
					<ul>
						<li>
							<div class="h3-text">Sales & Demand<BR>Forecasting analytics</div><BR>
							<img src="../resources/img/whatwedo.jpg" class="whatwedo-img">
						</li>
						<li>
							<div class="h3-text">Product<BR>Analysis</div><BR>
							<img src="../resources/img/whatwedo.jpg" class="whatwedo-img">
						</li>
						<li>
							<div class="h3-text">Predict<BR>Optimizing systems</div><BR>
							<img src="../resources/img/whatwedo.jpg" class="whatwedo-img">
						</li>	
					</ul>
				</div>
			<p class="pos" onclick="totheleft()">
					<label for="pos1"><img id="slide-arrow-left" src="../resources/img/slide-arrow-left.png"></label>
				</p>
				<p class="pos" onclick="totheright()">
					<label for="pos2"><img id="slide-arrow-right" src="../resources/img/slide-arrow-right.png"></label>
				</p>
			</div>
			<div id="pcimg-box">
				<img id="pcimg" src="../resources/img/pcimg.jpg">
			</div>
			<p style="height:300px;"></p>
		</div>
	</div>
</div>























<div class="boundary" id="boundary-intuitive">
	<div class="layer" id="layer-intuitive">
		<div class="panel" id="panel-intuitive">
			<p style="height:300px;"></p>
			<div class="h2-text" id="h2-text-intuitive">Intuitive and<BR>Easy to Use</div><p style="height:20px;"></p>
			<div id="textbox-intuitive">
				<div id="textbox-intuitive-01">
					<div class="h3-text" id="h2-text-intuitive">No Training Needed</div><p style="height:10px;"></p>
					<div class="h4-text">Datamingo is designed to make<BR>managing a simple, yet intuitive<BR>task that requires minimal<BR>to no prerequisite training.</div>
				</div>
				<div id="textbox-intuitive-02">
					<div class="h3-text">Hassle-Free Integration</div><p style="height:10px;"></p>
					<div class="h4-text">Our team takes care of seamlessly setting up and<BR>building complex integrations and infrastructure for<BR>your business.<BR>Simply download our application or visit our website<BR>application to gain access to your insights all in one platform.</div>
				</div>
			</div>
			<p style="height:200px;"></p>
		</div>
	</div>
</div>

<div class="boundary" id="boundary-seewhat">
	<div class="layer"  id="layer-seewhat">
		<div class="panel" id="panel-seewhat">
			<p style="height:40px;"></p>
			<div class="h2-text">See what<BR>Datamingo can do for you</div><p style="height:20px;"></p>
			<div class="h4-text">Datamingo enables operators to better understand, manage and less financial risk,<BR>greater consistency and more operational control.</div><p style="height:20px;"></p>
			<p style="height:40px;"></p>
			
			<div id="with-img-seeweaht">
				<div class="h2-text" id="h2-text-seewhat">Clients<BR>love Datamingo</div>
				<div id="slide-box-new-1">
					<div id="slide-new-1">
						<input type="radio" name="pos-second" id="pos-new-01" checked>
						<input type="radio" name="pos-second" id="pos-new-02">
						<input type="radio" name="pos-second" id="pos-new-03">
						<input type="radio" name="pos-second" id="pos-new-04">
						<ul>
							<li>
								<img src="../resources/img/seewhat-img.jpg" class="seeweaht-img">
							</li>
							<li>
								<img src="../resources/img/seewhat-img.jpg" class="seeweaht-img">
							</li>
							<li>
								<img src="../resources/img/seewhat-img.jpg" class="seeweaht-img">
							</li>	
						</ul>
					</div>
					<p class="pos-new-class" onclick="totheleft_01()">
						<label for="pos-new-01"><img id="slide-arrow-left-01" src="../resources/img/slide-arrow-left.png"></label>
					</p>
					<p class="pos-new-class" onclick="totheright_01()">
						<label for="pos-new-02"><img id="slide-arrow-right-01" src="../resources/img/slide-arrow-right.png"></label>
					</p>
				</div>
			</div>
			<p style="height:200px;"></p>
			
			<div id="with-img-seeweaht2">
				<div class="h2-text" id="h2-text-seewhat">Business Partners</div>
				<div id="slide-box-third">
					<div id="slide-third">
						<input type="radio" name="pos-third" id="pos-third-1" checked>
						<input type="radio" name="pos-third" id="pos-third-2">
						<input type="radio" name="pos-third" id="pos-third-3">
						<input type="radio" name="pos-third" id="pos-third-4">
						<ul>
							<li>
								<img src="../resources/img/seewhat-img.jpg" class="seeweaht-img">
							</li>
							<li>
								<img src="../resources/img/seewhat-img.jpg" class="seeweaht-img">
							</li>
							<li>
								<img src="../resources/img/seewhat-img.jpg" class="seeweaht-img">
							</li>	
						</ul>
					</div>
					<p class="pos-third" onclick="totheleft_third()">
						<label for="pos-third-1"><img id="slide-arrow-left-third" src="../resources/img/slide-arrow-left.png"></label>
					</p>
					<p class="pos-third" onclick="totheright_third()">
						<label for="pos-third-2"><img id="slide-arrow-right-third" src="../resources/img/slide-arrow-right.png"></label>
					</p>
				</div>
			</div>
			<p style="height:150px;"></p>
			<div class="h2-text">All your information<BR>in one Glance</div>
			<p style="height:50px;"></p>
			<div id="seewhat-ci-box"><img src="../resources/img/seewhat-img.jpg" id="seewhat-ci"></div>
			<p style="height:100px;"></p>
		
		</div>
	</div>
</div>

<div class="boundary" id="boundary-explore">
	<div class="layer" id="layer-explore">
		<div class="panel" id="panel-explore">
			<p style="height:100px;"></p>
			<div id="explore-box">
				<div id="explore-box-1">
					<div class="h3-text" id="h3-text-explore-1">See all your data<BR>turned into results</div><p style="height:20px;"></p>
					<div class="h4-text" id="h4-text-explore-1">Datamingo integrates with<BR>major pos, staff, scheduling<BR>and social platform.</div>
				</div>
				<div id="explore-box-2">
					<div class="h3-text" id="h3-text-explore-2">Explore<BR>all social interaction</div><p style="height:20px;"></p>
					<div class="h4-text" id="h4-text-explore-2">see and be alerted to all your<BR>customer’s interactions with<BR>social and review platforms<BR>in one place.</div>
				</div>
				<div id="explore-box-3">
					<div class="h3-text" id="h3-text-explore-3">Reviews your<BR>employees performance</div><p style="height:20px;"></p>
					<div class="h4-text" id="h4-text-explore-3">Datamingo pulls together scorecard<BR>detailing average spend, sales per hour,<BR>number of voids and service charge<BR>for your team members.</div>
				</div>
			</div>
						
			<p style="height:300px;"></p>
			<div id="document-img-div"><img id="document-img" src="../resources/img/document-img.jpg"></div>
			
		</div>
	</div>
</div>





<div class="boundary" id="boundary-document">
	<div class="layer" id="layer-document">
		<div class="panel" id="panel-document">
			<div id="document-text-box">
				<div class="h2-text" id="h2-text-document">Run your business<BR>From anywhere</div><p style="height:20px;"></p>
				<div class="h4-text" id="h4-text-document">Datamingo is maximizing Margin tool service</div>
			</div>
			<p style="height:400px;"></p>
		</div>
	</div>
</div>

<%@ include file="datamingo_contact.jsp" %>
<%@ include file="datamingo_footer.jsp" %>