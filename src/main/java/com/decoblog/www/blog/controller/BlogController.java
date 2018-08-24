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
	
	
	@RequestMapping(value = "/config", method = RequestMethod.GET)
	public String config() {		
		return "blog/config";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/menuConfig", method = RequestMethod.POST)
	public ArrayList<Menu> menuConfig(Model model) {
		ArrayList<HashMap<String, ArrayList<Menu>>> list= blogRepository.selectMenu();
		System.out.println(list);
		System.out.println(list.get(0).get("Menu").get(0));
		
		return list.get(0).get("Menu");
	}
}
