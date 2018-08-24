package com.decoblog.www.blog.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.decoblog.www.blog.vo.BlockTemplate;

@Repository
public class BlogRepository {
	@Autowired
	SqlSession session;
	
	
}
