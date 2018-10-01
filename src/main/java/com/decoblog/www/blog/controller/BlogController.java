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
import java.util.Map;

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
import com.google.gson.reflect.TypeToken;

@Controller
public class BlogController {
	@Autowired
	BlogRepository blogRepository;
	
	/**
	 * 釉붾줈洹� �닔�젙 �럹�씠吏�濡� �씠�룞
	 * @return 釉붾줈洹� �닔�젙 �럹�씠吏�
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
	 * 硫붾돱 遺덈윭�삤湲� Ajax
	 * DB�뿉 ���옣�맂 硫붾돱瑜� 媛��졇���꽌 JSP�뿉 �꽆寃⑥쨲
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
	 * ���씠�� 遺덈윭�삤湲� Ajax
	 * DB�뿉 ���옣�맂 釉붾줈洹� ���씠��瑜� 媛��졇���꽌 JSP�뿉 �꽆寃⑥쨲
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
	 * 硫붾돱 �닔�젙 Ajax
	 * @return 釉붾줈洹� �닔�젙 �럹�씠吏�
	 */
	@RequestMapping(value = "/editMenu", method = RequestMethod.POST)
	public String editMenu(@RequestBody Menu menu) {
		blogRepository.updateMenuTitle(menu);
		return "blog/config";
	}
	
	/**
	 * 釉붾줈洹� ���씠�� �닔�젙 Ajax
	 * @return 釉붾줈洹� �닔�젙 �럹�씠吏�
	 */
	@ResponseBody
	@RequestMapping(value = "/editBlogTitle", method = RequestMethod.POST)
	public String editBlogTitle(@RequestBody HashMap<String, Object> map, HttpSession session) {
		int userNo =  (int) session.getAttribute("loginNo");
		map.put("userNo", userNo);
		blogRepository.updateBlogTitle(map);
		return  "blog/config";
	}
	
	/**
	 * 釉붾줈洹� 硫뷀��깭洹� �닔�젙 Ajax
	 * @return 釉붾줈洹� �닔�젙 �럹�씠吏�
	 */
	@RequestMapping(value = "/updateMetaTag", method = RequestMethod.POST)
	public String updateMetaTag(@RequestBody  HashMap<String, Object> map, HttpSession session) {
		int userNo =  (int) session.getAttribute("loginNo");
		map.put("userNo", userNo);
		blogRepository.updateMetaTag(map);
		return  "blog/config";
	}
	
	/**
	 * 釉붾줈洹� 諛곌꼍�깋 �닔�젙 Ajax
	 * @return 釉붾줈洹� �닔�젙 �럹�씠吏�
	 */
	@RequestMapping(value = "/updateBackgroundColor", method = RequestMethod.POST)
	public String updateBackgroundColor(@RequestBody HashMap<String, Object> map, HttpSession session) {
		int userNo =  (int) session.getAttribute("loginNo");
		map.put("userNo", userNo);
		blogRepository.updateBackgroundColor(map);
		return  "blog/config";
	}
     
	/**
	 * 釉붾줈洹� �룿�듃 �닔�젙 Ajax
	 * @return 釉붾줈洹� �닔�젙 �럹�씠吏�
	 */
	@RequestMapping(value = "/updateBlogFont", method = RequestMethod.POST)
	public String updateBlogFont(@RequestBody HashMap<String, Object> map, HttpSession session) {
		int userNo =  (int) session.getAttribute("loginNo");
		map.put("userNo", userNo);
		blogRepository.updateBlogFont(map);
		return  "blog/config";
	}
	
	/**
	 * 釉붾줈洹� �썝�럹�씠吏� �뿬遺� Ajax
	 * @return 釉붾줈洹� �닔�젙 �럹�씠吏�
	 */
	@RequestMapping(value = "/updateOnepageStyle", method = RequestMethod.POST)
	public String updateOnepageStyle(@RequestBody HashMap<String, Object> map, HttpSession session) {
		int userNo =  (int) session.getAttribute("loginNo");
		map.put("userNo", userNo);
		blogRepository.updateOnepageStyle(map);
		return  "blog/config";
	}
	
	/**
	 * 釉붾줈洹� 留덉슦�뒪 �슦�겢由� �뿬遺� Ajax
	 * @return 釉붾줈洹� �닔�젙 �럹�씠吏�
	 */
	@RequestMapping(value = "/updateRightClickable", method = RequestMethod.POST)
	public String updateRightClickable(@RequestBody HashMap<String, Object> map, HttpSession session) {
		int userNo =  (int) session.getAttribute("loginNo");
		map.put("userNo", userNo);
		blogRepository.updateRightClickable(map);
		return  "blog/config";
	}
	
	/**
	 * 釉붾줈洹� 留덉슦�뒪 �슦�겢由� �뿬遺� Ajax
	 * @return 釉붾줈洹� �닔�젙 �럹�씠吏�
	 */
	@RequestMapping(value = "/updateMenuVisible", method = RequestMethod.POST)
	public String updateMenuVisible(@RequestBody HashMap<String, Object> map, HttpSession session) {
		int userNo =  (int) session.getAttribute("loginNo");
		map.put("menuUserNo", userNo);
		blogRepository.updateMenuVisible(map);
		return  "blog/config";
	}
	
	/**
	 * 硫붾돱 異붽�  Ajax
	 * @return 釉붾줈洹� �닔�젙 �럹�씠吏�
	 */
	@RequestMapping(value = "/insertMenu", method = RequestMethod.POST)
	public String insertMenu(@RequestBody HashMap<String, Object> map, HttpSession session) {
		int userNo =  (int) session.getAttribute("loginNo");
		map.put("menuUserNo", userNo);
		blogRepository.insertMenu(map);
		return  "blog/config";
	}
 
	/**
	 * 硫붾돱 �궘�젣  Ajax
	 * @return 釉붾줈洹� �닔�젙 �럹�씠吏�
	 */
	@RequestMapping(value = "/deleteMenu", method = RequestMethod.POST)
	public String deleteMenu(@RequestBody HashMap<String, Object> map, HttpSession session) {
		int menuDepth = (int)map.get("menuDepth");
		int userNo =  (int) session.getAttribute("loginNo");
		map.put("menuUserNo", userNo);
		
		if(menuDepth==0) {
			blogRepository.deleteLargeMenu(map);
			blogRepository.updateLargeMenuPull(map);
			
		} else {
			blogRepository.deleteSmallMenu(map);
			blogRepository.updateSmallMenuPull(map);
		}
	    
		return  "blog/config";
	}
	
	@RequestMapping(value="/updateBlockImg",method=RequestMethod.POST)
	public String updateImageFile(MultipartHttpServletRequest multi3) {
		String root = multi3.getSession().getServletContext().getRealPath("/");
        String path = root+"resources/updateBlockImg/";
        String blockSavedFile = ""; // �뾽濡쒕뱶 �릺�뒗 �뙆�씪紐�
        String blockOriginalFile = ""; 
        File dir = new File(path);
        
        if(!dir.isDirectory()){
            dir.mkdir();
        }
        System.out.println(path);
        Iterator<String> files = multi3.getFileNames();
        System.out.println(files);
        while(files.hasNext()){
        	String uploadFile = files.next();
            MultipartFile mFile = multi3.getFile(uploadFile);
            blockOriginalFile = mFile.getOriginalFilename();
            blockSavedFile = System.currentTimeMillis()+"."
                    +blockOriginalFile.substring(blockOriginalFile.lastIndexOf(".")+1);
            System.out.println("Aaaa");
            try {
                mFile.transferTo(new File(path+blockSavedFile));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
       
        
        return "blog/config";
	}
	
	@RequestMapping(value = "/updateBackgroundImg", method = RequestMethod.POST)
    public String updateBackgroundImg(MultipartHttpServletRequest multi) {
		String root = multi.getSession().getServletContext().getRealPath("/");
        String path = root+"resources/uploadbackgroundimg/";
        System.out.println(path);
        String configBackgroundSavedFile = ""; // �뾽濡쒕뱶 �릺�뒗 �뙆�씪紐�
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
        String fabiconSavedFile = ""; // �뾽濡쒕뱶 �릺�뒗 �뙆�씪紐�
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
	public int updateMenu(@RequestBody HashMap<String, Object> map, HttpSession session) {
		if (map.isEmpty()) {
			return 0;
		}
		int result=0;
		// TODO userNo 세션값으로 바꾸기 
		int userNo =  (int) session.getAttribute("loginNo");
		map.put("menuUserNo", userNo);
		String depth = String.valueOf(map.get("menuDepth"));
		if(depth.equals("1")) {//움직인 애가 소메뉴일 경우
			if(map.get("menuParent").equals("newMenuParent")){//대메뉴 내에서 소메뉴가 이동한 경우(부모가 그대로인 경우)
				blogRepository.updateSmallMenuPull(map);
				blogRepository.updateSmallMenuPush(map);
				result = blogRepository.updateMenu(map);
			} else {
				if(!(map.containsKey("newMenuParent"))) { //�냼硫붾돱媛� ��硫붾돱媛� �맂 寃쎌슦
					map.put("newMenuParent", map.get("menuNo"));
					blogRepository.updateSmallMenuPull(map);
					blogRepository.updateLargeMenuPush(map);
					blogRepository.updateMenu(map);
				}else {//�냼硫붾돱媛� �떎瑜� ��硫붾돱�쓽 �냼硫붾돱濡� �씠�룞�븳 寃쎌슦
					blogRepository.updateSmallMenuPull(map);
					blogRepository.updateSmallMenuPush(map);
					blogRepository.updateMenu(map);
				}
			}
		} else {//��吏곸씤 �븷媛� ��硫붾돱�씪 寃쎌슦
			if(!(map.containsKey("newMenuParent"))) { //��硫붾돱 �닚�꽌留� 諛붾�� 寃쎌슦
				map.put("newMenuParent", map.get("menuNo"));
				blogRepository.updateLargeMenuPull(map);
				blogRepository.updateLargeMenuPush(map);
				blogRepository.updateMenu(map);
				blogRepository.updateSubmenu(map);
			} else {//��硫붾돱媛� �떎瑜� ��硫붾돱�쓽 �냼硫붾돱濡� �뱾�뼱媛� 寃쎌슦
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
	//
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
	 * 釉붾줈洹� 二쇱냼 以묐났�솗�씤
	 * @param address
	 * @return
	 */
	@RequestMapping(value="duplicatedAddress",method=RequestMethod.POST)
	public @ResponseBody String duplicatedAddress(String address, HttpSession session) {
		String result = blogRepository.selectUserNoByBlogAddress(address);
		if (result == null) {
			Map<String, String> insertData = new HashMap<>();
			insertData.put("userNo", String.valueOf(session.getAttribute("loginNo")));
			insertData.put("address", address);
			
			blogRepository.updateBlogAddress(insertData);
			return "true";
		} else {
			return "false";
		}
	}
	
	/**
	 * �뀥�뵆由� �벑濡�
	 * @param templateNo
	 * @return
	 */
	@RequestMapping(value="registerTemplate",method=RequestMethod.POST)
	public @ResponseBody String registerTemplate(String templateNo, HttpSession session) {
		String templateMenus = blogRepository.selectTemplateMenu(templateNo);
		
		Gson gson = new Gson();
		
		ArrayList<ArrayList<String>> menuList = gson.fromJson(templateMenus, new TypeToken<ArrayList<ArrayList<String>>>() {}.getType());
		
		int userNo = (int)session.getAttribute("loginNo");
		int firstMenuNo = 0;
		int mainMenuNo = 0;
		
		for (int mainMenuSeq = 0; mainMenuSeq < menuList.size(); mainMenuSeq++) {
			for (int subMenuSeq = 0; subMenuSeq < menuList.get(mainMenuSeq).size(); subMenuSeq++) {
				if (subMenuSeq==0) {
					// MainMenu
					Menu mainMenu = new Menu(0, userNo, menuList.get(mainMenuSeq).get(subMenuSeq), 0, 0, 0, 1, "", mainMenuSeq+1);
					blogRepository.insertMainMenu(mainMenu);
					if (mainMenuSeq == 0) {
						firstMenuNo = mainMenu.getMenuNo();
					}
					mainMenuNo = mainMenu.getMenuNo();
				} else {
					//SubMenu
					Menu subMenu = new Menu(0, userNo, menuList.get(mainMenuSeq).get(subMenuSeq), mainMenuNo, 1, subMenuSeq, 1, "", mainMenuSeq+1);
					blogRepository.insertSubMenu(subMenu);
				}
			}
		}
		
		Map<String, String> insertData = new HashMap<>();
		insertData.put("blockMenuNo", String.valueOf(firstMenuNo));
		insertData.put("blockTmpNo", templateNo);
		
		blogRepository.pasteBlock(insertData);
		
		
		return "true";
	}
	
	/**
	 * �궗�슜�옄 釉붾줈洹� �씠�룞
	 * �떎�젣 �뙆�씪�� C:\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\DecoBlo_dev\WEB-INF�뿉
	 * 議댁옱�븯吏�留� webapp/WEB-INF�뿉 �엳�뒗 寃껉낵 �룞�씪�븯寃� �옉�룞
	 * @return
	 */
	@RequestMapping(value="/blog/{blogAddress}", method=RequestMethod.GET)
	public String chTest4(@PathVariable("blogAddress") String blogAddress) {
		String userNo = blogRepository.selectUserNoByBlogAddress(blogAddress);
		return "blog/" + userNo + "/index";
	}
	
	/**
	 * 釉붾줈洹� ���옣�븯湲� 
	 */
	@RequestMapping(value="/saveBlog", method=RequestMethod.GET)
	public String SaveBlog(HttpServletRequest request, HttpSession session) {
		
		String userNo = String.valueOf(session.getAttribute("loginNo"));
		StringBuffer htmlBuffer = new StringBuffer();
		

		//	釉붾줈洹� 湲곕낯�젙蹂� 遺덈윭�삤湲�
		User blogBasicInfo = blogRepository.selectBlogBasicInfo(userNo);

		//	�뿤�뜑 �옉�꽦
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
		

		// 諛붾뵒 �옉�꽦
		StringBuffer bodyBuffer = new StringBuffer();
		bodyBuffer.append("<body ");
		
		// �슦�겢由� 諛⑹�
		if (blogBasicInfo.getConfigRightClickable() == 1) {
			bodyBuffer.append("oncontextmenu=\"return false\" "); 
		}
		
		// �뒪���씪
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
		

		// 釉붾줈洹� 硫붾돱 遺덈윭�삤湲�
		ArrayList<Integer> menuNoList = blogRepository.selectMenuNo(userNo);
		
		// �썝�럹�씠吏� �뿬遺� �솗�씤
		for (int menuNo : menuNoList) {
			StringBuffer menuBuffer = new StringBuffer();
			menuBuffer.append("<section class=\"menu-wrapper\">\n");
			// 釉붾줉 遺덈윭�삤湲�
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
		
		
		// ���옣 寃쎈줈
		// �뀒�뒪�듃 �꽌踰꾩씪 寃쎌슦 C:\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\DecoBlo_dev\ �뿉 ���옣
		String path = request.getSession().getServletContext().getRealPath("/");
		
        //�뙆�씪 媛앹껜 �깮�꽦
        File directory = new File(path + "WEB-INF/views/blog/"+ userNo);
        //!�몴瑜� 遺숈뿬二쇱뼱 �뙆�씪�씠 議댁옱�븯吏� �븡�뒗 寃쎌슦�쓽 議곌굔�쓣 嫄몄뼱以�
        if(!directory.isDirectory()){
            //�뵒�젆�넗由� �깮�꽦 硫붿꽌�뱶
        	directory.mkdirs();
        }
        
		// �뙆�씪 �벐湲� 
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
	@RequestMapping(value="updateBlockContentText",method=RequestMethod.POST)
	public @ResponseBody int updateBlockContentText(@RequestBody Block block) {
		int result = 0;
		System.out.println(block);
		result = blogRepository.updateBlockContentText(block);
		return result;
	}
	
}
