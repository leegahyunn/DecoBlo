package com.decoblog.www.blog.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.decoblog.www.blog.dao.BlogRepository;
import com.decoblog.www.blog.vo.Block;
import com.decoblog.www.blog.vo.Menu;
import com.decoblog.www.user.vo.User;
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
	public String config(Menu menu, Model model) {	
		menu.setMenuNo(1);
		menu.setMenuUserNo(1);
		List<Block> blockList = blogRepository.selectBlockList(menu);
		model.addAttribute("blockList", blockList);
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
		int menuUserNo = 1;
		ArrayList<HashMap<String, ArrayList<Menu>>> list= blogRepository.selectMenu(menuUserNo);
		Gson gson = new Gson();
		String result = gson.toJson(list);
		return result;
	}
	
	/**
	 * 타이틀 불러오기 Ajax
	 * DB에 저장된 블로그 타이틀를 가져와서 JSP에 넘겨줌
	 * @return ArrayList<HashMap<String, ArrayList<Menu>>> JSON
	 */
	@ResponseBody
	@RequestMapping(value = "/siteConfig", method = RequestMethod.POST)
	public User siteConfig() {
		int userNo = 2;
		User user = blogRepository.selectBlog(userNo);
		return user;
	}

	/**
	 * 메뉴 수정 Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/editMenu", method = RequestMethod.POST)
	public String editMenu(@RequestBody Menu menu) {
		blogRepository.updateMenuTitle(menu);
		return "blog/config";
	}
	
	/**
	 * 블로그 타이틀 수정 Ajax
	 * @return 블로그 수정 페이지
	 */
	@ResponseBody
	@RequestMapping(value = "/editBlogTitle", method = RequestMethod.POST)
	public String editBlogTitle(@RequestBody HashMap<String, String> map) {
		map.put("userNo", "2");
		blogRepository.updateBlogTitle(map);
		return  "blog/config";
	}
	
	/**
	 * 블로그 메타태그 수정 Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/metaEdit", method = RequestMethod.POST)
	public String metaEdit(@RequestBody HashMap<String, String> map) {
		map.put("userNo", "2");
		blogRepository.updateMetaTag(map);
		return  "blog/config";
	}
	
	/**
	 * 블로그 배경색 수정 Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/updateBackgroundColor", method = RequestMethod.POST)
	public String updateBackgroundColor(@RequestBody HashMap<String, String> map) {
		map.put("userNo", "2");
		blogRepository.updateBackgroundColor(map);
		return  "blog/config";
	}
     
	/**
	 * 블로그 폰트 수정 Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/updateBlogFont", method = RequestMethod.POST)
	public String updateBlogFont(@RequestBody HashMap<String, String> map) {
		map.put("userNo", "2");
		blogRepository.updateBlogFont(map);
		return  "blog/config";
	}
	
	/**
	 * 블로그 폰트 수정 Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/updateOnepageStyle", method = RequestMethod.POST)
	public String updateOnepageStyle(@RequestBody HashMap<String, String> map) {
		map.put("userNo", "2");
		blogRepository.updateOnepageStyle(map);
		return  "blog/config";
	}
	
    @RequestMapping(value = "/fileUpload", method = RequestMethod.POST)
    public String fileUp(MultipartHttpServletRequest multi) {
        
    	System.out.println("??");
    	
        // 저장 경로 설정
        String root = multi.getSession().getServletContext().getRealPath("/");
        String path = root+"resources/up/";
         
        String newFileName = ""; // 업로드 되는 파일명
         
        File dir = new File(path);
        if(!dir.isDirectory()){
            dir.mkdir();
        }
         
        Iterator<String> files = multi.getFileNames();
        while(files.hasNext()){
            String uploadFile = files.next();
                         
            MultipartFile mFile = multi.getFile(uploadFile);
            String fileName = mFile.getOriginalFilename();
            System.out.println("실제 파일 이름 : " +fileName);
            newFileName = System.currentTimeMillis()+"."
                    +fileName.substring(fileName.lastIndexOf(".")+1);
             
            try {
                mFile.transferTo(new File(path+newFileName));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
         
        System.out.println("ㄴㄴ");
         
        return "blog/config";
       }
	
	@ResponseBody
	@RequestMapping(value="/updateMenu", method=RequestMethod.POST)
	public String updateMenu(@RequestBody HashMap<String, String> map) {
		if (map.isEmpty()) {
			return "false";
		}

		// TODO userNo 세션값으로 바꾸기 
		map.put("menuUserNo", "2");
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
	
	@ResponseBody
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
	
	@RequestMapping(value = "/yrtest", method = RequestMethod.GET)
	public String yrtest(Menu menu, Model model) {
		menu.setMenuNo(1);
		menu.setMenuUserNo(1);
		List<Block> blockList = blogRepository.selectBlockList(menu);
		model.addAttribute("blockList", blockList);
		return "blog/blogEdit1";
	}
	
	@RequestMapping(value="setBlockContent",method=RequestMethod.POST)
	public @ResponseBody String setBlockContent(@RequestBody Block block) {
		int blockSeq = block.getBlockSeq();
		blogRepository.updateBlockSeq(blockSeq);
		blogRepository.insertBlock(block);
		return "redirect:/config";
	}
	
	@RequestMapping(value="deleteBlock",method=RequestMethod.POST)
	public String deleteBlock(int blockSeq) {
		return "redirect:/config";
	}
}
