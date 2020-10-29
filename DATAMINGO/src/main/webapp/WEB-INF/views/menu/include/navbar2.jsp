<%@ page contentType="text/html;charset=UTF-8"%>

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top navbar-inverse"    style="background-color: #000000;">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/">PORTFOLIO</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">   
            <li id="nav_menu_1"><a href="/search_book">기존 페이지로 가기</a></li>
          </ul> 
             
              <ul class="nav navbar-nav navbar-right ">
            <li id="nav_menu_15"><a href="/mail">상담 신청</a></li>
          
    </ul>   
          
        </div>
        
      </div>
      
    </nav>
    
    
    
    <script>
    	  if(${not empty sessionScope.member_id}){
    		  var element = document.getElementById("login_menu");
    		  element.removeAttribute("data-target");
    		  element.innerHTML = "LOGOUT";
    		  element.href = "/member/logout";
    		  var element2 = document.getElementById("memberto");
    		  element2.innerHTML = "${sessionScope.member_id}님 ▼";
    		  var element3 = document.getElementById("joinn");
    		  element3.innerHTML = "리뷰 작성하기";
    		  element3.href = "/write_review";
    		  
    		  var element4 = document.getElementById("nav_menu_8");
        	  element4.removeAttribute("data-target");
    		  element4.href = "/write_review";


    	  }
    	  

   	  </script>


<style>
.body {
    -webkit-box-shadow: 0 8px 6px -6px #999;
    -moz-box-shadow: 0 8px 6px -6px #999;
    box-shadow: 0 8px 6px -6px #999;

    /* the rest of your styling */
}
   
</style>


    