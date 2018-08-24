package com.decoblog.www.blog.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.decoblog.www.blog.dao.BlogRepository;
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
}
