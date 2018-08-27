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
	
	
<<<<<<< HEAD
	@RequestMapping(value = "/config", method = RequestMethod.GET)
	public String config() {
		return "blog/config";
	}
	
	
	

	@RequestMapping(value = "/chtest", method = RequestMethod.GET)
	public String chtest() {
		
		return "user/pop_login";
	}


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
=======
	/**************************************/
	/* 테스트 컨트롤러; 테스트는 여기서 ! */
	/**************************************/
	// 박치현
	@RequestMapping(value = "/chtest", method = RequestMethod.GET)
	public String chtest() {
		return "blog/blockConfig";
	}
	
	// 이가현
	@RequestMapping(value = "/ghtest", method = RequestMethod.GET)
	public String ghtest() {
>>>>>>> 561b93f1eeb6da5b5c435b5c3518de0ad44ed89f
		return "blog/metaEdit";
	}
	
	// 최용락
	@RequestMapping(value = "/yrtest", method = RequestMethod.GET)
	public String yrtest() {
		return "blog/blogEdit1";
	}
	
	@RequestMapping(value = "/test1", method = RequestMethod.GET)
	public String test1() {
	// 안정민
	@RequestMapping(value = "/jmtest", method = RequestMethod.GET)
	public String jmtest() {
		return "blog/test";
	}
<<<<<<< HEAD

@RequestMapping(value="/titleTest1",method=RequestMethod.GET)
=======
	
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
>>>>>>> 561b93f1eeb6da5b5c435b5c3518de0ad44ed89f
	public String titleTest1() {
		return "templates/title/titleTest1";
	}

}
