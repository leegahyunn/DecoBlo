package com.decoblog.www.stat.controller;


import java.util.List;

import java.util.StringTokenizer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String dashboard(Model model,HttpSession session) {
		
		int loginNo = (int)session.getAttribute("loginNo");
		
		Stat stat = statRepository.selectnowstat(loginNo);
		
		if(statRepository.nowmoth(loginNo)!=null) {
			Stat mstat = statRepository.nowmoth(loginNo);
			
			Stat wstat = statRepository.nowweek(loginNo);
			
			String date1 = mstat.getStatRegDate();
		
		model.addAttribute("mstat", mstat);
		String mmdate = date1.substring(0, 7);
		model.addAttribute("mmdate", mmdate);
		String date2 = wstat.getStatRegDate();
		System.out.println(date2);
	
		String wwdate = date2.substring(0, 10);
		model.addAttribute("wstat", wstat);
		model.addAttribute("wwdate", wwdate);
		}
		
		
		model.addAttribute("stat", stat);
		
		
		
		
	    return "common/dashboard";
	}
	// ajax 선택한일  stat 데이터 뽑기
	@RequestMapping(value="/selectday", method=RequestMethod.POST)
	public @ResponseBody Stat selectday(@RequestBody Stat slday,HttpSession session) {
		int loginNo = (int)session.getAttribute("loginNo");
		System.out.println(loginNo);
		String date = slday.getStatRegDate();
		System.out.println(date);
		Stat stat = statRepository.selectdate(date,loginNo);
		
		
		return stat;
	}
	
	// ajax 선택한일 전날  stat 데이터 뽑기
		@RequestMapping(value="/beforeselectday", method=RequestMethod.POST)
		public @ResponseBody Stat beforeselectday(@RequestBody Stat slday,HttpSession session) {
			int loginNo = (int)session.getAttribute("loginNo");
			String date = slday.getStatRegDate();
			Stat stat = statRepository.selectyesdate(date, loginNo);
			
			System.out.println(stat);
			
			
			return stat;
		}
	// ajax 선택한주 stat 데이터 뽑기
	@RequestMapping(value="/selectweek", method=RequestMethod.POST)
	public @ResponseBody Stat selectweek(@RequestBody Stat slday,HttpSession session) {
		int loginNo = (int)session.getAttribute("loginNo");
		String date = slday.getStatRegDate();
		
		StringTokenizer tokens = new StringTokenizer(date);
		
		String startdate = tokens.nextToken("~");
		
		String enddate = tokens.nextToken("~");
		
		Stat stat = statRepository.selectweek(startdate, enddate, loginNo);
		
		
		return stat;
	}
	@RequestMapping(value="/selectchart",method=RequestMethod.GET)
	public @ResponseBody List<Stat> selectchart(HttpSession session) {
		int loginNo = (int)session.getAttribute("loginNo");
		
		List<Stat> stat = statRepository.selectchart(loginNo);
		
		return stat;
	}
	
	@RequestMapping(value="/selectchart2",method=RequestMethod.GET)
	public @ResponseBody List<Stat> selectchart2(HttpSession session) {
		int loginNo = (int)session.getAttribute("loginNo");
		
		List<Stat> stat = statRepository.selectweekchart(loginNo);
		
		System.out.println(stat);
		
		
		return stat;
	}
	@RequestMapping(value="/selectchart3",method=RequestMethod.GET)
	public @ResponseBody List<Stat> selectchart3(HttpSession session) {
		int loginNo = (int)session.getAttribute("loginNo");
		
		List<Stat> stat = statRepository.selectmchart(loginNo);
		
		return stat;
	}
	
}
