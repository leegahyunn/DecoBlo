package com.decoblog.www.blog.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.decoblog.www.blog.vo.Menu;
import com.decoblog.www.blog.vo.Template;
import com.decoblog.www.user.vo.User;
import com.decoblog.www.blog.vo.Block;
import com.decoblog.www.blog.vo.BlockTemplate;

@Repository
public class BlogRepository {
	@Autowired
	SqlSession session;

	/**
	 * 전체 메뉴 가져오기
	 * @return DB에 등록된 메뉴
	 */
	public ArrayList<HashMap<String, ArrayList<Menu>>> selectMenu(int userNo) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		ArrayList<HashMap<String, ArrayList<Menu>>> result = mapper.selectMenu(userNo);
		return result;
	}
	
	/**
	 * 메뉴 타이틀 수정
	 * @return 성공 여부
	 */
	public int updateMenuTitle(Menu menu) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.updateMenuTitle(menu);
		
		return result;
	}
	
	/*
	 * 블록 썸네일 가져오기
	 * */
	public List<Integer> selectThumnail(String tmpType){
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		List<Integer> blockNoList= mapper.selectThumnail(tmpType);
		return blockNoList;
	}
	
	/*블록 코드 가져오기*/
	public String selectBlockContent(int blockTemplateNo) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		String blockContent = mapper.selectBlockContent(blockTemplateNo);
		return blockContent;
	}
	/*블록 가져오기 */
	public List<Block> selectBlockList(Menu menu){
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		List<Block> blockList = mapper.selectBlockList(menu);
		return blockList;
	}
	/*블록 입력하기*/
	public int insertBlock(Block block) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.insertBlock(block);
		return result;
	}
	/*블록 복제*/
	public int copyBlock(int blockNo) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.copyBlock(blockNo);
		return result;
	}
	/*블록 Seq 한자리씩 미루기*/
	public int updateBlockSeq(int blockSeq) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.updateBlockSeq(blockSeq);
		return result;
	}
	/*블록 삭제*/
	public int deleteBlock(int blockSeq) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.deleteBlock(blockSeq);
		
		return result;
	}

	public int updateSmallMenuPull(HashMap<String, Object> map) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.updateSmallMenuPull(map);
		
		return result;
	}

	public int updateSmallMenuPush(HashMap<String, Object> map) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.updateSmallMenuPush(map);
		
		return result;
	}

	public int updateLargeMenuPull(HashMap<String, Object> map) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.updateLargeMenuPull(map);
		
		return result;
	}

	public int updateLargeMenuPush(HashMap<String, Object> map) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.updateLargeMenuPush(map);
		
		return result;
	}

	public int updateMenu(HashMap<String, Object> map) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.updateMenu(map);
		
		return result;
	}
	
	/**
	 * 블로그 타이틀 수정
	 * @return 성공 여부
	 */
	public int updateBlogTitle(HashMap<String, String> map) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.updateBlogTitle(map);
		
		return result;
	}

	public int updateMetaTag(HashMap<String, String> map) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.updateMetaTag(map);
		
		return result;
		
	}

	public int updateBackgroundColor(HashMap<String, String> map) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.updateBackgroundColor(map);
		
		return result;
	}

	public int updateBackgroundImg(HashMap<String, String> map) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.updateBackgroundImg(map);
		
		return result;
	}

	public User selectBlog(int userNo) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		User result = mapper.selectBlog(userNo);
		return result;
	}

	public int updateBlogFont(HashMap<String, String> map) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.updateBlogFont(map);
		
		return result;
	}

	public int updateOnepageStyle(HashMap<String, String> map) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.updateOnepageStyle(map);
		
		return result;
	}

	public int updateRightClickable(HashMap<String, String> map) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.updateRightClickable(map);
		
		return result;
	}

	public int insertMenu(HashMap<String, Object> map) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.insertMenu(map);
		
		return result;
	}

	public int updateSubmenu(HashMap<String, Object> map) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.updateSubmenu(map);
		
		return result;
	}

	public int deleteLargeMenu(HashMap<String, Object> map) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.deleteLargeMenu(map);
		
		return result;
	}

	public int deleteSmallMenu(HashMap<String, Object> map) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.deleteSmallMenu(map);
		
		return result;
	}

	public int updateMenuVisible(HashMap<String, Object> map) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		int result = mapper.updateMenuVisible(map);
		
		return result;
	}
	
	/*첫 번째 메뉴 가져오기*/
	public Menu selectFirstMenu(int userNo) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		Menu menu = mapper.selectFirstMenu(userNo);
		return menu;
	}
	/*메뉴 한개 불러오기*/
	public Menu selectOneMenu(Menu menu) {
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		Menu resultmenu = mapper.selectOneMenu(menu);
		return resultmenu;
	}

	public List<Template> selectTemplate() {
		List<Template> result = null;
		BlogMapper mapper = session.getMapper(BlogMapper.class);
		result = mapper.selectTemplate();
		return result;
	}
	
	
}
