package com.decoblog.www.blog.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.decoblog.www.blog.vo.Menu;

public interface BlogMapper {
	// 전체 메뉴 가져오기
	public ArrayList<HashMap<String, ArrayList<Menu>>> selectMenu();

}
