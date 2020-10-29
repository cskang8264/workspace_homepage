package com.jwp.smartStore.Controller;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonArray;
import com.jwp.smartStore.Service.ChartService;

@Controller
public class ChartController {

	@Autowired
	ChartService chartService;

	@RequestMapping(value = "chart", method = RequestMethod.GET)
	public String chart(Model model, @RequestParam Map map, HttpSession session) {

		map.put("emo", "happy");

		List<Map> orderCountYear = chartService.selectOrderYear(map);
		List<Map> orderCount = chartService.orderCountByManagerId(map);
		List<Map> accOrderCouunt = chartService.accuOrderCountByManagerId(map);
		List<Map> orderCountByMenu = chartService.orderCountByMenu(map);
		List<Map> orderCountByTime = chartService.orderCountByTime(map);
		List<Map> EnterEmoProbByTime = chartService.getEnterEmoProbByTime(map);
		List<Map> OutEmoProbByTime = chartService.getOutEmoProbByTime(map);
		List<Map> CountByAge = chartService.CountByAge(map);
		List<Map> TargetValue = chartService.getTargetValue(map);
		List<Map> OrderCountWeek = chartService.getOrderCountWeek(map);
		List<Map> UsersByDate = chartService.getUsersByDate(map);
		List<Map> NewUserByDate = chartService.getNewUsersByDate(map);
		List<Map> adCountByManager = chartService.getAdCountByManger(map);

		model.addAttribute("orderCountYear", orderCountYear);
		model.addAttribute("orderCount", orderCount);
		model.addAttribute("accOrderCouunt", accOrderCouunt);
		model.addAttribute("orderCountByMenu", orderCountByMenu);
		model.addAttribute("orderCountByTime", orderCountByTime);
		model.addAttribute("EnterEmoProbByTime", EnterEmoProbByTime);
		model.addAttribute("OutEmoProbByTime", OutEmoProbByTime);
		model.addAttribute("CountByAge", CountByAge);
		model.addAttribute("TargetValue", TargetValue);
		model.addAttribute("OrderCountWeek", OrderCountWeek);
		model.addAttribute("UsersByDate", UsersByDate);
		model.addAttribute("NewUserByDate", NewUserByDate);
		model.addAttribute("adCountByManager", adCountByManager);

		return "datamingo/chart";

	}

	@RequestMapping(value = "emochart", method = RequestMethod.GET)

	public String emoChart(Model model, @RequestParam Map map, HttpSession session) {

		List<Map> EnterEmoProbByTime = chartService.getEnterEmoProbByTime(map);
		List<Map> OutEmoProbByTime = chartService.getOutEmoProbByTime(map);

		model.addAttribute("EnterEmoProbByTime", EnterEmoProbByTime);
		model.addAttribute("OutEmoProbByTime", OutEmoProbByTime);

		return "datamingo/emodata";

	}

	@RequestMapping(value = "rating", method = RequestMethod.GET)

	public String rating(Model model, @RequestParam Map map, HttpSession session) {
		int limitation = 5;
		if (map.get("limitation") != null) {
			model.addAttribute("limitation", map.get("limitation"));
			String limitation_str = (String) map.get("limitation");
			limitation = Integer.parseInt(limitation_str);
		} else {
			map.put("limitation", limitation);
			model.addAttribute("limitation", limitation);
		}
		String pageNo_str = (String) (map.get("pageNo") != null ? map.get("pageNo") : "1");
		int pageNo = Integer.parseInt(pageNo_str);
		model.addAttribute("pageNo", pageNo);
		int startNo = (pageNo - 1) * limitation;
		map.put("startNo", startNo);
		int totalCnt = chartService.selectRowCount();
		model.addAttribute("totalCnt", totalCnt);
		int totalPage = totalCnt / limitation;
		totalPage++;
		model.addAttribute("totalPage", totalPage);
		int startPage = (((pageNo - 1) / 10) * 10) + 1;
		model.addAttribute("startPage", startPage);
		int endPage;
		if ((startPage + 9) > totalPage) {
			endPage = totalPage;
		} else {
			endPage = startPage + 9;
		}
		model.addAttribute("endPage", endPage);
		// 게시판 페이지네이션 종료

		List<Map> menuRatingbytime = chartService.getRatingWithMenu(map);
		List<Map> RatingbyMenu = chartService.getRatingbyMenu(map);

		model.addAttribute("menuRatingbytime", menuRatingbytime);
		model.addAttribute("RatingbyMenu", RatingbyMenu);


		return "datamingo/rating";

	}

}
