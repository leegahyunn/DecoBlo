package com.decoblog.www.blog.controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
		int userNo = (int) session.getAttribute("loginNo");
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
		int userNo =(int)session.getAttribute("loginNo");
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
		map.put("userNo", "1");
		blogRepository.updateBlogTitle(map);
		return  "blog/config";
	}
	
	/**
	 * 블로그 메타태그 수정 Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/updateMetaTag", method = RequestMethod.POST)
	public String updateMetaTag(@RequestBody HashMap<String, String> map) {
		map.put("userNo", "1");
		blogRepository.updateMetaTag(map);
		return  "blog/config";
	}
	
	/**
	 * 블로그 배경색 수정 Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/updateBackgroundColor", method = RequestMethod.POST)
	public String updateBackgroundColor(@RequestBody HashMap<String, String> map) {
		map.put("userNo", "1");
		blogRepository.updateBackgroundColor(map);
		return  "blog/config";
	}
     
	/**
	 * 블로그 폰트 수정 Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/updateBlogFont", method = RequestMethod.POST)
	public String updateBlogFont(@RequestBody HashMap<String, String> map) {
		map.put("userNo", "1");
		blogRepository.updateBlogFont(map);
		return  "blog/config";
	}
	
	/**
	 * 블로그 원페이지 여부 Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/updateOnepageStyle", method = RequestMethod.POST)
	public String updateOnepageStyle(@RequestBody HashMap<String, String> map) {
		map.put("userNo", "1");
		blogRepository.updateOnepageStyle(map);
		return  "blog/config";
	}
	
	/**
	 * 블로그 마우스 우클릭 여부 Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/updateRightClickable", method = RequestMethod.POST)
	public String updateRightClickable(@RequestBody HashMap<String, String> map) {
		map.put("userNo", "1");
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
		map.put("menuUserNo", "1");
		blogRepository.updateMenuVisible(map);
		return  "blog/config";
	}
	
	/**
	 * 메뉴 추가  Ajax
	 * @return 블로그 수정 페이지
	 */
	@RequestMapping(value = "/insertMenu", method = RequestMethod.POST)
	public String insertMenu(@RequestBody HashMap<String, Object> map,HttpSession session) {
		int userNo =  (int) session.getAttribute("loginNo");
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
		int menuDepth = (int)map.get("menuDepth");
		map.put("menuUserNo", "1");
		
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
		String root = multi.getSession().getServletContext().getRealPath("/");
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
        map.put("userNo", "1");
        blogRepository.updateBackgroundImg(map);
        
        return "blog/config";
    }
	
	
	@RequestMapping(value = "/updateFabiconImg", method = RequestMethod.POST)
    public String updateFabiconImg(MultipartHttpServletRequest multi2) {
		String root = multi2.getSession().getServletContext().getRealPath("/");
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
        map.put("userNo", "1");
        
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
		map.put("menuUserNo", "1");
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
			} else {//대메뉴가 다른 대메뉴의 소메뉴로 들어간 경우
				blogRepository.updateLargeMenuPull(map);
				blogRepository.updateSmallMenuPush(map);
				blogRepository.updateMenu(map);
			}
		}
		
		return result;
	}
	@RequestMapping(value="getThumnail", method=RequestMethod.POST)
	public @ResponseBody List<Integer> getThumnail(String tmpType) {
		List<Integer> blockNoList = blogRepository.selectThumnail(tmpType);
		return blockNoList;
	}
	
	
	@ResponseBody
	@RequestMapping(value="getBlockContent", method=RequestMethod.POST)
	public String getBlockContent(int blockTmpNo) {
		System.out.println(blockTmpNo);
		String blockContent = blogRepository.selectBlockContent(blockTmpNo);
		try {
			blockContent = URLEncoder.encode(blockContent, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		System.out.println(blockContent);
		return blockContent;
	}
	
	@RequestMapping(value="setBlockContent", method=RequestMethod.POST)
	public @ResponseBody int setBlockContent(@RequestBody Block block,Menu menu) {
		int blockSeq = block.getBlockSeq();
		blogRepository.updateBlockSeq(blockSeq);
		int result=blogRepository.insertBlock(block);
		return result;
	}
	@RequestMapping(value="selectMenu",method=RequestMethod.POST)
	public @ResponseBody Menu selectMenu(int menuNo, HttpSession session,Menu menu) {
		int userNo = (int) session.getAttribute("loginNo");
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
	
	@RequestMapping(value="setBlockCss",method=RequestMethod.POST)
	public @ResponseBody int setBlockCss(@RequestBody Block block) {
		System.out.println(block);
		int result =blogRepository.insertBlockCss(block);
		return result;
	}
  /**
=======

	/**
	 * 실제 파일은 C:\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\DecoBlo_dev\WEB-INF에
	 * 존재하지만 webapp/WEB-INF에 있는 것과 동일하게 작동
	 * @return
	 */
	@RequestMapping(value="/blog/{blogAddress}", method=RequestMethod.GET)
	public String chTest4(@PathVariable("blogAddress") String blogAddress) {
		String userNo = blogRepository.selectUserNoByBlogAddress(blogAddress);
		return "blog/" + userNo + "/index";
	}
	
	/**
	 * 블로그 저장하기 
	 */
	@RequestMapping(value="/saveBlog", method=RequestMethod.GET)
	public String SaveBlog(HttpServletRequest request, HttpSession session) {
		
		String userNo = String.valueOf(session.getAttribute("loginNo"));
		StringBuffer htmlBuffer = new StringBuffer();
		

		//	블로그 기본정보 불러오기
		User blogBasicInfo = blogRepository.selectBlogBasicInfo(userNo);

		//	헤더 작성
		StringBuffer headerBuffer = new StringBuffer();
		headerBuffer.append("<%@ page language=\"java\" contentType=\"text/html; charset=UTF-8\" pageEncoding=\"UTF-8\"%>\n");
		headerBuffer.append("<!DOCTYPE html>\n"); 
		headerBuffer.append("<html>\n"); 
		headerBuffer.append("<head>\n"); 
		headerBuffer.append("<title>" + blogBasicInfo.getBlogTitle() + "</title>\n"); 
		headerBuffer.append("<meta charset=\"utf-8\" />\n");
		headerBuffer.append("<meta name=\"author\" content=\"" + blogBasicInfo.getMetaAuthor() + "\" />\r\n"); 
		headerBuffer.append("<meta name=\"keyword\" content=\"" + blogBasicInfo.getMetaKeyword() + "\" />\r\n");
		headerBuffer.append("<meta name=\"description\" content=\"" + blogBasicInfo.getMetaDescription() + "\" />\r\n");
		headerBuffer.append("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n");
		if (blogBasicInfo.getFabiconSavedFile() != null) {
			headerBuffer.append("<link rel=\"shortcut icon\" href=\"" + blogBasicInfo.getFabiconSavedFile() + "\">");
		}
		headerBuffer.append("<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.2.0/css/all.css\" />\n"); 
		headerBuffer.append("<link rel=\"stylesheet\" href=\"/www/templates/common.css\" />\n"); 
		headerBuffer.append("<link rel=\"stylesheet\" href=\"/www/templates/template.css\" />\n"); 
		headerBuffer.append("</head>\n"); 
		

		// 바디 작성
		StringBuffer bodyBuffer = new StringBuffer();
		bodyBuffer.append("<body ");
		
		// 우클릭 방지
		if (blogBasicInfo.getConfigRightClickable() == 1) {
			bodyBuffer.append("oncontextmenu=\"return false\" "); 
		}
		
		// 스타일
		bodyBuffer.append("style=\"");
		if (blogBasicInfo.getConfigBackgroundColor() != null) {
			bodyBuffer.append("background-color:" + blogBasicInfo.getConfigBackgroundColor() + "; ");
		}
		
		if (blogBasicInfo.getConfigBackgroundSavedFile() != null) {
			bodyBuffer.append("background-img: url(" + blogBasicInfo.getConfigBackgroundSavedFile() + "); ");
		}
		
		if (blogBasicInfo.getConfigBasicFont() != null) {
			bodyBuffer.append("font-family: " + blogBasicInfo.getConfigBasicFont() + ", serif; ");
		}
		bodyBuffer.append("\"");
		
		bodyBuffer.append(">\n");
		

		// 블로그 메뉴 불러오기
		ArrayList<Integer> menuNoList = blogRepository.selectMenuNo(userNo);
		
		// 원페이지 여부 확인
		for (int menuNo : menuNoList) {
			StringBuffer menuBuffer = new StringBuffer();
			menuBuffer.append("<section class=\"menu-wrapper\">\n");
			// 블록 불러오기
			ArrayList<Block> blockList = blogRepository.selectBlock(menuNo);
			
			for (Block block : blockList) {
				StringBuffer blockBuffer = new StringBuffer();
				blockBuffer.append("<section class=\"block-wrapper\">\n");
				blockBuffer.append(block.getBlockContent());
				blockBuffer.append("</section>\n");
				menuBuffer.append(blockBuffer);
			}
			
			menuBuffer.append("</section>\n");
			bodyBuffer.append(menuBuffer);
		}
		
		htmlBuffer.append(headerBuffer);
		htmlBuffer.append(bodyBuffer);
		
		htmlBuffer.append("<!-- Scripts -->\n"); 
		htmlBuffer.append("<script src=\"/www/resources/library/js/jquery-3.3.1.min.js\"></script>\n"); 
		htmlBuffer.append("\n"); 
		
		htmlBuffer.append("<!-- Script Import -->\n"); 
		htmlBuffer.append("\n"); 
		
		htmlBuffer.append("</body>\n"); 
		htmlBuffer.append("</html>\n");
		
		System.out.println(htmlBuffer.toString());
		
		// 저장 경로
		// 테스트 서버일 경우 C:\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\DecoBlo_dev\ 에 저장
		String path = request.getSession().getServletContext().getRealPath("/");
		
        //파일 객체 생성
        File directory = new File(path + "WEB-INF/views/blog/"+ userNo);
        //!표를 붙여주어 파일이 존재하지 않는 경우의 조건을 걸어줌
        if(!directory.isDirectory()){
            //디렉토리 생성 메서드
        	directory.mkdirs();
        }
        
        


		// 파일 쓰기 
		BufferedWriter writer = null;
		
		try {
			writer = new BufferedWriter(new FileWriter(path + "WEB-INF/views/blog/" + userNo + "/index.jsp"));
			writer.write(htmlBuffer.toString());
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (writer != null) {
					writer.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	
		return "redirect:/config";
	}
	
}
