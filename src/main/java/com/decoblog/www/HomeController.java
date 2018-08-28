package com.decoblog.www;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	/**************************************/
	/* 메인 컨트롤러; 수정하지 말아주세요 */
	/**************************************/
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
	
	
	/**************************************/
	/* 테스트 컨트롤러; 테스트는 여기서 ! */
	/**************************************/
	// 박치현
	@RequestMapping(value = "/chtest", method = RequestMethod.GET)
	public String chtest() {
		return "user/pop_login";
	}
	
	// 이가현
	@RequestMapping(value = "/ghtest", method = RequestMethod.GET)
	public String ghtest() {
		return "common/noticeWrite";
	}
	
	// 최용락
	@RequestMapping(value = "/yrtest", method = RequestMethod.GET)
	public String yrtest() {
		return "blog/blogEdit1";
	}
	
	// 안정민
	@RequestMapping(value = "/jmtest", method = RequestMethod.GET)
	public String jmtest() {
		return "blog/test";
	}
	
	// 이준호
	@RequestMapping(value = "/jhtest", method = RequestMethod.GET)
	public String jhtest() {
		return "blog/test";
	}
	
	
	
	@RequestMapping(value="/test2",method=RequestMethod.GET)
	public String test2() {
		return "blog/blockConfig";
	}

	@RequestMapping(value="/titleTest1",method=RequestMethod.GET)
	public String titleTest1() {
		return "templates/title/titleTest1";
	}

}
