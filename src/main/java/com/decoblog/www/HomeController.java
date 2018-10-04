package com.decoblog.www;

import java.text.DateFormat;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.decoblog.www.user.dao.UserRepository;

@Controller
public class HomeController {
	@Autowired
	UserRepository userRepository;
	
	/**************************************/
	/* 메인 컨트롤러; 수정하지 말아주세요 */
	/**************************************/
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpSession session, Model model, Locale locale) {
		
		if (session.getAttribute("loginNo") != null) {
			return "redirect:/main";
		} else {
			int nUser = userRepository.getNUser();
			model.addAttribute("nUser", nUser);
			return "index";
		}
	}
	
	@RequestMapping(value = "/customer", method = RequestMethod.GET)
	public String customer() {
		return "common/customer";
	}

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Model model, HttpSession session) {
		String blogAddress = String.valueOf(session.getAttribute("loginBlogAddress"));
		System.out.println(blogAddress);
		if (blogAddress.equals("")) {
			model.addAttribute("noAddress", "true");
		} else {
			model.addAttribute("noAddress", "false");
		}
		return "common/main";
	}

	@RequestMapping(value = "/view2", method = RequestMethod.GET)
	public String view2(){
			return "common/main";
	}

	/**************************************/
	/* 테스트 컨트롤러; 테스트는 여기서 ! */
	/**************************************/
	// 박치현
	@RequestMapping(value = "/chtest", method = RequestMethod.GET)
	public String chtest() {
		return "templates/template_700";
	}
	
	// 이가현
	@RequestMapping(value = "/ghtest", method = RequestMethod.GET)
	public String ghtest() {

		return "common/notice";
	}
	
	// 안정민
	@RequestMapping(value = "/jmtest", method = RequestMethod.GET)
	public String jmtest() {
		return "templates/template_700";
	}

	// 이준호
	@RequestMapping(value = "/jhtest", method = RequestMethod.GET)
	public String jhtest() {
		return "templates/template_800";
	}
	
	//최용락 
}
