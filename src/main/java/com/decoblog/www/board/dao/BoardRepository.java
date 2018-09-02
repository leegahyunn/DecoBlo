
package com.decoblog.www.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.decoblog.www.board.vo.Bbs;
import com.decoblog.www.board.vo.BbsAttach;
import com.decoblog.www.board.vo.Reply;

@Repository
public class BoardRepository {
	@Autowired
	SqlSession session;


	/**************************************/
	/* BOARD ******************************/
	/**************************************/
	
	
	// 글 목록 + 검색
	public List<Bbs> select(String searchItem, String searchWord, int startRecord, int countPerPage){
		
		// 포인터(특정 위치까지 옮겨줌) 생성
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		
		
		// Mapper로 넘겨주기
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		
		Map<String, Object> map = new HashMap<>();
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		
		List<Bbs> list = mapper.select(map,rb);
		
		
		return list;
	}
		
	// 글 상세 조회
	public Bbs selectOneBbs(int bbsNo) {
	
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		Bbs bbs = mapper.selectOneBbs(bbsNo);
		
		return bbs;
	}
	
	// 첨부파일 상세 조회
	public BbsAttach selectOneBbsAttach(int bbsNo) {
		
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		BbsAttach bbsAttach = mapper.selectOneBbsAttach(bbsNo);
		
		return bbsAttach;
	}
	
	
	
	// 글 쓰기
	public int insertBbs(Bbs bbs) {
		
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		int result = mapper.insertBbs(bbs);
		
		return result;
	}
	
	// 첨부파일 입력
	public int insertBbsAttach(BbsAttach bbsAttach) {
		
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		int result = mapper.insertBbsAttach(bbsAttach);
		
		return result;
	}
	
	
	// 글 삭제
	public int deleteBbs(int bbsNo) {
		
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		int result = mapper.deleteBbs(bbsNo);
		
		return result;
	}
	// 첨부파일 삭제
	public int deleteBbsAttach(int attachNo, int attachBbsNo) {
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		int result = mapper.deleteBbsAttach(attachNo, attachBbsNo);
		
		return result;
		
	}
	
	
	// 글 수정
	public int updateBbs(Bbs bbs) {
		
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		int result = mapper.updateBbs(bbs);
		
		return result;
	}
	// 첨부파일 수정
	public int updateBbsAttach(int attachNo, int attachBbsNo) {
		
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		int result = mapper.updateBbsAttach(attachNo, attachBbsNo);
		
		return result;
	}
	
	
	// 조회수 증가
	public int updateBbsCount(int bbsNo) {
		
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		int result = mapper.updateBbsCount(bbsNo);
		
		return result;
	}

	// 글 전체 개수 조회
	public int getTotalBbs(String searchItem, String searchWord) {
		
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		
		Map<String, String>map = new HashMap<>();
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord );
		
		int total = mapper.getTotalBbs(map);
		
		return total;
	}


	
	
	/**************************************/
	/* REPLY ******************************/
	/**************************************/
	
	// 댓글 목록
	public List<Reply> selectReply(int replyBbsNo) {
		
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		List<Reply> replyList = mapper.selectReply(replyBbsNo);
		
		return replyList;
	}

	
	// 댓글 입력
	public int insertReply(Reply reply) {
		
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		int result = mapper.insertReply(reply);
		
		return result;
	}

	
	// 댓글 삭제
	public int deleteReply(int replyNo) {

		BoardMapper mapper = session.getMapper(BoardMapper.class);
		int result = mapper.deleteReply(replyNo);
		
		return result;
	}

	
	// 댓글 수정
	public int updateReply(Reply reply) {
		
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		int result = mapper.updateReply(reply);
		
		return result;
	}
	

	
}
