package com.decoblog.www.blog.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.decoblog.www.blog.vo.Menu;

public interface BlogMapper {
	// 전체 메뉴 가져오기
	public ArrayList<HashMap<String, ArrayList<Menu>>> selectMenu();
	// 메뉴 타이틀 수정
	public int updateMenuTitle(Menu menu);
	public int updateSmallMenuPull(HashMap<String, String> map);
	public int updateSmallMenuPush(HashMap<String, String> map);
	public int updateLargeMenuPull(HashMap<String, String> map);
	public int updateLargeMenuPush(HashMap<String, String> map);
	public int updateMenu(HashMap<String, String> map);

}
