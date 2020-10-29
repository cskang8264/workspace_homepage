<%@ page contentType="text/html;charset=UTF-8"%>

<script>
function session_che(){
    $.ajax({
        url: '/session/check',
        type:'GET',
        success:function(session_validation){
        	if (session_validation=='SESSION_ON'){
        	} else {
        		location.href = '/';
        	}
            self.close();
        },
        error:function(jqXHR, textStatus, errorThrown){
    		location.href = '/';
            self.close();
        }
    })

}

setInterval(function(){
    $.ajax({
        url: '/session/check',
        type:'GET',
        success:function(session_validation){
        	if (session_validation=='SESSION_ON'){
        	} else {
        		location.href = '/';
        	}
            self.close();
        },
        error:function(jqXHR, textStatus, errorThrown){
    		location.href = '/';
            self.close();
        }
    })

}
,100000);

</script>