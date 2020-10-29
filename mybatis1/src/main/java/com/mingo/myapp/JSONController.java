package com.mingo.myapp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mingo.myapp.VO.ProductVO;

@Controller
public class JSONController {
	@RequestMapping("doJSON")
	public @ResponseBody ProductVO doJSON() {
			ProductVO product = new ProductVO("test", 5000);
			return product;
	}

}
