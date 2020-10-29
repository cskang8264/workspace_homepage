package com.mingo.myapp.Controller;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mingo.myapp.DAO.MenuDAO;
import com.mingo.myapp.Service.MenuService;
import com.mingo.myapp.VO.ProductVO;

@Controller
public class MenuController {
	
		@Autowired
		MenuService menuService;
		private static final Logger Logger = LoggerFactory.getLogger(MenuController.class);
		

		@RequestMapping(value = "menu", method = RequestMethod.GET)
		public String smartStoreMenu(Model model, @RequestParam Map map, HttpSession session) {
			String manager_id = (String) session.getAttribute("manager_id");
			List <Map> menuList = menuService.selectMenu(map);
			model.addAttribute("menuList", menuList );
			return "menuList";
			
		}


}
