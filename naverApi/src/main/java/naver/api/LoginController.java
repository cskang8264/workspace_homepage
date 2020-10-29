package naver.api;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	private NaverLoginBO naverLoginBO;
    private String apiResult = null;
    
    
    @Autowired
    private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
    	this.naverLoginBO = naverLoginBO;
    	
    }
	
    
    //로그인 첫화면 요청 메소드
//    @RequestMapping(value = "/users/naverlogin", method = { RequestMethod.GET, RequestMethod.POST})
//    public String login(Model model , HttpSession session) {
//    	
//    	String naverAuthUrl = NaverLoginBO.
//    }
}
