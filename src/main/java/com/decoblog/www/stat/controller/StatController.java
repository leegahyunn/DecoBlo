package com.decoblog.www.stat.controller;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.decoblog.www.stat.dao.StatRepository;
import com.decoblog.www.stat.vo.Stat;

@Controller
public class StatController {
	@Autowired
	StatRepository statRepository;
	
	/**
	 * Stat 전체 가져오기
	 * Ques. userNo 넘겨줘야 되지 않을까? 
	 * @param model
	 * @return DB에 저장된 Stat
	 */
	@RequestMapping(value="/dashboard", method=RequestMethod.GET)
	public String dashboard(Model model) {
		

		Stat stat = statRepository.selectnowstat();
		
		// Ques. 필요한 애인가요?
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
	  
		model.addAttribute("stat", stat);
		
	    return "common/dashboard";
	}
}
