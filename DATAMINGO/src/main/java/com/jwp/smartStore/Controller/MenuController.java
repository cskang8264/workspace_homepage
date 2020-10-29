package com.jwp.smartStore.Controller;

import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jwp.smartStore.Service.MenuService;

@Controller
public class MenuController {


	@Autowired
	MenuService menuService;
	private static final Logger Logger = LoggerFactory.getLogger(MenuController.class);

	@RequestMapping(value = "menu", method = RequestMethod.GET)
	public String smartStoreMenu(Model model, @RequestParam Map map, HttpSession session) {

		List<Map> menuList = menuService.selectMenu(map);
		model.addAttribute("menuList", menuList);

		return "menu/menuList";

	}
	@RequestMapping(value = "/orderconfirm", method = RequestMethod.GET)
	public String orderconfirm(Model model, @RequestParam Map map, HttpSession session) {
		

		return "menu/orderconfirm";

	}

	@RequestMapping(value = "menu/order", method = RequestMethod.GET)
	public ResponseEntity<Object> exRedirect5(@RequestParam Map map) throws URISyntaxException {
		// manager_id transation ID는 뭘로?
		//
		String user_id = (String) map.get("user_id");
		String total_price = (String) map.get("total_price");
		String manager_id = (String) map.get("manager_id");
		String product_count = (String) map.get("product_count");
		String product_name = (String) map.get("product_name");
		String encProduct_name = URLEncoder.encode("utf-8");
		System.out.println(product_count);
		System.out.println(product_name);
		System.out.println("herehere");
		System.out.println(user_id);
		System.out.println(total_price);
		System.out.println(manager_id);
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
		String return_url = "http://49.50.164.96:8080/order/confirm/"+user_id;
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
	
	


}
