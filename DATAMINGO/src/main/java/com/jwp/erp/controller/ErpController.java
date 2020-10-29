package com.jwp.erp.controller;

import java.io.BufferedReader;
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
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;
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
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.jwp.erp.service.ErpService;
//import com.jwp.csv.service.CsvService;
//import com.jwp.ruby.service.RubyService;
//import com.opencsv.CSVReader;

@Controller
public class ErpController {
		
	@Value("${file.upload.path}")
	private String fileUploadPath;

	@Autowired
	ErpService erpService;
	

	

	@RequestMapping(value = "/erp/front", method = RequestMethod.GET)
	public String ErpFront(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		session.setAttribute("going","/erp/front");
		if(session.getAttribute("admin")==null) {
			return "redirect:/admin/login";
		} else {
			return "erp_front/erp_front";
		}
	}           

	@RequestMapping(value = "/erp/web/product", method = RequestMethod.GET)
	public String ErpWebProduct(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		
		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);

		int limitation = 20;
		if(!(map.get("limitation")==null)) {
			String limitation_str = (String) map.get("limitation");
			limitation = Integer.parseInt(limitation_str);			
		}
		map.put("limitation",limitation);
		
		List<Map> product = erpService.selectProduct(map);
		model.addAttribute("product", product);
		
		List<Map> category_a = erpService.selectCategoryA(map);
		model.addAttribute("category_a", category_a);
		
		List<Map> category_b = erpService.selectCategoryB(map);
		model.addAttribute("category_b", category_b);
		
		List<Map> category_c = erpService.selectCategoryC(map);
		model.addAttribute("category_c", category_c);
		
		return "erp_web/erp_web_product";
	}     
	
	@RequestMapping(value = "/erp/web/product/insert", method = RequestMethod.GET)
	public String ErpProductInputProcessInsert(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		
		String direct = (String) map.get("direct");
		model.addAttribute("forward_url", direct);				

		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);
		
    	if(map.get("product_no")==""||map.get("purchase_cost")==""||map.get("sales_price")=="") {
			model.addAttribute("flag", "fail");
			return "alert/alert";
    	}
				
    	//int countProductResult = csvService.countProduct(map); 
    	int updateOneProductResult = 0;
    	int insertOneProductResult = 0;
    	
//    	if(countProductResult>0) {
//    		updateOneProductResult = erpService.updateOneProduct(map);        	        	
//    	} else {
//    		insertOneProductResult = erpService.insertOneProduct(map);
//    	}
//    	
		if(updateOneProductResult>0||insertOneProductResult>0) {
			model.addAttribute("flag", "success");
		} else {
			model.addAttribute("flag", "fail");
		}

		return "alert/alert";
	}     
	
	@RequestMapping(value = "/erp/web/product/delete", method = RequestMethod.POST)
	@ResponseBody
	public String ErpWebProductDelete(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		
		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);

		String direct = (String) map.get("direct");
		String product_pk_str = (String) map.get("product_pk");
		String product_no = (String) map.get("product_no");
		
		int product_pk = Integer.parseInt(product_pk_str);
		map.put("product_pk", product_pk);
		map.put("product_no", product_no);
		
		int deleteOneProductResult = erpService.deleteOneProduct(map);
		int deleteSalesByProductResult = erpService.deleteSalesByProduct(map);
		int deletePurchaseByProductResult = erpService.deletePurchaseByProduct(map);
			
		if(deleteOneProductResult>0) {
			return "success";
		} else {
			return "fail";
		}
	}

	
	
	
	
	
	
	
	@RequestMapping(value = "/erp/web/product", method = RequestMethod.POST, params="update")
	@ResponseBody
	public String ErpWebProductUpdate(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		
		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);
		
		int updateOneProductResult = erpService.updateOneProduct(map);
		
		String product_no = (String) map.get("product_no");
		String updated_no = (String) map.get("updated_no");
		System.out.println("here : "+product_no.equals(updated_no));
		if(!product_no.equals(updated_no)) {
			int updateOnePurchaseResult = erpService.updateOnePurchase(map);
			int updateOneSalesResult = erpService.updateOneSales(map);
		}
		          
		if(updateOneProductResult>0) {
			return "success";
		} else {
			return "fail";
		}
	}

	@RequestMapping(value = "/erp/web/product", method = RequestMethod.POST, params="category_b")
	public String ErpWebProductCategoryB(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);
		
		List<Map> category_b = erpService.selectCategoryB(map);
		model.addAttribute("category_b", category_b);
 		
		return "erp_web/result_category_b";
	}

	@RequestMapping(value = "/erp/web/product", method = RequestMethod.POST, params="category_c")
	public String ErpWebProductCategoryC(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);
		
		List<Map> category_c = erpService.selectCategoryC(map);
		model.addAttribute("category_c", category_c);
 		
		return "erp_web/result_category_c";
	}

	@RequestMapping(value = "/erp/csv/product", method = RequestMethod.GET)
	public String ErpCsv(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		
		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);

		int limitation = 20;
		if(!(map.get("limitation")==null)) {
			limitation = (int) map.get("limitation");
		}
		map.put("limitation",limitation);
		
		List<Map> product = erpService.selectProduct(map);
		model.addAttribute("product", product);
		
		return "erp_csv/erp_csv_product";
	}     
	
	@RequestMapping(value = "/erp/web/sales", method = RequestMethod.GET)
	public String ErpWebSales(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		
		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);

		int limitation = 5;
		if(!(map.get("limitation")==null)) {
			limitation = (int) map.get("limitation");
		}
		map.put("limitation",limitation);
		
		List<Map> sales = erpService.selectSales(map);
		model.addAttribute("sales", sales);
		
		return "erp_web/erp_web_sales";
	}     
	
	@RequestMapping(value = "/erp/web/sales/insert", method = RequestMethod.GET)
	public String ErpWebSalesInsert(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		
		String direct = (String) map.get("direct");
		model.addAttribute("forward_url", direct);				

		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);
		
    	if(map.get("product_no")==""||map.get("sales_price")==""||map.get("sales_cnt")=="") {
			model.addAttribute("flag", "fail");
			return "alert/alert";
    	}
		    	
	//	int countProductResult = csvService.countProduct(map); 
    	int insertOneSalesResult = 0;
    	int updateProductCntResult = 0;
//    	
//    	if(countProductResult>0) {
//    		insertOneSalesResult = erpService.insertOneSales(map);
//    		updateProductCntResult = erpService.updateProductCnt(map);
//    	} else {
//    	}
//    	
//		if(countProductResult>0||insertOneSalesResult>0) {
//			model.addAttribute("flag", "success");
//		} else {
//			model.addAttribute("flag", "fail");
//		}

		return "alert/alert";
	}     

	@RequestMapping(value = "/erp/web/sales/delete", method = RequestMethod.GET)
	public String ErpSalesInputProcessDelete(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		
		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);

		String direct = (String) map.get("direct");
		String sales_pk_str = (String) map.get("sales_pk");
		String sales_cnt_str = (String) map.get("sales_cnt");
		
		int sales_pk = Integer.parseInt(sales_pk_str);
		int sales_cnt = Integer.parseInt(sales_cnt_str);

		map.put("sales_pk", sales_pk);
		map.put("change_cnt", sales_cnt);	
		
		int deleteOneSalesResult = erpService.deleteOneSales(map);
		int updateProductCntResult = erpService.updateProductCnt(map);
		if(deleteOneSalesResult>0) {
			model.addAttribute("flag", "success");
		} else {
			model.addAttribute("flag", "fail");
		}
		model.addAttribute("forward_url", direct);				
		return "alert/alert";
	}     
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/erp/web/purchase", method = RequestMethod.GET)
	public String ErpWebPurchase(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		
		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);

		int limitation = 20;
		if(!(map.get("limitation")==null)) {
			limitation = (int) map.get("limitation");
		}
		map.put("limitation",limitation);
		
		List<Map> purchase = erpService.selectPurchase(map);
		model.addAttribute("purchase", purchase);
		
		return "erp_web/erp_web_purchase";
	}     
	
	@RequestMapping(value = "/erp/web/purchase/insert", method = RequestMethod.GET)
	public String ErpWebPurchaseInsert(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		
		String direct = (String) map.get("direct");
		model.addAttribute("forward_url", direct);				

		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);
		
    	if(map.get("product_no")==""||map.get("purchase_cost")==""||map.get("purchase_cnt")=="") {
			model.addAttribute("flag", "fail");
			return "alert/alert";
    	}

//    	int countProductResult = csvService.countProduct(map); 
    	int insertOnePurchaseResult = 0;
    	int updateProductCntResult = 0;
//    	
//    	if(countProductResult>0) {
//    		insertOnePurchaseResult = erpService.insertOnePurchase(map);
//    		updateProductCntResult = erpService.updateProductCnt(map);
//    	} else {
//    	}
//    	
//		if(countProductResult>0||insertOnePurchaseResult>0) {
//			model.addAttribute("flag", "success");
//		} else {
//			model.addAttribute("flag", "fail");
//		}

		return "alert/alert";
	}     

	@RequestMapping(value = "/erp/web/purchase/delete", method = RequestMethod.GET)
	public String ErpWepPurchaseDelete(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   

		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);
		
		String direct = (String) map.get("direct");
		String purchase_pk_str = (String) map.get("purchase_pk");
		String purchase_cnt_str = (String) map.get("purchase_cnt");
		
		int purchase_pk = Integer.parseInt(purchase_pk_str);
		int purchase_cnt = Integer.parseInt(purchase_cnt_str);
		
		map.put("purchase_pk", purchase_pk);
		map.put("change_cnt", -purchase_cnt);
		
		int deleteOneSalesResult = erpService.deleteOnePurchase(map);
		int updateProductCntResult = erpService.updateProductCnt(map);
		if(deleteOneSalesResult>0 && updateProductCntResult>0) {
			model.addAttribute("flag", "success");
		} else {
			model.addAttribute("flag", "fail");
		}
		model.addAttribute("forward_url", direct);				
		return "alert/alert";
	}     
	
	@RequestMapping(value = {"/erp/web/category","/erp/web/category/a"}, method = RequestMethod.GET)
	public String ErpWebCategory(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		
		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);
		
		int limitation = 20;
		if(!(map.get("limitation")==null)) {
			limitation = (int) map.get("limitation");
		}
		map.put("limitation",limitation);
		
		List<Map> category_a = erpService.selectCategoryA(map);
		model.addAttribute("category_a", category_a);
		
		return "erp_web/erp_web_category_a";
	}     
	
	@RequestMapping(value = {"/erp/web/category","/erp/web/category/a"}, method = RequestMethod.POST, params="insert")
	public String ErpWebCategoryInsert(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		
		String direct = (String) map.get("direct");
		model.addAttribute("forward_url", direct);				

		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);
		
    	if(map.get("category_a_no")=="") {
			model.addAttribute("flag", "fail");
			return "alert/alert";
    	}
				
    	int countCategoryAResult = erpService.countCategoryA(map);   	
    	
		int updateOneCategoryAResult = 0;
		int insertOneCategoryAResult = 0;
    	if(countCategoryAResult>0) {
    		String category_a_no = (String) map.get("category_a_no");
    		map.put("updated_no",category_a_no);
    		updateOneCategoryAResult = erpService.updateOneCategoryA(map);        	        	
    	} else {
    		insertOneCategoryAResult = erpService.insertOneCategoryA(map);
    	}
    	
		if(updateOneCategoryAResult>0||insertOneCategoryAResult>0) {
			model.addAttribute("flag", "success");
		} else {
			model.addAttribute("flag", "fail");
		}

		return "alert/alert";
	}     

	@RequestMapping(value = {"/erp/web/category","/erp/web/category/a"}, method = RequestMethod.POST, params="delete")
	@ResponseBody
	public String ErpWebCategoryADelete(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);
		
		int deleteOneCategoryAResult = erpService.deleteOneCategoryA(map);
			
		if(deleteOneCategoryAResult>0) {
			return "success";
		} else {
			return "fail";
		}
	}
	
	@RequestMapping(value = {"/erp/web/category","/erp/web/category/a"}, method = RequestMethod.POST, params="update")
	@ResponseBody
	public String ErpWebCategoryAUpdate(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);
		
		int updateOneCategoryAResult = erpService.updateOneCategoryA(map);
		int updateOneCategoryBResult = erpService.updateOneCategoryB(map);
		
		String category_a_no = (String) map.get("category_a_no");
		String updated_no = (String) map.get("updated_no");
		if(!category_a_no.equals(updated_no)) {

		}
		
		if(updateOneCategoryAResult>0) {
			return "success";
		} else {
			return "fail";
		}
	}
	@RequestMapping(value = "/erp/web/category/b", method = RequestMethod.GET)
	public String ErpWebCategoryB(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		
		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);
		
		int limitation = 20;
		if(!(map.get("limitation")==null)) {
			limitation = (int) map.get("limitation");
		}
		map.put("limitation",limitation);
		
		List<Map> category_a = erpService.selectCategoryA(map);
		model.addAttribute("category_a", category_a);
		List<Map> category_b = erpService.selectCategoryB(map);
		model.addAttribute("category_b", category_b);
  
		return "erp_web/erp_web_category_b";
	}     
	
	@RequestMapping(value = "/erp/web/category/b", method = RequestMethod.POST, params="insert")
	public String ErpWebCategoryBInsert(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		
		String direct = (String) map.get("direct");
		model.addAttribute("forward_url", direct);				

		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);
		
    	if(map.get("category_b_no")=="") {
			model.addAttribute("flag", "fail");
			return "alert/alert";
    	}
				
    	int countCategoryBResult = erpService.countCategoryB(map);   	
    	
		int updateOneCategoryBResult = 0;
		int insertOneCategoryBResult = 0;
    	if(countCategoryBResult>0) {
    		String category_b_no = (String) map.get("category_b_no");
    		map.put("updated_no",category_b_no);
    		updateOneCategoryBResult = erpService.updateOneCategoryB(map);        	        	
    	} else {
    		insertOneCategoryBResult = erpService.insertOneCategoryB(map);
    	}
    	
		if(updateOneCategoryBResult>0||insertOneCategoryBResult>0) {
			model.addAttribute("flag", "success");
		} else {
			model.addAttribute("flag", "fail");
		}

		return "alert/alert";
	}     

	@RequestMapping(value = "/erp/web/category/b", method = RequestMethod.POST, params="delete")
	@ResponseBody
	public String ErpWebCategoryBDelete(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);
		
		int deleteOneCategoryBResult = erpService.deleteOneCategoryB(map);
			
		if(deleteOneCategoryBResult>0) {
			return "success";
		} else {
			return "fail";
		}
	}

	@RequestMapping(value = "/erp/web/category/b", method = RequestMethod.POST, params="update")
	@ResponseBody
	public String ErpWebCategoryBUpdate(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);
		
		int updateOneCategoryBResult = erpService.updateOneCategoryB(map);
		int updateOneCategoryCResult = erpService.updateOneCategoryC(map);
		
		String category_b_no = (String) map.get("category_b_no");
		String updated_no = (String) map.get("updated_no");
		if(!category_b_no.equals(updated_no)) {

		}
		
		if(updateOneCategoryBResult>0) {
			return "success";
		} else {
			return "fail";
		}
	}

	@RequestMapping(value = "/erp/web/category/c", method = RequestMethod.GET)
	public String ErpWebCategoryC(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		
		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);
		
		int limitation = 20;
		if(!(map.get("limitation")==null)) {
			limitation = (int) map.get("limitation");
		}
		map.put("limitation",limitation);

		List<Map> category_a = erpService.selectCategoryA(map);
		model.addAttribute("category_a", category_a);
		List<Map> category_b = erpService.selectCategoryB(map);
		model.addAttribute("category_b", category_b);
		List<Map> category_c = erpService.selectCategoryC(map);
		model.addAttribute("category_c", category_c);
  
		return "erp_web/erp_web_category_c";
	}     
	
	@RequestMapping(value = "/erp/web/category/c", method = RequestMethod.POST, params="insert")
	public String ErpWebCategoryCInsert(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		
		String direct = (String) map.get("direct");
		model.addAttribute("forward_url", direct);				

		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);
		
    	if(map.get("category_c_no")=="") {
			model.addAttribute("flag", "fail");
			return "alert/alert";
    	}
				
    	int countCategoryCResult = erpService.countCategoryC(map);   	
    	
		int updateOneCategoryCResult = 0;
		int insertOneCategoryCResult = 0;
    	if(countCategoryCResult>0) {
    		String category_c_no = (String) map.get("category_c_no");
    		map.put("updated_no",category_c_no);
    		updateOneCategoryCResult = erpService.updateOneCategoryC(map);        	        	
    	} else {
    		insertOneCategoryCResult = erpService.insertOneCategoryC(map);
    	}
    	
		if(updateOneCategoryCResult>0||insertOneCategoryCResult>0) {
			model.addAttribute("flag", "success");
		} else {
			model.addAttribute("flag", "fail");
		}

		return "alert/alert";
	}     

	@RequestMapping(value = "/erp/web/category/c", method = RequestMethod.POST, params="delete")
	@ResponseBody
	public String ErpWebCategoryCDelete(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);
		
		int deleteOneCategoryCResult = erpService.deleteOneCategoryC(map);
			
		if(deleteOneCategoryCResult>0) {
			return "success";
		} else {
			return "fail";
		}
	}

	@RequestMapping(value = "/erp/web/category/c", method = RequestMethod.POST, params="update")
	@ResponseBody
	public String ErpWebCategoryCUpdate(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);
		
		int updateOneCategoryCResult = erpService.updateOneCategoryC(map);
		
		String category_c_no = (String) map.get("category_c_no");
		String updated_no = (String) map.get("updated_no");
		if(!category_c_no.equals(updated_no)) {

		}
		
		if(updateOneCategoryCResult>0) {
			return "success";
		} else {
			return "fail";
		}
	}
	
	
	@RequestMapping(value = "/erp/web/expect", method = RequestMethod.GET)
	public String ErpWebExpect(Locale locale, Model model, @RequestParam Map map, HttpSession session) {
		if(session.getAttribute("admin")==null) {
			session.setAttribute("going","/erp/front");
			return "redirect:/admin/login";
		}   
		
		String manager_id = (String) session.getAttribute("manager_id");
		map.put("manager_id", manager_id);
		
		return "erp_web/erp_web_expect";
	}     
	
	
	
	
	
	
	
	
	
	
	
	

}	
   




