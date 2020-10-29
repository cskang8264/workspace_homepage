
package com.jwp.smartStore.Controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.Iterator;
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
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonArray;
import com.jwp.smartStore.Service.BoardService;
import com.jwp.smartStore.Service.ChartService;

@Controller
public class BoardController {

	@Autowired
	BoardService boardService;

	@RequestMapping(value = "board", method = RequestMethod.GET)
	public String boardList(Model model, @RequestParam Map map, HttpSession session) {
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
		int totalCnt = boardService.selectRowCount();
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
		
	 List<Map> boardList = boardService.selectBoardList(map);
	 
	 model.addAttribute("boardList", boardList);

		return "datamingo/board";

	}
	
	@RequestMapping(value = "admin/boardlist", method = RequestMethod.GET)
	public String boardListforAdmin(Model model, @RequestParam Map map, HttpSession session) {
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
		int totalCnt = boardService.selectRowCount();
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
		
	 List<Map> boardList = boardService.selectBoardList(map);
	 
	 model.addAttribute("boardList", boardList);

		return "datamingo/amdinboard";

	}
	
	
	@RequestMapping(value = "noticeform", method = RequestMethod.GET)
	public String boardfrom(Model model, @RequestParam Map map, HttpSession session) {

		return "datamingo/boardForm";

	}
	
	@RequestMapping(value = "noticeRegistration", method = RequestMethod.POST)
	public String boardRegistration(Model model, @RequestParam Map map, HttpSession session) {
		
		boardService.insertBoard(map);
		
		
		return "redirect:board";

	}
	
	@RequestMapping(value = "noticeupdate/{board_id}", method = RequestMethod.POST)
	public String updateboard(Model model, @RequestParam Map map, HttpSession session,@PathVariable String board_id) {
		System.out.println(map);
		map.put("board_id", board_id);
		boardService.updateBoardById(map);
		
		
		return "redirect:/admin/boardlist";

	}
	
	@RequestMapping(value = "deleteBoard/{board_id}", method = RequestMethod.GET)
	public String deleteBoard(Model model, @RequestParam Map map, HttpSession session ,@PathVariable String board_id) {
		int intboard_id = Integer.parseInt(board_id);
		map.put("board_id", intboard_id);
		boardService.deleteBoard(map);
		
		
		return "redirect:/admin/boardlist";

	}
	
	@RequestMapping(value = "updateBoard/{board_id}", method = RequestMethod.GET)
	public String updateBoard(Model model, @RequestParam Map map, HttpSession session ,@PathVariable String board_id) {
		map.put("board_id", board_id);
		List<Map> SelectedBoardbyId= boardService.getSelectedBoardbyId(map);
		model.addAttribute("SelectedBoardbyId",SelectedBoardbyId);
		
		
		return "datamingo/boardUpdateForm";

	}
 
 

	


}
