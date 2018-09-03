package com.decoblog.www.user.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.decoblog.www.user.dao.Encrypt;
import com.decoblog.www.user.dao.UserRepository;
import com.decoblog.www.user.vo.User;

@Controller
public class UserController {
	@Autowired
	UserRepository userRepository;
	
	Encrypt encrypt = new Encrypt();
	
	/**
	 * 로그인 Ajax
	 * @param user JSP에서 입력된 User 정보
	 * @param session HttpSession
	 * @return 로그인 성공 시 true, 실패 시 false 반환
	 */
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public @ResponseBody String login(@RequestBody User user, HttpSession session) {
		user.setUserPassword(encrypt.encode(user.getUserPassword()));
		
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
		user.setUserNickName(user.getUserName());
		user.setUserPassword(encrypt.encode(user.getUserPassword()));
		userRepository.create(user);
		return "redirect:/";
	}
	
	/**
	 * 이메일 확인
	 * @param userEmail
	 * @param key
	 * @return
	 */
	@RequestMapping(value="/user/emailConfirm", method=RequestMethod.GET)
	public String emailConfirm(String userEmail, String key, 
			RedirectAttributes redirectAttributes) {
		int result = userRepository.emailConfirm(userEmail, key);
		redirectAttributes.addFlashAttribute("type", "emailConfirm");
		redirectAttributes.addFlashAttribute("isAuthed", result);
		System.out.println(result);
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
	
	/**
	 * 비밀번호 변경
	 * @return
	 */
	@RequestMapping(value="/user/changePassword", method=RequestMethod.POST)
	public @ResponseBody String changePassword(String currentPassword, 
			String newPassword, HttpSession session) {

		HashMap<String, String> passwords = new HashMap<>();
		passwords.put("userNo", String.valueOf(session.getAttribute("loginNo")));
		passwords.put("currentPassword", encrypt.encode(currentPassword));
		passwords.put("newPassword", encrypt.encode(newPassword));
		
		int result = userRepository.changePassword(passwords);
		
		if (result > 0) {
			session.invalidate();
			return "Success";
		} else {
			return "Failed";
		}
	}
	
	/** 
	 * 로그아웃
	 * @return
	 */
	@RequestMapping(value="/user/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	/**
	 * 비밀번호 찾기
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/user/password_reset", method=RequestMethod.GET)
	public String passwordReset(HttpSession session) {
		return "user/reset_password";
	}
	
	
}
