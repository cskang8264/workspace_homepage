<%@ page contentType="text/html;charset=UTF-8"%>
  
<nav class="navbar navbar-dark bg-dark">
  <div class="container">
    <a id="nav_logo" href="https://admin.datamingo.net" class="navbar-brand">MINGO ADMIN</a>
    <a style="display:none;" id="nav_back" href="https://admin.datamingo.net" class="btn btn-light my-2 my-sm-0" role="button" aria-pressed="true">돌아가기</a>
    <button id="nav_reset" style="display:none;" type="button" class="btn btn-outline-dark" data-toggle="modal" data-target="#exampleModalCenter">프로그램 종료</button>
  </div>
</nav>

<script>

	var admin = '<%=(String)session.getAttribute("admin")%>';
	var direct = '<%=(String)session.getAttribute("direct")%>';
	
	if(direct != null) {
		$("#nav_back").attr("href", direct);
		$('#nav_back').show();
	}

	var direct = '<%=(String)session.getAttribute("direct")%>';
	if(direct=='direct') {
		$('#nav_reset').show();
		$("#nav_logo").attr("href", "/admin/direct");
		$("#nav_back").attr("href", "/admin/direct");
		setInterval(function(){
			location.href = '/admin/direct';
			}
		,120000);
	} else {
		$('#nav_back').show();

	}
	

</script>

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"><B>초기 메뉴로 이동</B></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
		<div class="container">
		    	<div class="text_direction text-left">아이디를 입력해주세요.</div><BR>
			    <div class="input-group mb-3 input-group-lg">
			    	<input type="text" id="nav_manager_id" name="manager_id" class="form-control input-lg">
			    </div>
		    	    	
		    	<div class="text_direction text-left">비밀번호를 입력해주세요.</div><BR>
			    <div class="input-group mb-3 input-group-lg">
			    	<input type="password" id="nav_manager_pw" name="manager_pw" class="form-control input-lg">
			    </div>
      </div> 
	       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="nav_login_button">확인 후 메인 메뉴로 이동</button>
      </div>
    </div>
  </div>
</div>

<script>

	$(function() {
	    $("#nav_login_button").on("click", function () {
		    $.ajax({
	            url: '/admin/login/process',
	            type:'POST',
	            data: { "manager_id" : $("#nav_manager_id").val(),"manager_pw" : $("#nav_manager_pw").val()},
	            success:function(result_data){
	            	if(result_data=='success'){
		                alert("관리자 로그인에 성공하였습니다. 어드민 메인 페이지로 이동합니다.");
	                	document.location.href = '/crm/front';
	            	} else {
		                alert("로그인에 실패하였습니다.");
	            	}
	                self.close();
	            },
	            error:function(jqXHR, textStatus, errorThrown){
	                alert("로그인에 실패하였습니다.");
	                self.close();
	            }
	        })
	    })
	});
	
	
	

</script>
