package com.decoblog.www.board.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.decoblog.www.board.dao.BoardRepository;

@Controller
public class BoardController {
	@Autowired
	BoardRepository repository;
	SqlSession session;
	
	
	final int COUNT_PER_PAGE = 10;
	final int PAGE_PER_GROUP = 5;
	
	

	// 글 목록 화면 요청(1) -- 일반 게시판
	
	
	// 글 목록 화면 요청(2) -- 사진 목록 게시판
	
	
	
	
	// 글 쓰기 화면 요청
	
	
	// 글 쓰기 DB 처리
	
	
	// 글 상세 보기
	
	
	// 글 수정 화면 요청
	
	
	// 글 수정 DB 처리
	
	
	// 글 삭제

	
	
}
