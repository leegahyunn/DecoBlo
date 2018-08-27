package com.decoblog.www.blog.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.decoblog.www.blog.vo.Menu;
import com.decoblog.www.blog.vo.BlockTemplate;

@Repository
public class BlogRepository {
	@Autowired
	SqlSession session;

	/**
	 * 전체 메뉴 가져오기
	 * @return DB에 등록된 메뉴
	 */
	public ArrayList<HashMap<String, ArrayList<Menu>>> selectMenu() {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		ArrayList<HashMap<String, ArrayList<Menu>>> result = mapper.selectMenu();
		
		return result;
	}
}
