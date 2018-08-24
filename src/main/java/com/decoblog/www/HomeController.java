package com.decoblog.www;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "index";
	}
	
	@RequestMapping(value = "/customer", method = RequestMethod.GET)
	public String customer() {
		return "common/customer";
	}
	
	
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {
		return "common/main";
	}
	
	
	@RequestMapping(value = "/config", method = RequestMethod.GET)
	public String config() {
		return "blog/config";
	}
	
	
	
	/*
	 * Test
	 */
	@RequestMapping(value = "/chtest", method = RequestMethod.GET)
	public String chtest() {
		return "templates/1/index";
		return "user/pop_login";
	}

<<<<<<< HEAD
=======
	
>>>>>>> 16995e9a39e7851b099158eb3b828829ac6517f3
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String view() {
		return "common/dashboard";
	}
	@RequestMapping(value = "/view2", method = RequestMethod.GET)
	public String view2(){
			return "common/main";
		
		
	}

	@RequestMapping(value = "/metaEdit", method = RequestMethod.GET)
	public String idCheck() {
		return "blog/metaEdit";
	}
	
	@RequestMapping(value = "/yrtest", method = RequestMethod.GET)
	public String yrtest() {
		return "blog/blogEdit1";
	}
	
	@RequestMapping(value = "/test1", method = RequestMethod.GET)
	public String test1() {
		return "blog/test";
	}
	@RequestMapping(value = "/test2", method = RequestMethod.GET)
	
	@RequestMapping(value="/test2",method=RequestMethod.GET)
	public String test2() {
		return "blog/blockConfig";
	}
<<<<<<< HEAD

=======
	@RequestMapping(value="/titleTest1",method=RequestMethod.GET)
	public String titleTest1() {
		return "templates/title/titleTest1";
	}
>>>>>>> 16995e9a39e7851b099158eb3b828829ac6517f3
}
