package com.decoblog.www.blog.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.decoblog.www.blog.vo.BlockTemplate;
import com.decoblog.www.blog.vo.Menu;

public interface BlogMapper {
	// 전체 메뉴 가져오기
	public ArrayList<HashMap<String, ArrayList<Menu>>> selectMenu();

  // 메뉴 타이틀 수정
	public int updateMenu(Menu menu);

	/*블록 편집 mapper*/
	//블록썸네일 가져오기 
	public List<Integer> selectThumnail(String tmpType);
	//블록 코드 가져오기 
	public String selectBlockContent(int blockTempNo);
}
