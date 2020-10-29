<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
	<title>MINGO</title>
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>	
	<link data-require="sweet-alert@*" data-semver="0.4.2" rel="stylesheet" 
			href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
 	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<style>
	@import url('https://fonts.googleapis.com/css?family=Noto+Serif+KR&display=swap');
	@import url('https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap');
	
	BODY {
		background-color: light-blue;
	}
		
	.text_title{
		font-family: 'Noto Sans KR', serif;
		font-size: 25px;
		word-break: keep-all;
	}
	  
	@media screen and (max-width: 1200px) {
		.text_title {
		   font-size: 30px;
		}
	}
	
	.text_sub_title{
		font-family: 'Noto Serif KR', serif;
		font-size: 25px;
		word-break: keep-all;
	}
	  
	@media screen and (max-width: 1200px) {
		.text_sub_title {
		   font-size: 20px;
		}
	}
		
	.text_direction{
		font-family: 'Noto Sans KR', sans-serif;
		font-size: 20px;
		color: #337ab7;
		word-break: keep-all;
	}  
	
	@media screen and (max-width: 1200px) {
		.text_direction {
		   font-size: 15px;
		}
	}
		
	.element_center{
	    margin: 0 auto;
	    float: none;
	}
	
	.short500 {
		width: 500px;
	}
	
	@media screen and (max-width: 1200px) {
		.short500 {
			width: 90%;
		}
	}
	

    .w3_center {
      margin: 0;
      position: absolute;
      top: 50%;
      left: 50%;
      -ms-transform: translate(-50%, -50%);
      transform: translate(-50%, -50%);
    }

	.element_horizontal_center {
		display: block;
		margin-left: auto;
		margin-right: auto;
	}

	</style>
	
	
	
	
	
	
