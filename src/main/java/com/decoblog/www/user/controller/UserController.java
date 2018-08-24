package com.decoblog.www.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.decoblog.www.user.dao.UserRepository;
import com.decoblog.www.user.vo.User;

@Controller
public class UserController {
	@Autowired
	UserRepository userRepository;
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public @ResponseBody String login(@RequestBody User user, HttpSession session) {
		
		User loggedUser = userRepository.login(user);
		
		if (loggedUser != null) {
			session.setAttribute("loginNo", loggedUser.getUserNo());
			session.setAttribute("loginEmail", loggedUser.getUserEmail());
			session.setAttribute("loginName", loggedUser.getUserName());
			return "true";
		} else {
			return "false";
		}
	}
}
