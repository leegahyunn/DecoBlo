package com.decoblog.www.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	/**
	 * 로그인 Ajax
	 * @param user JSP에서 입력된 User 정보
	 * @param session HttpSession
	 * @return 로그인 성공 시 true, 실패 시 false 반환
	 */
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
	
	/**
	 * 회원가입 페이지 이동
	 * @return 회원가입 페이지
	 */
	@RequestMapping(value="/user/join", method=RequestMethod.GET)
	public String join() {
		return "user/join";
	}
	
	/**
	 * 회원가입
	 * @return 메인
	 */
	@RequestMapping(value="/user/join", method=RequestMethod.POST)
	public String joinPost(User user) {
		user.setBlogTitle(user.getUserName() + "님의 블로그");
		user.setBlogAddress(user.getUserEmail().split("@")[0]);
		System.out.println(user);
		userRepository.create(user);
		return "redirect:/";
	}
	
	@RequestMapping(value="/user/emailConfirm", method=RequestMethod.GET)
	public String emailConfirm(String userEmail, String key) {
		userRepository.emailConfirm(userEmail, key);
		return "redirect:/";
	}
	
	/**
	 * User Profile 페이지로 이동
	 * @return profile 페이지
	 */
	@RequestMapping(value="/user/profile", method=RequestMethod.GET)
	public String userProfilePage() {
		return "user/profile";
	}
	
	/**
	 * User Profile 가져오기
	 * @param session 세션 (유저 번호를 가져오기 위함)
	 * @return User Profile
	 */
	@RequestMapping(value="/user/profile", method=RequestMethod.POST)
	public @ResponseBody User userProfile(HttpSession session) {
		String userNo = String.valueOf(session.getAttribute("loginNo"));
		User userProfile = userRepository.getProfile(userNo);
		return userProfile;
	}
	
}
