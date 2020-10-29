package com.jwp.smartStore.Controller;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.security.MessageDigest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.time.Period;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import com.jwp.smartStore.Service.OrderService;

import com.opencsv.CSVReader;


@RequestMapping(value = "/order", method = RequestMethod.GET)
@Controller
public class OrderController {

	@Autowired
	OrderService orderService;
	private static final Logger Logger = LoggerFactory.getLogger(OrderController.class);

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String orderList(Model model, @RequestParam Map map, HttpSession session) {

		List<Map> orderList = orderService.selectOrder(map);
		List<Map> orderDetailList = orderService.selectOrderDetail(map);
		model.addAttribute("orderList", orderList);
		model.addAttribute("orderDetailList", orderDetailList);

		return "order/orderList";

	}

	@RequestMapping(value = "/detail/{order_id}", method = RequestMethod.GET)
	public String orderdetailList(Model model, @RequestParam Map map, HttpSession session,
			@PathVariable String order_id) {
		map.put("order_id", order_id);

		List<Map> orderList = orderService.selectOrder(map);
		List<Map> orderDetailList = orderService.selectOrderDetail(map);
		model.addAttribute("orderList", orderList);
		model.addAttribute("orderDetailList", orderDetailList);
		System.out.println(orderDetailList);

		return "order/orderDetail";

	}

	@RequestMapping(value = "menu/order", method = RequestMethod.GET)
	public ResponseEntity<Object> paywayselect(@RequestParam Map map) throws URISyntaxException {
		// manager_id transation ID는 뭘로?
		//
		String user_id = (String) map.get("user_id");
		String total_price = (String) map.get("total_price");
		String manager_id = (String) map.get("manager_id");
		String product_count = (String) map.get("product_count");
		String product_name = (String) map.get("product_name");
		String encProduct_name = URLEncoder.encode("utf-8");

		
		
		
		
		
		String tx_id = "9999988889999";
		String store_cd = "LQ201803290000010014";
		String store_key = "d41c3c6999ec4ea6";
		String price = total_price;
		String str = tx_id.concat(store_cd).concat(store_key).concat(price);
		String enc_data = "";
		// SHA-256
		try {

			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			byte[] hash = digest.digest(str.getBytes("UTF-8"));
			StringBuffer hexString = new StringBuffer();

			for (int i = 0; i < hash.length; i++) {
				String hex = Integer.toHexString(0xff & hash[i]);
				if (hex.length() == 1)
					hexString.append('0');
				hexString.append(hex);
			}

			// 출력
			enc_data = hexString.toString();

		} catch (Exception ex) {
			throw new RuntimeException(ex);
		}
		System.out.println(enc_data);
		String product_nm = encProduct_name;
		String cell_phone_no = user_id;
		String return_url = "http://49.50.164.96:8080/order/confirm/" + user_id;
		String cancel_url = "http://54.180.94.83/payment/fail";
		URI redirectUri = new URI("http://stg.paymint.co.kr:9000/api/payWaySelect?tx_id=" + tx_id + "&store_cd="
				+ store_cd + "&price=" + price + "&product_nm=" + product_name + "&cell_phone_no=" + cell_phone_no
				+ "&enc_data=" + enc_data + "&return_url=" + return_url + "&cancel_url=" + cancel_url);
		HttpHeaders httpHeaders = new HttpHeaders();
		httpHeaders.setContentType(MediaType.APPLICATION_JSON_UTF8);
		httpHeaders.setLocation(redirectUri);
		System.out.println(httpHeaders);

		return new ResponseEntity<>(httpHeaders, HttpStatus.SEE_OTHER);

	}

	@RequestMapping(value = "/confirm/{user_id}", method = RequestMethod.GET)
	public String OrderConfirm(Model model, @RequestParam Map map, HttpSession session, @PathVariable String user_id) throws JsonParseException, JsonMappingException, IOException
	{
		//주문내역 조회
		
		map.put("user_id", user_id);

		List<Map> orderList = orderService.selectOrder(map);
		List<Map> orderDetailList = orderService.selectOrderDetail(map);
		model.addAttribute("orderList", orderList);
		model.addAttribute("orderDetailList", orderDetailList);
		System.out.println(orderDetailList);
		
		
		
		
		// 정상결제 확인 요청
		String data = (String) map.get("LINQ_DATA");
		System.out.println("data : "+data);
		ObjectMapper mapper = new ObjectMapper();
		Map<String, String> map2 = mapper.readValue(data, Map.class);
		// String resultMessage = (String) data.get("result_msg");
		// model.addAttribute("resultMessage", resultMessage);
		String store_key = "d41c3c6999ec4ea6";
		String tx_id = (String) map2.get("tx_id");
		String store_cd = (String) map2.get("store_cd");
		String linq_appr_no = (String) map2.get("linq_appr_no");
		String price = (String) map2.get("price");
		String result_msg = (String)map2.get("result_msg");
		String cell_phone_no = (String)map2.get("cell_phone_no");
	
		String str = "";
		String enc_str = tx_id+store_cd+store_key+linq_appr_no+price;
		str.concat(tx_id).concat(store_cd).concat(store_key).concat(linq_appr_no).concat(price);
		String enc_data = "";
		// SHA-256
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			byte[] hash = digest.digest(enc_str.getBytes("UTF-8"));
			StringBuffer hexString = new StringBuffer();
			for (int i = 0; i < hash.length; i++) {
				String hex = Integer.toHexString(0xff & hash[i]);
				if (hex.length() == 1)
					hexString.append('0');
				hexString.append(hex);
			}
			// enc_data 생
			enc_data = hexString.toString();
		} catch (Exception ex) {
			throw new RuntimeException(ex);
		}
		// add additional parameter for 정상결제확인응
		map2.put("store_key", store_key);
		map2.put("enc_data", enc_data);
		System.out.println("map2 data : "+map2);
		// request url
		String url = "http://stg.paymint.co.kr:9200/api/order/fixed";
		// create an instance of RestTemplate
		RestTemplate restTemplate = new RestTemplate();
		// create headers
		HttpHeaders headers = new HttpHeaders();
		// set `content-type` header
		headers.setContentType(MediaType.APPLICATION_JSON);
		// set `accept` header
		// build the request
		HttpEntity<Map<String, String>> entity = new HttpEntity<>(map2, headers);
		// send POST request
		ResponseEntity<String> response = restTemplate.postForEntity(url, entity, String.class);
		
		
		String a = response.getBody();
		System.out.println(a);
		
		model.addAttribute("response", a);
		model.addAttribute("tx_id", tx_id);
		model.addAttribute("store_cd", store_cd);
		model.addAttribute("linq_appr_no", linq_appr_no);
		model.addAttribute("price", price);
		model.addAttribute("result_msg",result_msg);
		model.addAttribute("cell_phone_no",cell_phone_no);
		// check response
		if (response.getStatusCode() == HttpStatus.CREATED) {
			return "order/ordercomplete";
		} else {
			return "order/orderfail";
		}
	}
	
	@RequestMapping(value = "/cancel/{user_id}", method = RequestMethod.GET)
	public String OrderCancel(Model model, @RequestParam Map map, HttpSession session, @PathVariable String user_id) throws JsonParseException, JsonMappingException, IOException
	{
		Map<String, String> map2 = map;
		String store_key = "d41c3c6999ec4ea6";
		String tx_id = (String) map.get("tx_id");
		String store_cd = (String) map.get("store_cd");
		String linq_appr_no = (String) map.get("linq_appr_no");
		
		String str = "";
		String enc_str = tx_id+store_cd+store_key+linq_appr_no;
		str.concat(tx_id).concat(store_cd).concat(store_key).concat(linq_appr_no);
		String enc_data = "";
		// SHA-256
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			byte[] hash = digest.digest(enc_str.getBytes("UTF-8"));
			StringBuffer hexString = new StringBuffer();
			for (int i = 0; i < hash.length; i++) {
				String hex = Integer.toHexString(0xff & hash[i]);
				if (hex.length() == 1)
					hexString.append('0');
				hexString.append(hex);
			}
			// enc_data생성    
			enc_data = hexString.toString();
		} catch (Exception ex) {
			throw new RuntimeException(ex);
		}
		
		map2.put("enc_data",enc_data);
		
	
		
		System.out.println("map2 data : "+map2);
		// request url
		String url = "http://stg.paymint.co.kr:9200/api/order/cancel";
		// create an instance of RestTemplate
		RestTemplate restTemplate = new RestTemplate();
		// create headers
		HttpHeaders headers = new HttpHeaders();
		// set `content-type` header
		headers.setContentType(MediaType.APPLICATION_JSON);
		// set `accept` header
		// build the request
		HttpEntity<Map<String, String>> entity = new HttpEntity<>(map2, headers);
		// send POST request
		ResponseEntity<String> response = restTemplate.postForEntity(url, entity, String.class);
		
		
		String a = response.getBody();
		System.out.println(a);
		
		model.addAttribute("response", a);
		model.addAttribute("tx_id", tx_id);
		model.addAttribute("store_cd", store_cd);
		model.addAttribute("linq_appr_no", linq_appr_no);

		return "order/ordercancel";
	}


}
