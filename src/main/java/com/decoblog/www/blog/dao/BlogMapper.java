package com.decoblog.www.blog.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.decoblog.www.blog.vo.Block;
import com.decoblog.www.blog.vo.BlockTemplate;
import com.decoblog.www.blog.vo.Menu;
import com.decoblog.www.user.vo.User;

public interface BlogMapper {
	// 전체 메뉴 가져오기
	public ArrayList<HashMap<String, ArrayList<Menu>>> selectMenu(int menuUserNo);
	// 메뉴 타이틀 수정
	public int updateMenuTitle(Menu menu);
	public int updateSmallMenuPull(HashMap<String, Object> map);
	public int updateSmallMenuPush(HashMap<String, Object> map);
	public int updateLargeMenuPull(HashMap<String, Object> map);
	public int updateLargeMenuPush(HashMap<String, Object> map);
	public int updateMenu(HashMap<String, Object> map);


	/*블록 편집 mapper*/
	//블록썸네일 가져오기 
	public List<Integer> selectThumnail(String tmpType);
	//블록 코드 가져오기 
	public String selectBlockContent(int blockTempNo);
	//블록 가져오기
	public List<Block> selectBlockList(Menu menu);
	//블록 입력 
	public int insertBlock(Block block);
	//블록 복제
	public int copyBlock(int blockNo);
	//블록 한자리 미루기 
	public int updateBlockSeq(int blockSeq);
	//블록 삭제
	public int deleteBlock(int blockSeq);
	public int updateBlogTitle(HashMap<String, String> map);
	public int updateMetaTag(HashMap<String, String> map);
	public int updateBackgroundColor(HashMap<String, String> map);
	public int updateBackgroundImg(HashMap<String, String> map);
	public User selectBlog(int userNo);
	public int updateBlogFont(HashMap<String, String> map);
	public int updateOnepageStyle(HashMap<String, String> map);
	public int updateRightClickable(HashMap<String, String> map);
	public int insertMenu(HashMap<String, String> map);
	public int updateSubmenu(HashMap<String, Object> map);
	public int deleteMenu(HashMap<String, Object> map);
}
