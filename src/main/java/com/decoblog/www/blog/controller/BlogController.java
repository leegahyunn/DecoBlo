package com.decoblog.www.blog.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.decoblog.www.blog.dao.BlogRepository;
import com.decoblog.www.blog.vo.Menu;
import com.google.gson.Gson;

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
	 * 메뉴 불러오기 Ajax
	 * DB에 저장된 메뉴를 가져와서 JSP에 넘겨줌
	 * @return ArrayList<HashMap<String, ArrayList<Menu>>> JSON
	 */
//	@ResponseBody
//	@RequestMapping(value = "/menuConfig", method = RequestMethod.POST)
//	public ArrayList<Menu> menuConfig() {
//		ArrayList<HashMap<String, ArrayList<Menu>>> list= blogRepository.selectMenu();
//		ArrayList<Menu> menuList = new ArrayList<Menu>();
//		for(int i = 0; i<list.size(); i++) {
//			for(int j = 0; j<list.get(i).get("Menu").size(); j++) {
//				menuList.add(list.get(i).get("Menu").get(j));
//			}
//		}
//		return menuList;
//	}
	@ResponseBody
	@RequestMapping(value = "/menuConfig", method = RequestMethod.POST)
	public String menuConfig() {
		ArrayList<HashMap<String, ArrayList<Menu>>> list= blogRepository.selectMenu();
		Gson gson = new Gson();
		String result = gson.toJson(list);
		return result;
	}
	/**
	 * 메뉴 수정 Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/editMenu", method = RequestMethod.POST)
	public String editMenu(@RequestBody Menu menu) {
		System.out.println(menu); 
		blogRepository.updateMenu(menu);
		return "blog/config";
	}
}
