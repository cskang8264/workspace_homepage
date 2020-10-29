package com.jwp.smartStore.Controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.FormHttpMessageConverter;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.jwp.smartStore.Service.MenuService;
import com.jwp.smartStore.Service.OrderService;

@RestController
public class PushController {
	@Autowired
	OrderService orderService;
	
	@RequestMapping(value = "/kakao/order", method = RequestMethod.GET)
	public String exRedirect6(@RequestParam Map map) {

		
		List<Map> orderList = orderService.selectOrder(map);
		List<Map> orderDetailList = orderService.selectOrderDetail(map);
	
		System.out.println(orderList);
		System.out.println(orderDetailList);
		

				
		int  order_id =  (int) orderList.get(0).get("order_id");
		String order_no = (String) orderList.get(0).get("order_no");
		String customer_phone = (String) orderList.get(0).get("customer_phone");
		String manager_phone = (String) orderList.get(0).get("manager_phone");
		int order_status = (int) orderList.get(0).get("order_status");
		int order_detail_id = (int) orderDetailList.get(0).get("order_detail_id");
		String order_menu = (String)orderDetailList.get(0).get("order_menu");
		String order_value = (String) orderDetailList.get(0).get("order_value");

		System.out.println(order_id);
		System.out.println(order_no);
		System.out.println(customer_phone);
		System.out.println(manager_phone);
		System.out.println(order_status);
		System.out.println(order_detail_id);
		System.out.println(order_menu);
		System.out.println(order_value);
		
		
		// RestTemplate 에 MessageConverter 세팅
	    List<HttpMessageConverter<?>> converters = new ArrayList<HttpMessageConverter<?>>();
	    converters.add(new FormHttpMessageConverter());
	    converters.add(new StringHttpMessageConverter());
	 
	    RestTemplate restTemplate = new RestTemplate();
	    restTemplate.setMessageConverters(converters);
	 
	    // parameter 세팅
	    MultiValueMap<String, String> map2 = new LinkedMultiValueMap<String, String>();
	    // path 문제?
	    
	    // REST API 호출
	    String result = restTemplate.getForObject("http://49.50.162.59:5000/mingo?order_id="+order_id+"&order_no="+order_no+"&customer_phone="+customer_phone+"&manager_phone="+manager_phone
	    		+"&order_status="+order_status+"&order_detail_id="+order_detail_id+"&order_menu="+order_menu+"&order_value="+order_value , String.class);
	    System.out.println("------------------ TEST 결과 ------------------");
	    System.out.println(result);
		
		
		return "success ";

		

	}
	

	}


