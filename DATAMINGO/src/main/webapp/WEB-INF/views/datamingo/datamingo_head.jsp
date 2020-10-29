<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
<!DOCTYPE html>
<html>
<head>
	<title>Datamingo</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="/resources/js/jquery-2.1.1.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<style>
		@import url('https://fonts.googleapis.com/css?family=Roboto:300,400,500&display=swap');
	</style>
	
	<script>
		function totheleft() {
			  var text = document.getElementById("slide-arrow-left");
			  text.style.display = "none";
			  
			  var text = document.getElementById("slide-arrow-right");
			  text.style.display = "inline";

		}
		
		function totheright() {
			  var text = document.getElementById("slide-arrow-left");
			  text.style.display = "inline";
			  
			  var text = document.getElementById("slide-arrow-right");
			  text.style.display = "none";
		}
		

	
	</script>
	
	
</head>