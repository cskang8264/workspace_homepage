package com.jwp.smartStore.Controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jwp.smartStore.Service.orderClientService;

@Controller
public class OrderClientController {
	
	@Autowired
	orderClientService orderClientService;
	
	@RequestMapping(value = "clientOrderList", method = RequestMethod.GET)
	public String ClientOrderList(Model model, @RequestParam Map map, HttpSession session) {

		
		int limitation = 5;
		if(map.get("limitation")!=null) {
			model.addAttribute("limitation", map.get("limitation"));
			String limitation_str = (String)map.get("limitation");
			limitation = Integer.parseInt(limitation_str);
		} else {
			map.put("limitation", limitation);
			model.addAttribute("limitation", limitation);
		}
		String pageNo_str = (String)(map.get("pageNo") != null ? map.get("pageNo") : "1");
		int pageNo = Integer.parseInt(pageNo_str);
		model.addAttribute("pageNo", pageNo);
	    int startNo = (pageNo - 1) * limitation;
		map.put("startNo", startNo);
		int totalCnt = orderClientService.selectRowCount();
		model.addAttribute("totalCnt", totalCnt);
		int totalPage = totalCnt / limitation;
		totalPage++;
		model.addAttribute("totalPage", totalPage);
		int startPage = (((pageNo-1) / 10) * 10) + 1;
		model.addAttribute("startPage", startPage);
		int endPage;
		if((startPage + 9) > totalPage) {
			endPage = totalPage;
		} else {
			endPage = startPage + 9;
		}
		model.addAttribute("endPage", endPage);
		// 게시판 페이지네이션 종료
	
		List<Map> ClientorderList = orderClientService.ClientOrderList(map);
		
		model.addAttribute("ClientorderList", ClientorderList);

		return "datamingo/clientOrderList";

	}
	
	@RequestMapping(value = "clientOrderList/detail/{tx_id}", method = RequestMethod.GET)
	public String ClientOrderDetail(Model model, @RequestParam Map map, HttpSession session,@PathVariable String tx_id) {
		

		map.put("tx_id", tx_id);
		
		List<Map> ClientorderDetail = orderClientService.ClientOrderDetail(map);
		
		String statusByTxid = orderClientService.selectStatusBytx(map);
		
		
		model.addAttribute("ClientorderDetail", ClientorderDetail);
		
		model.addAttribute("statusByTxid", statusByTxid);

		return "datamingo/clientOrderDetail";

	}


}
