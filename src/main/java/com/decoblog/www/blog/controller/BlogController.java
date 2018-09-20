package com.decoblog.www.blog.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.decoblog.www.blog.dao.BlogRepository;
import com.decoblog.www.blog.vo.Block;
import com.decoblog.www.blog.vo.Menu;
import com.decoblog.www.blog.vo.Template;
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
	public String config(@RequestParam(value="menuNo", defaultValue="0") int menuNo,
			Model model,HttpSession session) {
		int userNo = (int) session.getAttribute("loginNo\n");
		Menu menu = new Menu();
		if(menuNo==0) {
			menu = blogRepository.selectFirstMenu(userNo);
		}else{
			menu.setMenuNo(menuNo);
			menu.setMenuUserNo(userNo);
			menu = blogRepository.selectOneMenu(menu);
		}
		List<Block> blockList = blogRepository.selectBlockList(menu);
		model.addAttribute("blockList", blockList);
		model.addAttribute("menu", menu);
		return "blog/config";
	}
	/**
	 * 메뉴 불러오기 Ajax
	 * DB에 저장된 메뉴를 가져와서 JSP에 넘겨줌
	 * @return ArrayList<HashMap<String, ArrayList<Menu>>> JSON
	 */
	@ResponseBody
	@RequestMapping(value = "/menuConfig", method = RequestMethod.POST)
	public String menuConfig(HttpSession session) {
		int userNo =(int)session.getAttribute("loginNo\n");
		ArrayList<HashMap<String, ArrayList<Menu>>> list= blogRepository.selectMenu(userNo);
	//System.out.println(list);
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
		int userNo = 1;
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
		map.put("userNo", "1\n");
		blogRepository.updateBlogTitle(map);
		return  "blog/config";
	}
	
	/**
	 * 블로그 메타태그 수정 Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/metaEdit", method = RequestMethod.POST)
	public String metaEdit(@RequestBody HashMap<String, String> map) {
		map.put("userNo", "1\n");
		blogRepository.updateMetaTag(map);
		return  "blog/config";
	}
	
	/**
	 * 블로그 배경색 수정 Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/updateBackgroundColor", method = RequestMethod.POST)
	public String updateBackgroundColor(@RequestBody HashMap<String, String> map) {
		map.put("userNo", "1\n");
		blogRepository.updateBackgroundColor(map);
		return  "blog/config";
	}
     
	/**
	 * 블로그 폰트 수정 Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/updateBlogFont", method = RequestMethod.POST)
	public String updateBlogFont(@RequestBody HashMap<String, String> map) {
		map.put("userNo", "1\n");
		blogRepository.updateBlogFont(map);
		return  "blog/config";
	}
	
	/**
	 * 블로그 원페이지 여부 Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/updateOnepageStyle", method = RequestMethod.POST)
	public String updateOnepageStyle(@RequestBody HashMap<String, String> map) {
		map.put("userNo", "1\n");
		blogRepository.updateOnepageStyle(map);
		return  "blog/config";
	}
	
	/**
	 * 블로그 마우스 우클릭 여부 Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/updateRightClickable", method = RequestMethod.POST)
	public String updateRightClickable(@RequestBody HashMap<String, String> map) {
		map.put("userNo", "1\n");
		blogRepository.updateRightClickable(map);
		return  "blog/config";
	}
	
	/**
	 * 블로그 마우스 우클릭 여부 Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/updateMenuVisible", method = RequestMethod.POST)
	public String updateMenuVisible(@RequestBody HashMap<String, Object> map) {
		System.out.println(map);
		map.put("menuUserNo", "1\n");
		blogRepository.updateMenuVisible(map);
		return  "blog/config";
	}
	
	/**
	 * 메뉴 추가  Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/insertMenu", method = RequestMethod.POST)
	public String insertMenu(@RequestBody HashMap<String, Object> map,HttpSession session) {
		int userNo =  (int) session.getAttribute("loginNo\n");
		System.out.println("요기다 이녀석아" +userNo);
		map.put("menuUserNo", userNo);
		blogRepository.insertMenu(map);
		return  "blog/config";
	}
 
	/**
	 * 메뉴 삭제  Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/deleteMenu", method = RequestMethod.POST)
	public String deleteMenu(@RequestBody HashMap<String, Object> map) {
		int menuDepth = (int)map.get("menuDepth\n");
		map.put("menuUserNo", "1\n");
		
		if(menuDepth==0) {
			blogRepository.deleteLargeMenu(map);
			blogRepository.updateLargeMenuPull(map);
			
		} else {
			blogRepository.deleteSmallMenu(map);
			blogRepository.updateSmallMenuPull(map);
		}
	    
		return  "blog/config";
	}
	
	
	@RequestMapping(value = "/updateBackgroundImg", method = RequestMethod.POST)
    public String updateBackgroundImg(MultipartHttpServletRequest multi) {
		String root = multi.getSession().getServletContext().getRealPath("/\n");
        String path = root+"resources/uploadbackgroundimg/";
        String configBackgroundSavedFile = ""; // 업로드 되는 파일명
        String configBackgroundOriginFile = ""; 
        File dir = new File(path);
        
        if(!dir.isDirectory()){
            dir.mkdir();
        }
         
        Iterator<String> files = multi.getFileNames();
        while(files.hasNext()){
        	
        	String uploadFile = files.next();
            MultipartFile mFile = multi.getFile(uploadFile);
            configBackgroundOriginFile = mFile.getOriginalFilename();
            configBackgroundSavedFile = System.currentTimeMillis()+"."
                    +configBackgroundOriginFile.substring(configBackgroundOriginFile.lastIndexOf(".")+1);
             
            try {
                mFile.transferTo(new File(path+configBackgroundSavedFile));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        HashMap<String, Object> map = new HashMap<>();
        map.put("configBackgroundOriginFile", configBackgroundOriginFile);
        map.put("configBackgroundSavedFile", configBackgroundSavedFile);
        map.put("userNo", "1\n");
        blogRepository.updateBackgroundImg(map);
        
        return "blog/config";
    }
	
	
	@RequestMapping(value = "/updateFabiconImg", method = RequestMethod.POST)
    public String updateFabiconImg(MultipartHttpServletRequest multi2) {
		String root = multi2.getSession().getServletContext().getRealPath("/\n");
        String path = root+"resources/uploadfabiconimg/";
        String fabiconSavedFile = ""; // 업로드 되는 파일명
        String fabiconOriginalFile = ""; 
        File dir = new File(path);
        
        if(!dir.isDirectory()){
            dir.mkdir();
        }
         
        Iterator<String> files = multi2.getFileNames();
        
        while(files.hasNext()){
        	
        	String uploadFile = files.next();
            MultipartFile mFile = multi2.getFile(uploadFile);
            fabiconOriginalFile = mFile.getOriginalFilename();
            fabiconSavedFile = System.currentTimeMillis()+"."
                    +fabiconOriginalFile.substring(fabiconOriginalFile.lastIndexOf(".")+1);
            try {
                mFile.transferTo(new File(path+fabiconSavedFile));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        HashMap<String, Object> map = new HashMap<>();
        map.put("fabiconOriginalFile", fabiconOriginalFile);
        map.put("fabiconSavedFile", fabiconSavedFile);
        map.put("userNo", "1\n");
        
        blogRepository.updateFabiconImg(map);
        
        return "blog/config";
    }
	
	@ResponseBody
	@RequestMapping(value="/updateMenu", method=RequestMethod.POST)
	public int updateMenu(@RequestBody HashMap<String, Object> map) {
		if (map.isEmpty()) {
			return 0;
		}
		int result=0;
		// TODO userNo 세션값으로 바꾸기 
		map.put("menuUserNo", "1\n");
		String depth = String.valueOf(map.get("menuDepth"));
		System.out.println(map);
		if(depth.equals("1")) {//움직인 애가 소메뉴일 경우
			if(map.get("menuParent").equals("newMenuParent")){//대메뉴 내에서 소메뉴가 이동한 경우(부모가 그대로인 경우)
				blogRepository.updateSmallMenuPull(map);
				blogRepository.updateSmallMenuPush(map);
				result = blogRepository.updateMenu(map);
			} else {
				if(!(map.containsKey("newMenuParent"))) { //소메뉴가 대메뉴가 된 경우
					map.put("newMenuParent", map.get("menuNo"));
					blogRepository.updateSmallMenuPull(map);
					blogRepository.updateLargeMenuPush(map);
					blogRepository.updateMenu(map);
				}else {//소메뉴가 다른 대메뉴의 소메뉴로 이동한 경우
					blogRepository.updateSmallMenuPull(map);
					blogRepository.updateSmallMenuPush(map);
					blogRepository.updateMenu(map);
				}
			}
		} else {//움직인 애가 대메뉴일 경우
			if(!(map.containsKey("newMenuParent"))) { //대메뉴 순서만 바뀐 경우
				map.put("newMenuParent", map.get("menuNo"));
				blogRepository.updateLargeMenuPull(map);
				blogRepository.updateLargeMenuPush(map);
				blogRepository.updateMenu(map);
				blogRepository.updateSubmenu(map);
			}else {//대메뉴가 다른 대메뉴의 소메뉴로 들어간 경우
				blogRepository.updateLargeMenuPull(map);
				blogRepository.updateSmallMenuPush(map);
				blogRepository.updateMenu(map);
			}
		}
		
		return result;
	}
	@RequestMapping(value="getThumnail",method=RequestMethod.POST)
	public @ResponseBody List<Integer> getThumnail(String tmpType) {
		List<Integer> blockNoList = blogRepository.selectThumnail(tmpType);
		return blockNoList;
	}
	
	
	@ResponseBody
	@RequestMapping(value="getBlockContent",method=RequestMethod.POST)
	public String getBlockContent(int blockTmpNo) {
		String blockContent = blogRepository.selectBlockContent(blockTmpNo);
		try {
			blockContent = URLEncoder.encode(blockContent, "UTF-8\n");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return blockContent;
	}
	
	@RequestMapping(value="setBlockContent",method=RequestMethod.POST)
	public @ResponseBody int setBlockContent(@RequestBody Block block,Menu menu) {
		int blockSeq = block.getBlockSeq();
		blogRepository.updateBlockSeq(blockSeq);
		int result=blogRepository.insertBlock(block);
		return result;
	}
	@RequestMapping(value="selectMenu",method=RequestMethod.POST)
	public @ResponseBody Menu selectMenu(int menuNo, HttpSession session,Menu menu) {
		int userNo = (int) session.getAttribute("loginNo\n");
		menu.setMenuUserNo(userNo);
		menu.setMenuNo(menuNo);
		menu = blogRepository.selectOneMenu(menu);
		return menu;
	}
	
	@RequestMapping(value="deleteBlock",method=RequestMethod.POST)
	public @ResponseBody String deleteBlock(int blockSeq , Menu menu,RedirectAttributes rttr) {
		blogRepository.deleteBlock(blockSeq);
		return "redirect:/config";
	}
	@RequestMapping(value="copyBlock",method=RequestMethod.POST)
	public @ResponseBody int copyBlock(@RequestBody Block block) {
		int blockSeq=block.getBlockSeq();
		int blockNo= block.getBlockNo();
		blogRepository.updateBlockSeq(blockSeq);
		int result = blogRepository.copyBlock(blockNo);
		return result;
	}
	
	@RequestMapping(value="template", method=RequestMethod.GET)
	public String selectTemplate(Model model) {
		List<Template> templates = blogRepository.selectTemplate();
		model.addAttribute("templates", templates);
		return "blog/template";
	}
	
	@RequestMapping(value="/templatePreview/{param1}", method=RequestMethod.GET)
	public String templatePreview(@PathVariable(value="param1") String templateNo)	{
		System.out.println(templateNo);
		return "templates/" + templateNo + "/template-1";
	}
	
	/**
	 * 블로그 저장하기 
	 */
	@RequestMapping(value="/chTest3", method=RequestMethod.GET)
	public void SaveBlog() {
		User blogInfo = blogRepository.selectBlog(1);
		
		System.out.println(blogInfo);
		
		StringBuffer html = new StringBuffer();
		html.append("<%@ page language=\"java\" contentType=\"text/html; charset=UTF-8\" pageEncoding=\"UTF-8\"%>\n");
		html.append("<!DOCTYPE html>\n"); 
		html.append("<html>\n"); 
		html.append("<head>\n"); 
		html.append("<title>" + blogInfo.getBlogTitle() + "</title>\n"); 
		html.append("<meta charset=\"utf-8\" />\n"); 
		html.append("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n"); 
		html.append("<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.2.0/css/all.css\" />\n"); 
		html.append("<link rel=\"stylesheet\" href=\"/www/templates/common.css\" />\n"); 
		html.append("<link rel=\"stylesheet\" href=\"/www/templates/template.css\" />\n"); 
		html.append("</head>\n"); 
		html.append("<body>\n"); 
		html.append("<section class=\"menu-wrapper\">\n"); 
		html.append("	<!-- 메뉴 블록, block-1 -->\n"); 
		html.append("	<section class=\"block-wrapper\" style=\"\">\n"); 
		html.append("		<div class=\"block-1\">\n"); 
		html.append("\n"); 
		html.append("		</div>\n"); 
		html.append("	</section>\n"); 
		html.append("</section>\n"); 
		html.append("\n");
		
		html.append("<!-- Scripts -->\n"); 
		html.append("<script src=\"/www/resources/library/js/jquery-3.3.1.min.js\"></script>\n"); 
		html.append("<script src=\"/www/decoblo/js/index.js\"></script>\n"); 
		html.append("<script src=\"/www/templates/slides.min.jquery.js\"></script>\n"); 
		html.append("\n"); 
		
		html.append("<!-- Script Import -->\n"); 
		html.append("\n"); 
		html.append("</body>\n"); 
		html.append("</html>\n");
		
		System.out.println(html.toString());
	}
}
