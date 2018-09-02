package com.decoblog.www.blog.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.decoblog.www.blog.dao.BlogRepository;
import com.decoblog.www.blog.vo.Block;
import com.decoblog.www.blog.vo.BlockTemplate;
import com.decoblog.www.blog.vo.Menu;

@Controller
public class BlogController {
	@Autowired
	BlogRepository blogRepository;
	
	/**
	 * 블로그 수정 페이지로 이동
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/config", method = RequestMethod.GET)
	public String config() {		
		return "blog/config";
	}
	
	/**
	 * 메뉴 수정 Ajax
	 * DB에 저장된 메뉴를 가져와서 JSP에 넘겨줌
	 * @param model Ques.Ajax에서 model 써야 하나요?
	 * @return ArrayList<HashMap<String, ArrayList<Menu>>> JSON
	 */
	@ResponseBody
	@RequestMapping(value = "/menuConfig", method = RequestMethod.POST)
	public ArrayList<Menu> menuConfig(Model model) {
		ArrayList<HashMap<String, ArrayList<Menu>>> list= blogRepository.selectMenu();
		System.out.println(list);
		System.out.println(list.get(0).get("Menu").get(0));
		
		return list.get(0).get("Menu");
	}
	
	@ResponseBody
	@RequestMapping(value="getThumnail",method=RequestMethod.POST)
	public List<Integer> getThumnail(String tmpType) {
		List<Integer> blockNoList = blogRepository.selectThumnail(tmpType);
		return blockNoList;
	}
	
	@ResponseBody
	@RequestMapping(value="getBlockContent",method=RequestMethod.POST)
	public String getBlockContent(int blockTmpNo) {
		String blockContent = blogRepository.selectBlockContent(blockTmpNo);
		try {
			blockContent = URLEncoder.encode(blockContent, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return blockContent;
	}
	
	@RequestMapping(value = "/yrtest", method = RequestMethod.GET)
	public String yrtest(Menu menu,Model model) {
		menu.setMenuNo(1);
		menu.setMenuUserNo(1);
		List<Block> blockList = blogRepository.selectBlockList(menu);
		model.addAttribute("blockList", blockList);
		return "blog/blogEdit1";
	}
	
	@RequestMapping(value="setBlockContent",method=RequestMethod.POST)
	public @ResponseBody String setBlockContent(@RequestBody Block block) {
		int blockSeq = block.getBlockSeq();
		blogRepository.updateBlockSeq(blockSeq);
		blogRepository.insertBlock(block);
		return "redirect:yrtest";
	}
	
	@RequestMapping(value="deleteBlock",method=RequestMethod.POST)
	public String deleteBlock(int blockSeq) {
		return "redirect:yrtest";
	}
}
