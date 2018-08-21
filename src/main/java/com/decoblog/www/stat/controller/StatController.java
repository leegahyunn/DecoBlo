package com.decoblog.www.stat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.decoblog.www.stat.dao.StatRepository;

@Controller
public class StatController {
	@Autowired
	StatRepository statRepository;
}
