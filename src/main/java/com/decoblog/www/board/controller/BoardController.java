package com.decoblog.www.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.decoblog.www.board.dao.BoardRepository;

@Controller
public class BoardController {
	@Autowired
	BoardRepository boardRepository;
}
