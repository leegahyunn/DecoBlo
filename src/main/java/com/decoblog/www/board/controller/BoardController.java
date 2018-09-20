package com.decoblog.www.board.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.decoblog.www.board.dao.BoardRepository;
import com.decoblog.www.board.vo.Bbs;
import com.decoblog.www.board.vo.BbsAttach;
import com.decoblog.www.board.vo.BbsAttachUpload;
import com.decoblog.www.board.vo.Like;
import com.decoblog.www.board.vo.PageNavigator;
import com.decoblog.www.board.vo.Reply;
import com.decoblog.www.stat.dao.StatRepository;

@Controller
public class BoardController {
	@Autowired
	BoardRepository repository;
	

	
	SqlSession session;
	final String uploadPath = "/uploadPath";

	final int COUNT_PER_PAGE = 10;
	final int PAGE_PER_GROUP = 5;
	
	

	/**************************************/
	/* BOARD ******************************/
	/**************************************/
	
	// 글 목록 화면 요청
	@RequestMapping(value = "/bbsList", method = RequestMethod.GET)
	public String listboard(Model model, @RequestParam(value = "currentPage", defaultValue = "1") int currentPage,
			@RequestParam(value = "searchItem", defaultValue = "bbsTitle") String searchItem,
			@RequestParam(value = "searchWord", defaultValue = "") String searchWord) {

		// Repository로 넘겨주기
		int totalRecordCount = repository.getTotalBbs(searchItem, searchWord);

		// 페이지네비게이터 생성
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);

		List<Bbs> bbsList = repository.select(searchItem, searchWord, navi.getStartRecord(), navi.getCountPerPage());

		model.addAttribute("bbsList", bbsList);
		model.addAttribute("searchItem", searchItem);
		model.addAttribute("searchWord", searchWord);
		model.addAttribute("navi", navi);
		model.addAttribute("currentPage", currentPage);

		return "common/notice";
	}

	// 글 상세보기
	@RequestMapping(value = "/bbsDetail", method = RequestMethod.GET)
	public String selectOneBbs(Model model, int bbsNo,
			@RequestParam(value = "currentPage", defaultValue = "1") int currentPage,
			@RequestParam(value = "searchItem", defaultValue = "bbsTitle") String searchItem,
			@RequestParam(value = "searchWord", defaultValue = "") String searchWord) {
		
		// 글쓴 유저 번호 받기
		Bbs bbsDetail = repository.selectOneBbs(bbsNo);
		int userNo = (int)repository.selectuserno(bbsNo);
		System.out.println(userNo);
		// 글쓴 유저 번호를 이용하여  오늘데이터가 없으면 insert 있으면 update
		int result = (int)repository.inupStat(userNo);
		System.out.println(result);
		
		// 조회수 +1
		repository.updateBbsCount(bbsNo);

		// 글목록
		int totalRecordCount = repository.getTotalBbs(searchItem, searchWord);
		PageNavigator navi = new PageNavigator(currentPage, totalRecordCount);

		List<Bbs> bbsList = repository.select(searchItem, searchWord, navi.getStartRecord(), navi.getCountPerPage());
		
		model.addAttribute("bbsList", bbsList);
		model.addAttribute("bbsDetail", bbsDetail);

		return "common/bbsDetail";
	}

	// 글쓰기 화면 요청
	@RequestMapping(value = "/writeBbs", method = RequestMethod.GET)
	public String writeBbs(Model model, @RequestParam(value = "bbsNo", defaultValue = "0") int bbsNo,
			@RequestParam(value = "bbsParent", defaultValue = "0") int bbsParent, String type) {

		model.addAttribute("bbsNo", bbsNo);
		model.addAttribute("bbsParent", bbsParent);
		model.addAttribute("type", type);

		if (type.equals("update")) {
			model.addAttribute("bbs", repository.selectOneBbs(bbsNo));
		}
		return "common/bbsWrite";
	}

	// 글쓰기 + 첨부파일 DB
	@RequestMapping(value = "/writeBbs", method = RequestMethod.POST)
	public String writeBbs(Bbs bbs, BbsAttach bbsAttach, String type,  MultipartFile upload) {

		if (type.equals("write")) {
			repository.insertBbs(bbs);
		} else if (type.equals("update")) {
			repository.updateBbs(bbs);
		}

		return "redirect:bbsList";
	}

/*	// 글 수정 화면 요청
	@RequestMapping(value = "/updateBbs", method = RequestMethod.GET)
	public String updateBbs(Model model, int bbsNo) {

		Bbs bbsUpdate = repository.selectOneBbs(bbsNo);
		model.addAttribute("bbsUpdate", bbsUpdate);

		return "common/bbsUpdate";
	}

	// 글 수정 DB
	@RequestMapping(value = "/updateBbs", method = RequestMethod.POST)
	public String updateBbs(Bbs bbs, MultipartFile upload) {

		// 수정할 글 가져오기
		Bbs bbsUpdate = repository.selectOneBbs(bbs.getBbsNo());
		// 수정한 글 넣어주기
		repository.updateBbs(bbs);

		// 만약 첨부파일 있을 시

		return "redirect:bbsList";
	}
*/
	// 글 삭제
	@RequestMapping(value = "/deleteBbs", method = RequestMethod.GET)
	public String deleteBbs(int bbsNo,HttpSession session) {
		
		// 첨부파일 삭제
		int result = repository.deleteBbs(bbsNo);

		//세션에서 로그인 데이터 받아고기
		int userNo = (int)session.getAttribute("loginNo");
		System.out.println(userNo);
		
		//삭제시 stat에도 반영
		int statdel = repository.decreasebbscount(userNo);
		System.out.println(statdel);
		
		
		return "redirect:bbsList";
	}
	
	
	/**************************************/
	/* FILEUPLOAD *************************/
	/**************************************/
	@RequestMapping(value="/ckeditorImageUpload")
	public void ckeditorImageUpload(BbsAttachUpload BbsAttachUpload, HttpServletRequest request, HttpServletResponse response, Model model) throws IOException{
	
		System.out.println("컨트롤러");
		System.out.println(System.getProperty("user.home"));
		
		HttpSession session = request.getSession(); 
		String root_path = session.getServletContext().getRealPath("/"); // 웹서비스 root 경로 
		String attachPath = "resources/imgUpload/"; 

		String originalFilename = BbsAttachUpload.getUpload().getOriginalFilename();
		
		// 파일 만들어 두기
		String filePath = System.getProperty("user.home") + "/Decoblo/imgs/" + BbsAttachUpload.getUpload().getOriginalFilename();
		
		
		PrintWriter printWriter = null;
		MultipartFile upload = BbsAttachUpload.getUpload(); 
		
		String fileName = ""; 
		
		String CKEditorFuncNum = ""; 
		
			if (upload != null) { 
				fileName = upload.getOriginalFilename(); 
				BbsAttachUpload.setFilename(fileName); 
				
				CKEditorFuncNum = BbsAttachUpload.getCKEditorFuncNum(); 
				
					try { 
						File file = new File(filePath); 
						upload.transferTo(file); 
						
						} catch (IOException e) { 
							e.printStackTrace(); } 
			}
			
			 printWriter = response.getWriter();

		     String fileUrl = "getImg/" + fileName;
		     
		     String text = "{\"uploaded\": 1, \"fileName\": \"" + fileName + "\", \"url\": \"" + fileUrl + "\"}";
		     printWriter.print(text);
		     
		     printWriter.flush();
			
			String file_path = attachPath + fileName; 
			model.addAttribute("file_path", file_path); 
			model.addAttribute("CKEditorFuncNum", CKEditorFuncNum);
			
	}
	
	
	   //ckeditor 이미지 첨부 후 다시 해당 이미지 불러오는 request
	   @RequestMapping(value = "/getImg/{fileName}", method = RequestMethod.GET)
	   public void getImage(@PathVariable("fileName") String fileName, HttpServletResponse response) throws Exception {
	      // fileName 부분이 업로드한 그림파일 이름입니다.
	      // 파일이 있는 위치는 다음과 같구요
	      // 참고로 확장자는 입력이 안 되는지라... 그 부분은 잘 생각해 보시면 됩니다 ^^...
	      String filePath = System.getProperty("user.home") + "/Decoblo/imgs/" + fileName + ".jpg";
	      
	      System.out.println(filePath);
	      
	      File f = new File(filePath);
	      // 이제 파일을 보내주면 됩니다.
	      FileInputStream fis = new FileInputStream(f);
	      FileCopyUtils.copy(fis, response.getOutputStream());
	   }
	
	
	/**************************************/
	/* LIKE *******************************/
	/**************************************/
	
	// 좋아요 목록
	@RequestMapping(value="/likeList", method=RequestMethod.GET)
	public @ResponseBody String likeList(int likeBbsNo, Model model, HttpSession session) {
		
		int likeUserNo = (int)session.getAttribute("loginNo");
		Like like = repository.selecOneLike(likeUserNo, likeBbsNo);
		model.addAttribute("like", like);
		
		if (like == null) {
			return "false";
		} else {
			return "true";
		}
	}
	
	// 좋아요 입력
	@RequestMapping(value="/insertLike", method= RequestMethod.POST)
	public @ResponseBody String insertLike(@RequestBody Like like, HttpSession session) {
		
		like.setLikeUserNo((int)session.getAttribute("loginNo"));
		int result = repository.insertLike(like);
		
		int bbsno = like.getLikeBbsNo();
		int userno = repository.selectuserno4(bbsno);
		int inputstat = repository.inputlike(userno); 
		System.out.println(inputstat);
		
		return "redirect:/bbsDetail";
	}
	
	// 좋아요 취소
	@RequestMapping(value="/deleteLike", method= RequestMethod.POST)
	public @ResponseBody String deleteLike(int likeBbsNo, HttpSession session) {
		
		int bbsno = likeBbsNo;
		int userno = repository.selectuserno4(bbsno);
		int inputstat = repository.inputlike(userno); 
		System.out.println(inputstat);
		
		int likeUserNo = (int)session.getAttribute("loginNo");
		int result = repository.deleteLike(likeUserNo, likeBbsNo);
		
		
		return "redirect:/bbsDetail";
	}
	
	
	
	
	
	/**************************************/
	/* REPLY ******************************/
	/**************************************/
	
	// 댓글 목록
	@RequestMapping(value="/replyList", method=RequestMethod.GET)
	public @ResponseBody List<Reply> replyList(int replyBbsNo) {
		
		List<Reply> replyList = repository.selectReply(replyBbsNo);
		
		return replyList;
	}
	
	// 댓글 입력
	@RequestMapping(value="/replySave", method=RequestMethod.POST)
	public @ResponseBody Integer replySave (@RequestBody Reply reply, HttpSession session, Model model
											, @RequestParam(value = "replyBbsNo", defaultValue = "0") int replyBbsNo
											, @RequestParam(value = "replyParent", defaultValue = "0") int replyParent) {
		
		model.addAttribute("replyBbsNo", replyBbsNo);
		model.addAttribute("replyParent", replyParent);
		
		
		reply.setReplyRegUser((int)session.getAttribute("loginNo"));
		int result = repository.insertReply(reply);
		
		//replybbsno 획득 후 조인하여 stat 반영
		int bbsno = reply.getReplyBbsNo();
		
		
		int userNo = repository.selectuserno2(bbsno);
		
		
		int statresult = repository.inputreplycount(userNo);
		
		
		return result;
		
	}
	
	
	// 댓글 삭제
	@RequestMapping(value="/replyDelete", method=RequestMethod.GET)
	public @ResponseBody Integer replyDelete(int replyNo) {
		
		int userno = repository.selectuserno3(replyNo);
		
		int delstat = repository.decreasereplycount(userno);
		
		int result = repository.deleteReply(replyNo);
		
		System.out.println(delstat);
		
		
		return result;
	}
	
	
	// 댓글 수정
	@RequestMapping(value="/replyUpdate", method=RequestMethod.POST)
	public @ResponseBody Integer replyUpdate(@RequestBody Reply reply) {
		
		int result = repository.updateReply(reply);
		
		return result;
	}
	
	
	
	
	

}
