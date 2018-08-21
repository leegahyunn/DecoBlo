package com.decoblog.www.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.decoblog.www.user.dao.UserRepository;

@Controller
public class UserController {
	@Autowired
	UserRepository userRepository;
}
