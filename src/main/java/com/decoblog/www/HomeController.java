package com.decoblog.www;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "blog/blockConfig";
	}
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test() {
		return "blog/menuConfig";
	}
	
	@RequestMapping(value = "/metaEdit", method = RequestMethod.GET)
	public String idCheck() {
		return "blog/metaEdit";
	}
	
}
