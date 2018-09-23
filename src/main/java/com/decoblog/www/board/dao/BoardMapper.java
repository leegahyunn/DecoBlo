package com.decoblog.www.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.decoblog.www.board.vo.Bbs;
import com.decoblog.www.board.vo.BbsAttach;
import com.decoblog.www.board.vo.Like;
import com.decoblog.www.board.vo.Reply;

public interface BoardMapper {
	
	
	/**************************************/
	/* BOARD ******************************/
	/**************************************/
	
	
	// 글 목록 + 검색
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

	
	/**************************************/
	/* LIKE *******************************/
	/**************************************/

	// 좋아요 목록
	public Like selectOneLike(@Param(value="likeUserNo") int likeUserNo, @Param(value="likeBbsNo") int likeBbsNo);
	
	// 좋아요 입력
	public int insertLike(Like like);
	
	// 좋아요 취소
	public int deleteLike(@Param(value="likeUserNo") int likeUserNo, @Param(value="likeBbsNo")int likeBbsNo);
	
	
	/**************************************/
	/* REPLY ******************************/
	/**************************************/
	
	// 댓글 목록
	public List<Reply> selectReply(int replyBbsNo);

	// 댓글 입력
	public int insertReply(Reply reply);

	// 댓글 삭제
	public int deleteReply(int replyNo);

	// 댓글 수정
	public int updateReply(Reply reply);
	
	
	/**************************************/
	/* STAT *******************************/
	/**************************************/

	// 글쓴이 데이터 받기
	
	public int selectuserno(int bbsNo);
	
	// 게시판 조 회 수 stat 넘기기
	
	public int inupStat(int userNo);
	
	// 게시판 삭제 stat 반영
	
	public int decreasebbscount(int userNo);
	
	// 리플 증가 stat 반영
	
	public int inputreplycount(int userNo);
	
	// 리플 감소 stat 반영
	
	public int decreasereplycount(int userNo);
	
	// 유저 정보 획득
	
	public int selectuserno2(int bbsno);
	
	// replyno 이용하여 정보 획득
	
	public int selectuserno3(int replyno);
	
	// 좋아요 감소 stat 반영
	
	public int decreaselike(int userno);
	
	// 좋아요 증가 stat 반영
	
	public int inputlike(int userno);
	
	// 좋아요 bbsno 유저 정보 획득
	
	public int selectuserno4(int bbsno);	
}
