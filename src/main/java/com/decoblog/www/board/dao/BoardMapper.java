package com.decoblog.www.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import com.decoblog.www.board.vo.Bbs;
import com.decoblog.www.board.vo.BbsAttach;

public interface BoardMapper {

	
	// 글 전체 조회 + 검색
	public List<Bbs> select(Map<String, Object> map, RowBounds rb);
	
	// 글 상세 조회
	public Bbs selectOneBbs(int bbsNo);
	// 첨부파일 상세 조회
	public BbsAttach selectOneBbsAttach(int bbsNo);
	
	// 글 쓰기
	public int insertBbs(Bbs bbs);
	// 첨부파일 입력
	public int insertBbsAttach(BbsAttach bbsAttach);
	
	
	// 글 삭제
	public int deleteBbs(int bbsNo);
	// 첨부파일 삭제
	public int deleteBbsAttach(int attachNo, int attachBbsNo);
	
	
	// 글 수정
	public int updateBbs(Bbs bbs);
	// 첨부파일 수정
	public int updateBbsAttach(int attachNo, int attachBbsNo);
	
	
	// 조회수 증가
	public int updateBbsCount(int bbsNo);
	// 글 전체 개수 조회
	public int getTotalBbs(Map<String, String> map);


}
