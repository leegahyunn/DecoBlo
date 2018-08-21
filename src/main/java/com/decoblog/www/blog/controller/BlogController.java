package com.decoblog.www.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.decoblog.www.blog.dao.BlogRepository;

@Controller
public class BlogController {
	@Autowired
	BlogRepository blogRepository;
}
