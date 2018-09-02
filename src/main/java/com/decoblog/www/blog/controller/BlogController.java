package com.decoblog.www.blog.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.decoblog.www.blog.dao.BlogRepository;
import com.decoblog.www.blog.vo.BlockTemplate;
import com.decoblog.www.blog.vo.Menu;
import com.google.gson.Gson;

@Controller
public class BlogController {
	@Autowired
	BlogRepository blogRepository;
	
	/**
	 * 블로그 수정 페이지로 이동
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/config", method = RequestMethod.GET)
	public String config() {		
		return "blog/config";
	}
	
	/**
	 * 메뉴 불러오기 Ajax
	 * DB에 저장된 메뉴를 가져와서 JSP에 넘겨줌
	 * @return ArrayList<HashMap<String, ArrayList<Menu>>> JSON
	 */
	@ResponseBody
	@RequestMapping(value = "/menuConfig", method = RequestMethod.POST)
	public String menuConfig() {
		ArrayList<HashMap<String, ArrayList<Menu>>> list= blogRepository.selectMenu();
	//	System.out.println(list);
		Gson gson = new Gson();
		String result = gson.toJson(list);
		return result;
	}
	/**
	 * 메뉴 수정 Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/editMenu", method = RequestMethod.POST)
	public String editMenu(@RequestBody Menu menu) {
		System.out.println(menu); 
		blogRepository.updateMenuTitle(menu);
		return "blog/config";
	}
	
	@ResponseBody
	@RequestMapping(value="/updateMenu", method=RequestMethod.POST)
	public String updateMenu(@RequestBody HashMap<String, String> map) {
		if (map.isEmpty()) {
			return "false";
		}

		// TODO userNo 세션값으로 바꾸기 
		map.put("menuUserNo", "1");
		String depth = String.valueOf(map.get("menuDepth"));
		
		if(depth.equals("1")) {//움직인 애가 소메뉴일 경우
			if(map.get("menuParent").equals("newMenuParent")){//대메뉴 내에서 소메뉴가 이동한 경우(부모가 그대로인 경우)
				blogRepository.updateSmallMenuPull(map);
				blogRepository.updateSmallMenuPush(map);
				blogRepository.updateMenu(map);
			} else {
				if(!(map.containsKey("newMenuParent"))) { //소메뉴가 대메뉴가 된 경우
					map.put("newMenuParent", "0");
					blogRepository.updateSmallMenuPull(map);
					blogRepository.updateLargeMenuPush(map);
					blogRepository.updateMenu(map);
				}else {//소메뉴가 다른 대메뉴의 소메뉴로 이동한 경우
					System.out.println("??");
					blogRepository.updateSmallMenuPull(map);
					blogRepository.updateSmallMenuPush(map);
					blogRepository.updateMenu(map);
				}
			}
		} else {//움직인 애가 대메뉴일 경우
			if(!(map.containsKey("newMenuParent"))) { //대메뉴 순서만 바뀐 경우
				map.put("newMenuParent", "0");
				blogRepository.updateLargeMenuPull(map);
				blogRepository.updateLargeMenuPush(map);
				blogRepository.updateMenu(map);
			}else {//대메뉴가 다른 대메뉴의 소메뉴로 들어간 경우
				blogRepository.updateLargeMenuPull(map);
				blogRepository.updateSmallMenuPush(map);
				blogRepository.updateMenu(map);
			}
		}
		
		return "success";
	}
	@RequestMapping(value="getThumnail",method=RequestMethod.POST)
	public List<Integer> getThumnail(String tmpType) {
		List<Integer> blockNoList = blogRepository.selectThumnail(tmpType);
		return blockNoList;
	}
	
	@ResponseBody
	@RequestMapping(value="getBlockContent",method=RequestMethod.POST)
	public String getBlockContent(int blockTmpNo) {
		String blockContent = blogRepository.selectBlockContent(blockTmpNo);
		try {
			blockContent = URLEncoder.encode(blockContent, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return blockContent;
	}
	
}
