package com.decoblog.www.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.decoblog.www.board.dao.BoardRepository;
import com.decoblog.www.board.vo.Bbs;
import com.decoblog.www.board.vo.BbsAttach;
import com.decoblog.www.board.vo.FileService;
import com.decoblog.www.board.vo.PageNavigator;

@Controller
public class BoardController {
	@Autowired
	BoardRepository repository;
	SqlSession session;
	final String uploadPath = "/uploadPath";

	
	
	final int COUNT_PER_PAGE = 10;
	final int PAGE_PER_GROUP = 5;
	
	// 글 목록 화면 요청
	@RequestMapping(value="/listBbs", method=RequestMethod.GET)
	public String listboard(Model model,
			@RequestParam(value = "currentPage", defaultValue = "1") int currentPage,
			@RequestParam(value = "searchItem", defaultValue = "title") String searchItem,
			@RequestParam(value = "searchWord", defaultValue = "") String searchWord) {
		
		// Repository로 넘겨주기
		int totalRecordCount = repository.getTotalBbs(searchItem, searchWord);
		
		// 페이지네비게이터 생성
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);
		
		List<Bbs> bbsList = repository.select(searchItem, searchWord, navi.getStartRecord(), navi.getCountPerPage());
		
		model.addAttribute("bbsList", bbsList);
		model.addAttribute("searchItem", searchItem);
		model.addAttribute("searchWord", searchWord);
		model.addAttribute("navi", navi);
		model.addAttribute("currentPage", currentPage);

		
		return "common/notice";
	}

	
	// 글 상세보기
	@RequestMapping(value="/bbsDetail", method=RequestMethod.GET)
	public String selectOneBbs(Model model, int boardNo, int bbsNo) {
		
		Bbs bbsDetail = repository.selectOneBbs(bbsNo);
		
		// 조회수 +1 
		repository.updateBbsCount(bbsNo);
		
		
		model.addAttribute("bbsDetail", bbsDetail);
		
		return "common/notice";
	}
	
	
	// 글쓰기 화면 요청
	@RequestMapping(value="/writeBbs", method=RequestMethod.GET)
	public String writeBbs() {
		
		return "common/noticeWrite";
	}
	
	// 글쓰기 + 첨부파일 DB
	@RequestMapping(value="/writeBbs", method=RequestMethod.POST)
	public String writeBbs(Bbs bbs, BbsAttach bbsAttach, MultipartFile upload, HttpSession session) {
		
		String userid = (String) session.getAttribute("loginId");
		
		String savedFileName = FileService.saveFile(upload, uploadPath);
		String originalFileName = upload.getOriginalFilename();
		
		// 첨부파일 있을 때
		if(!upload.getOriginalFilename().equals("")) {
			bbsAttach.setAttachSavedFile(savedFileName);
			bbsAttach.setAttachOriginalFile(originalFileName);
			
			repository.insertBbsAttach(bbsAttach);
		}
		
		repository.insertBbs(bbs);
		
		return "redirect:listBbs";
	}
	
	
	
	
	
	// 글 수정 화면 요청
	@RequestMapping(value="/updateBbs", method=RequestMethod.GET)
	public String updateBbs(Model model, int bbsNo) {
		
		Bbs bbsupdate = repository.selectOneBbs(bbsNo);
		model.addAttribute("bbsupdate", bbsupdate);
		
		return "common/noticeUpdate";
	}
	
	// 글 수정 DB
	@RequestMapping(value="/updateBbs", method=RequestMethod.POST)
	public String updateBbs(Bbs bbs, MultipartFile upload) {
		
		// 수정할 글 가져오기
		Bbs bbsupdate = repository.selectOneBbs(bbs.getBbsNo());
		
		// 만약 첨부파일 있을 시 
		
		return "redirect:listBbs";
	}

	
	
	
	// 글 삭제
	@RequestMapping(value="/deleteBbs", method=RequestMethod.GET)
	public String deleteBbs(int bbsNo) {
		
		Bbs bbs = repository.selectOneBbs(bbsNo);
		
		// 첨부파일 삭제

		return "redirect:listBbs";
	}
	
	
	
	
	
}
