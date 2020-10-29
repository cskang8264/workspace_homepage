<%@ page contentType="text/html;charset=UTF-8"%>
<footer> </footer>

<style>
.br-div {
	display:none;
}

@media (max-width:500px){
	.br-div {
		display:inline;
	}
}


.topnav {
	overflow: hidden;
	background-color: #fff;
	position: relative;
}

.topnav #myLinks {
	display: none;
}

.topnav a {
	color: white;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
	display: block;
}

.topnav a.icon {
	background: black;
	display: block;
	position: absolute;
	right: 0;
	top: 0;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

#hamburger {  
	background-color: #f8f8f9;
	display:none;
}

@media (max-width:500px){
	#hamburger {
		display: block;
	}
}

#expanded {
	display:none;
}

@media (max-width:500px){
	#expanded {
		display: block;
	}
}

#hamburger-button {
	width: 20px;
	padding-left: 15px;
	padding-top: 15px;
	padding-bottom: 15px;
	padding-right: 5px;
} 
     
#hamburger-logo {
	height: 18px;
	padding-right: 15px;
	padding-top: 15px;
	padding-bottom: 15px;
	padding-left: 0px;
}
   
a:link {
	text-decoration: none;
	color: #353341;
}

a:visited {
	text-decoration: none;
	color: #353341;
  
}

a:hover {
	text-decoration: none;
	color: #353341;
  
}

a:active {
	text-decoration: none;
	color: #353341;
}

html, body {
	background-color: blue;
	margin: 0px;
	padding: 0px;
}
  
.boundary {
	background-color: pink;
	margin: 0px;
	padding: 0px;
}

.panel {
	width: 800px;
	height: 100%;
	background-color: white;
	margin: auto;
	position: relative;
}

@media (max-width:800px){
	.panel {
		width: 100%;
	}
}

.layer {
	height: 100%;
	background-color: green;
	width: 70%;
	margin: auto;
}

@media (max-width:800px){
	.layer {
		width: 90%;
	}
}

@media (max-width:500px){
}

@media (max-width:800px){
}


.request-demo {
	z-index: 1;
}

.request-demo-text {
	font-family: Roboto;
	font-size: 14px;
	font-weight: 300;
	font-style: normal;
	font-stretch: normal;
	line-height: normal;
	letter-spacing: normal;
	color: #353341;
	text-align: center;
	display: inline;
	padding-top: 15px;
	padding-bottom: 15px;
	padding-right: 15px;
}

.request-demo-box {
	width: 30px;
	height: 30px;
	background-color: #353341;
	display: inline;
	float: right;
	position: relative;
}

.request-demo-box-icon {
	width: 12px;
	margin: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}

.h1-text {
	font-family: Roboto;
	font-size: 25px;
	font-weight: 500;
	font-style: normal;
	font-stretch: normal;
	line-height: normal;
	letter-spacing: normal;
	color: #353341;
}

.h2-text {
	font-family: Roboto;
	font-size: 20px;
	font-weight: 500;
	font-style: normal;
	font-stretch: normal;
	line-height: normal;
	letter-spacing: normal;
	color: #353341;
	display: inline;
}

.h3-text {
	font-family: Roboto;
	font-size: 17px;
	font-weight: normal;
	font-style: normal;
	font-stretch: normal;
	line-height: normal;
	letter-spacing: normal;
	color: #353341;
}

.h4-text {
	font-family: Roboto;
	font-size: 15px;
	font-weight: 300;
	font-style: normal;
	font-stretch: normal;
	line-height: normal;
	letter-spacing: normal;
	color: #353341;
}

.contact-text {
	font-family: Roboto;
	font-size: 10px;
	font-weight: normal;
	font-style: normal;
	font-stretch: normal;
	line-height: normal;
	letter-spacing: normal;
	color: #cfa4a4;
}

/* headline */
#boundary-headline {
	background-color: #f8f8f9;
}

#panel-headline {
	background-color: #f8f8f9;
}

.nav {
	background-color: #f8f8f9;
}

@media (max-width:500px){
	.nav {
	display: none;
	}
}


.menu {
	background-color: #f8f8f9;
	display: float;
	float: right;
	text-align: center;
	padding-top: 30px;
	padding-right: 10px;
	padding-left: 10px;
	font-family: Roboto;
	font-size: 13px;
	font-weight: normal;
	font-style: normal;
	font-stretch: normal;
	line-height: normal;
	letter-spacing: normal;
	color: #353341;
}   
     
.menu-indicator-up {
	background-color: #353341;
	width: 32px;
	height: 12px;
	margin: 0 auto;
	opacity:0.0;
}      

.menu-indicator-down {
	background-color: #353341;
	width: 32px;
	height: 4px;
	margin: 0 auto;
}

     
#boundary-layer {
	background-color: #f8f8f9;
}

#logo {
	height: 18px;
	padding-top: 20px;
}

#headline {
	width: 100%;
}
  
#headline-title {
	width: 90%;
	font-family: Roboto;
	font-size: 4vh;
	font-weight: 500;
	font-style: normal;
	font-stretch: normal;
	line-height: normal;
	letter-spacing: 0.55px;
	color: #000000;
	padding-bottom: 20px;
}

#br-div {
	display:none;
}

#headline-subtitle {
	font-family: Roboto;
	font-size: 2vh;
	font-weight: normal;
	font-style: normal;
	font-stretch: normal;
	line-height: normal;
	letter-spacing: normal;
	color: #353341;
}

#request-demo {
	margin: 0;
	position: absolute;
	top: 100%;
	-ms-transform: translateY(-50%);
	transform: translateY(-50%);
}

#request-demo-box {
	
}

/* whatwede */
#boundary-whatwedo {
	background-color:#ffffff;
}

#layer-whatwedo {
	background-color:#ffffff;
}

#panel-whatwedo {
	background-color:#ffffff;
}

.whatwedo-img {
	padding-top: 10px;
}


#h3-text-whatwedo {
	padding-top: 2%;
	padding-bottom: 8%;
}

#pcimg {
	width: 100%;
}

#pcimg-box {
	margin: 0;
	position: absolute;
	top: 100%;
	left: 50%;
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	width: 120%;
	z-index: 1;
}

/* whatwedo slide image */

* {
	margin: 0;
	padding: 0;
}

ul, li {
	list-style: none;
}

#slide {
	height: 450px;
	position: relative;
	overflow: hidden;
}

#slide ul {
	width: 400%;
	height: 100%;
	transition: 1s;
}

#slide ul:after {
	content: "";
	display: block;
	clear: both;
}

#slide li {
	float: left;
	width: 340px;
	height: 100%;
}

#slide li:nth-child(1) {
	background: #FFF;
}

#slide li:nth-child(2) {
	background: #FFF;
}

#slide li:nth-child(3) {
	background: #FFF;
}

#slide li:nth-child(4) {
	background: #FFF;
}

#slide input {
	display: none;
}

.pos {
	position: absolute;
	right: 0;
	text-align: center;
	padding-top: 10px;
}

#pos1:checked ~ul{
	margin-left: 0%;
}

#pos2:checked ~ul{
	margin-left: -30vh;
}

#pos3:checked ~ul{
	margin-left: -200%;
}

#pos4:checked ~ul{
	margin-left: -300%;
}

#slide-box {
	width: 100%;
	height: 50%;
}

#slide-arrow-right {
	width: 20px;
	height: 20px;
}

#slide-arrow-left {
	width: 20px;
	height: 20px;
	display: none;
}

/* intuitive */
#boundary-intuitive {
	background-color: #f8f8f9;
}

#layer-intuitive {
	background-color: #f8f8f9;
}

#panel-intuitive {
	background-color: #f8f8f9;
}




#h3-text-intuitive {
	padding-top: 40%;
}

#textbox-intuitive-02 {
	width: 500px;
	position: absolute;
	left: 40%;
	top: 0;
}

#textbox-intuitive {
	position: relative;
	margin: auto;
}

.padding-intuitive {
	hegiht: 100px;
}

/* seewhat */

#boundary-seewhat {
	background: #FFF;
}

#layer-seewhat {
	background: #FFF;
}
#panel-seewhat {
	background: #FFF;
}


#h2-text-seewhat {
	width: 20%;
}

#with-img-seeweaht {
	position: relative;
	margin: auto;
}

#with-img-seeweaht2 {
	position: relative;
	margin: auto;
}

#panel-seewhat {
	position: relative;
	margin: auto;
}

#seewhat-ci-box {
}

#seewhat-ci {
	margin: 0 auto;
	display: block;
	width: 60%;
}



/* seewaht slide */
#slide-new-1 {
	height: 130px;
	position: relative;
	overflow: hidden;
}

#slide-new-1 ul {
	width: 300%;
	height: 100%;
	transition: 1s;
}

#slide-new-1 ul:after {
	content: "";
	display: block;
	clear: both;
}

#slide-new-1 li {
	float: left;  
	width: 200px;
	height: 100%;
}

#slide-new-1 li:nth-child(1) {
	background: #FFF;
}

#slide-new-1 li:nth-child(2) {
	background: #FFF;
}

#slide-new-1 li:nth-child(3) {
	background: #FFF;
}

#slide-new-1 li:nth-child(4) {
	background: #FFF;
}

#slide-new-1 input {
	display: none;
}

.pos-new-class {
	position: absolute;
	right: 0;
	text-align: center;
	padding-top: 10px;
}

#pos-new-01:checked ~ul{
	margin-left: 0%;
}

#pos-new-02:checked ~ul{
	margin-left: -100px;
}

#pos-new-03:checked ~ul{
	margin-left: -200%;
}

#pos-new-04:checked ~ul{
	margin-left: -300%;
}

#slide-box-new-1 {
	width: 70%;
	height: 200px;
	position: absolute;
	left: 30%;
	top: 0;

}      

#slide-arrow-left-01 {
	width: 20px;
	height: 20px;
	display: none;
}

#slide-arrow-right-01 {
	width: 20px;
	height: 20px;
}

/* seewhat slide 2 */

#slide-third {
	height: 130px;
	position: relative;
	overflow: hidden;
}

#slide-third ul {
	width: 300%;
	height: 100%;
	transition: 1s;
}

#slide-third ul:after {
	content: "";
	display: block;
	clear: both;
}

#slide-third li {
	float: left;  
	width: 200px;
	height: 100%;
}

#slide-third li:nth-child(1) {
	background: #FFF;
}

#slide-third li:nth-child(2) {
	background: #FFF;
}

#slide-third li:nth-child(3) {
	background: #FFF;
}

#slide-third li:nth-child(4) {
	background: #FFF;
}

#slide-third input {
	display: none;
}

.pos-third {
	position: absolute;
	right: 0;
	text-align: center;
	padding-top: 10px;
}

#pos-third-1:checked ~ul{
	margin-left: 0%;
}

#pos-third-2:checked ~ul{
	margin-left: -100px;
}

#pos-third-3:checked ~ul{
	margin-left: -200%;
}

#pos-third-4:checked ~ul{
	margin-left: -300%;
}

#slide-box-third {
	width: 70%;
	height: 200px;
	position: absolute;
	left: 30%;
	top: 0;

}      

#slide-arrow-left-third {
	width: 20px;
	height: 20px;
	display: none;
}

#slide-arrow-right-third {
	width: 20px;
	height: 20px;
}


/* explore */
#boundary-explore {
	background-color: #2b2e2d;
}

#layer-explore {
	background-color: #2b2e2d;
}

#panel-explore {
	background-color: #2b2e2d;
	position: relative;
	margin: auto;
	
}


#explore-box {
	margin: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}

#h3-text-explore-1 {
	color: #ffffff;
}

#h4-text-explore-1 {
	color: #ffffff;
}

#h3-text-explore-2 {
	color: #ffffff;
}

#h4-text-explore-2 {
	color: #ffffff;
}

#h3-text-explore-3 {
	color: #ffffff;
}

#h4-text-explore-3 {
	color: #ffffff;
}

#explore-box{
	position: relative;
}
#explore-box-1 {
	position: absolute;
	top: 0;
	left: 0;
}

#explore-box-2 {
	position: absolute;
	top: 0;
	left: 33%;
}

#explore-box-3 {
	position: absolute;
	top: 0;
	left: 66%;
}

/* document */
#boundary-document {
	background-color: #ffffff;

}

#layer-document {
	background-color: #ffffff;
	
}

#panel-document {
	z-index: 2;
	background-color:transparent;
}


#document-img {
	width: 100%;
}

#document-img-div {
	margin: 0;
	position: absolute;
	top: 150%;
	left: 0%;
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	z-index: 1;
}
    

/* contact */

#boundary-contact {
	background-color: #ffffff;
}

#layer-contact {
	background-color: #ffffff;
}

#panel-contact {
	background-color: #ffffff;
}



#contact-box {
	position: relative;
}

#contact-box-1 {
	position: absolute;
	top: 0;
	left: 0;
}

#contact-box-2 {
	position: absolute;
	top: 0;
	left: 25%;
}

#contact-box-3 {
	position: absolute;
	top: 0;
	left: 80%;
}

#contact-box-bottom {
	position: relative;
}

#contact-box-4 {
	position: absolute;
	top: 0;
	left: 0;
}


#contact-box-5 {
	position: absolute;
	top: 0;
	left: 25%;
}


#contact-box-6 {
	position: absolute;
	top: 0;
	left: 80%;
	display: inline;

}

.contact-us-text {
	font-family: Roboto;
	font-size: 14px;
	font-weight: 300;
	font-style: normal;
	font-stretch: normal;
	line-height: normal;
	letter-spacing: normal;
	color: #646f7c;
	text-align: center;
	display: inline;
	padding-top: 15px;
	padding-bottom: 15px;
	padding-right: 15px;
	display: inline;

}

.contact-us-box {
	width: 30px;
	height: 30px;
	background-color: #d5b2b2;
	display: inline;
	float: right;
	position: relative;
}

.follow-img {
	display: inline;

}

.follw-icon {
  width: 14.5px;
  height: 14.5px;
  display: inline;
}

/* social - headline */

#improv-img {
	position: relative;
}

#improve-img-box {
	margin: 0;
	position: absolute;
	top: 120%;
	right: 0;
	-ms-transform: translateY(-50%);
	transform: translateY(-50%);
	z-index: 1;
}

/* social - benefit - title */

#boundary-benefit-title {
	background-color:#fff;
}

#layer-benefit-title {
	background-color:#fff;
}

#panel-benefit-title {
	background-color:#fff;
}

/* social - benefit */


#boundary-benefit {
	background-color:#fff;
}

#layer-benefit {
	background-color:#fff;
}

#panel-benefit {
	background-color:#fff;
}


#benefit-box-1 {
	position: absolute;
	top: 0;
	left: 0;
}

#benefit-box-2 {
	position: absolute;
	top: 0;
	left: 33%;
}

#benefit-box-3 {
	position: absolute;
	top: 0;
	left: 66%;
}

#benefit-box-4 {
	position: absolute;
	top: 200px;
	left: 0;
}

#benefit-box-5 {
	position: absolute;
	top: 200px;
	left: 33%;
}

#benefit-box-6 {
	position: absolute;
	top: 200px;
	left: 66%;
}

#text-shortoftime {
	margin: 0;
	position: absolute;
	top: 100%;
	-ms-transform: translateY(-50%);
	transform: translateY(-50%);
	z-index: 1;
	width: 230px;
	height: 50px;
	font-family: Roboto;
	font-size: 20px;
	font-weight: 500;
	font-style: normal;
	font-stretch: normal;
	line-height: normal;
	letter-spacing: normal;
	color: #353341;
}

/* social - media */
#improv-img {
	margin: 0;
	position: absolute;
	top: 50%;
	left: 0;
	-ms-transform: translateY(-50%);
	transform: translateY(-50%);
}

#improve-img-box {
}

#h3-text-media {
	position: absolute;
	top: 10%;
	left: 0;
	color: #fff;
}

#h4-text-media {
	position: absolute;
	top: 20%;
	left: 0;
	color: #fff;
	
}




#media-img {
	width: 100%;
}

#boundary-media {
	background-color: #2e3131;
}
#layer-media {
	background-color: #2e3131;
}

#panel-media {
	background-color: #2e3131;
	position: relative;
}

#request-demo-white-div {
	position: absolute;
	top: 20%;
	right: 0;
	z-index: 2;
}

.request-demo-white-text {
	font-family: Roboto;
	font-size: 14px;
	font-weight: 300;
	font-style: normal;
	font-stretch: normal;
	line-height: normal;
	letter-spacing: normal;
	color: #fff;
	text-align: center;
	display: inline;
	padding-top: 15px;
	padding-bottom: 15px;
	padding-right: 15px;
	display: inline;

}

.request-demo-white-box {
	width: 30px;
	height: 30px;
	background-color: #fff;
	display: inline;
	float: right;
	position: relative;
}


/* social - score */
#boundary-score {
	background-color:#fff;
}

#layer-score {
	background-color:#fff;
}

#panel-score {
	background-color:#fff;
}



#h2-text-score {
	position: absolute;
	top: 20%;
	left: 0;
}
#h4-text-score {
	position: absolute;
	top: 20%;
	right: 0;
}

/* social -star */
#boundary-star {
	background-color:#fff;
}

#layer-star {
	background-color:#fff;
}

#panel-star {
	background-color:#fff;
	position:relative;
}

#right-arrow-box {
	margin: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	-ms-transform: translateY(-50%);
	transform: translateY(-50%);
}

#right-arrow {
	width: 20px;
}

#star-after-box {
	position: absolute;
	right:10%;
}
   
#star-before-box {
	position: absolute;
	left:10%;
}

/* pro - headline */
#location-img {
	position: relative;
	width: 100%;
	
}

#location-img-box {
	margin: 0;
	position: absolute;
	top: 150%;
	right: 0;
	-ms-transform: translateY(-50%);
	transform: translateY(-50%);
	z-index: 1;
	width: 100%;
}

#request-demo-white-div2 {
	position: absolute;
	top: 0;
	left: 0;
	z-index: 2;
}


/* notification */
#boundary-notification {
	background-color:#fff;
}

#layer-notification {
	background-color:#fff;
}

#panel-notification {
	background-color:#fff;
}


#h3-text-notification {
	color : #fff;
	z-index:2;
}

#h4-text-notification {
	color : #fff;
	z-index:2;
}

#notification-text-box {
	position: absolute;
	top: 20%;
	left: 0;
	z-index:2;
}   

/* include */
#boundary-include {
	background-color:#fff;
}

#layer-include {
	background-color:#fff;
}

#panel-include {
	background-color:#fff;
}






/* tracking */
#boundary-tracking {
	background-color:#fff;
}

#layer-tracking {
	background-color:#fff;
}

#panel-tracking {
	background-color:#fff;
}


#tracking-box-1 {
	position: absolute;
	top: 0;
	left: 0;
}

#tracking-box-2 {
	position: absolute;
	top: 0;
	left: 25%;
}

#tracking-box-3 {
	position: absolute;
	top: 0;
	left: 50%;
}

#tracking-box-4 {
	position: absolute;
	top: 0;
	left: 75%;
}



#tracking-box-5 {
	position: absolute;
	top: 200px;
	left: 0;
}

#tracking-box-6 {
	position: absolute;
	top: 200px;
	left: 25%;
}

#tracking-box-7 {
	position: absolute;
	top: 200px;
	left: 50%;
}

#tracking-box-8 {
	position: absolute;
	top: 200px;
	left: 75%;
}

#tracking-box {
	z-index:1;
}

/* efficiency */

#efficiency-img-box {
	width:100%;
}

#efficiency-img {
	width:100%;
}

#h3-text-efficiency {
	position: absolute;
	top: 20%;
	left: 0;
	color: #fff;
}

#h3-text-efficiency2 {
	position: absolute;
	top: 60%;
	left: 0;
	color: #fff;
}

#h4-text-efficiency {
	position: absolute;
	top: 70%;
	left: 0;
	color: #fff;
}

#h3-text-forecast {
	position: absolute;
	top: 10%;
	left: 0;
}

#h4-text-forecast {
	position: absolute;
	top: 30%;
	left: 0;
}

#text-collect-box {
	margin: 0;
	position: absolute;
	top: 100%;
	left: 50%;
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}


/* PREMIUM - HEADLINE */
#features-boundary {
	background-color:#fff;
}

#features-layer {
	background-color:#fff;
}

#features-panel {
	background-color:#fff;
}



#wondering-boundary {
	background-color:#fff;
}
#wondering-layer {
	background-color:#fff;
}
#wondering-panel {
	background-color:#fff;
}

#smartphone-boundary {
	background-color:#fff;
}
#smartphone-layer {
	background-color:#fff;
}
#smartphone-panel {
	background-color:#fff;
}
  
#smartphone-img {
	width:100%;
}

#smartphone-text {
	color: white;
	z-index: 3;
	position: absolute;
	bottom: 10%;
	left: 10%;
}   

#premium-boundary {
  background-color: #f8f8f9;
}

#premium-layer {
  background-color: #f8f8f9;
}

#premium-panel {
	background-color: #f8f8f9;
}

#premium-request-div {
	position: absolute;
	right: 0;
	z-index: 2;   
	bottom: 10%;
}
  
#premium-request-text {
	font-family: Roboto;
	font-size: 14px;
	font-weight: 300;
	font-style: normal;
	font-stretch: normal;
	line-height: normal;
	letter-spacing: normal;
	color: #353341;
	text-align: center;
	display: inline;
	padding-top: 15px;
	padding-bottom: 15px;
	padding-right: 15px;
}

#premium-request-box {
	width: 30px;
	height: 30px;
	background-color: #353341;
	display: inline;
	float: right;
	position: relative;
}

#premium-request-icon {
	width: 12px;
	margin: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}

#character-boundary {
	background-color: #FFF;
}

#character-layer {
	background-color: #FFF;
}

#character-panel {
	background-color: #FFF;
}


#production-boundary {
	background-color: #FFF;
}
#production-layer {
	background-color: #FFF;
}
#production-panel {
	background-color: #FFF;
}

#brand-boundary {
	background-color: #FFF;
}
#brand-layer {
	background-color: #FFF;
}
#brand-panel {
	background-color: #FFF;
}



#brand-h3-text-01 {
	position: absolute;
	top: 50%;
	left:0;
}


#brand-h3-text-02 {
	position: absolute;
	top: 50%;
	left:30%;
}

#brand-request-div {
	position: absolute;
	right: 0;
	z-index: 2;   
	top: 60%;
}
  
#brand-request-text {
	font-family: Roboto;
	font-size: 14px;
	font-weight: 300;
	font-style: normal;
	font-stretch: normal;
	line-height: normal;
	letter-spacing: normal;
	color: #353341;
	text-align: center;
	display: inline;
	padding-top: 15px;
	padding-bottom: 15px;
	padding-right: 15px;
}

#brand-request-box {
	width: 30px;
	height: 30px;
	background-color: #353341;
	display: inline;
	float: right;
	position: relative;
}

#brand-request-icon {
	width: 12px;
	margin: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}
          
#process-boundary {
	background-color: #FFF;
}
#process-layer {
	background-color: #FFF;
}
#process-panel {
	background-color: #FFF;
}

#process-h2-text {
	position: absolute;
	top: 50%;
	left:0;

}

#process-h3-text-01 {
	position: absolute;
	top: 50%;
	left:30%;
}
                     
#process-h3-text-02 {
	position: absolute;
	top: 50%;
	left:60%;
}

.process-img {
	width:200px;
}

#process-arrow-div {
	position: absolute;
	bottom: 0;
	right: 0;
}

#process-arrow-img {
	width: 30px;
}

#pricing-boundary {
	background-color: #2b2e2d;
}

#pricing-layer {
	background-color: #2b2e2d;
}

#pricing-panel {
	background-color: #2b2e2d;
}

  
#pricing-img {
	position: relative;
	width: 300px;
}

#pricing-div {
	margin: 0;
	position: absolute;
	top: 0%;
	left: 0;
	-ms-transform: translateY(-50%);
	transform: translateY(-50%);
	z-index: 1;
}

#pricing-h2-text {
	color: white;
}

#pricing-h3-text {
	color: white;
}

#pricing-request-div {
	position: absolute;
	right: 0;
	z-index: 2;   
	top: 60%;
}
  
#pricing-request-text {
	font-family: Roboto;
	font-size: 14px;
	font-weight: 300;
	font-style: normal;
	font-stretch: normal;
	line-height: normal;
	letter-spacing: normal;
	color: #fff;
	text-align: center;
	display: inline;
	padding-top: 15px;
	padding-bottom: 15px;
	padding-right: 15px;
}

#pricing-request-box {
	width: 30px;
	height: 30px;
	background-color: #fff;
	display: inline;
	float: right;
	position: relative;
}

#pricing-request-icon {
	width: 12px;
	margin: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}


</style>


