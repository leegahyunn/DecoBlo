package com.decoblog.www.stat.controller;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
		
		
		if(statRepository.nowmoth()!=null) {
			Stat mstat = statRepository.nowmoth();
			
			Stat wstat = statRepository.nowweek();
			
			String date1 = mstat.getStatRegDate();
		
		model.addAttribute("mstat", mstat);
		String mmdate = date1.substring(0, 7);
		model.addAttribute("mmdate", mmdate);
		String date2 = wstat.getStatRegDate();
	
		String wwdate = date2.substring(0, 10);
		model.addAttribute("wstat", wstat);
		model.addAttribute("wwdate", wwdate);
		}
		
		
		model.addAttribute("stat", stat);
		
		
		
		
	    return "common/dashboard";
	}
	
	@RequestMapping(value="/selectday", method=RequestMethod.POST)
	public @ResponseBody Stat selectday(@RequestBody Stat slday) {
		System.out.println(slday);
		String date = slday.getStatRegDate();
		Stat stat = statRepository.selectdate(date);
		System.out.println(stat);
		
		return stat;
	}
	
	@RequestMapping(value="/selectweek", method=RequestMethod.POST)
	public @ResponseBody Stat selectweek(@RequestBody Stat slday) {
		
		String date = slday.getStatRegDate();
		
		StringTokenizer tokens = new StringTokenizer(date);
		
		String startdate = tokens.nextToken("~");
		
		String enddate = tokens.nextToken("~");
		
		Stat stat = statRepository.selectweek(startdate, enddate);
		
		
		return stat;
	}
	@RequestMapping(value="/selectchart",method=RequestMethod.GET)
	public @ResponseBody List<Stat> selectchart() {
		List<Stat> stat = statRepository.selectchart();
		
		return stat;
	}
	
	@RequestMapping(value="/selectchart2",method=RequestMethod.GET)
	public @ResponseBody List<Stat> selectchart2() {
		List<Stat> stat = statRepository.selectweekchart();
		System.out.println(stat);
		
		
		return stat;
	}
	@RequestMapping(value="/selectchart3",method=RequestMethod.GET)
	public @ResponseBody List<Stat> selectchart3() {
		List<Stat> stat = statRepository.selectmchart();
		
		return stat;
	}
	
}
