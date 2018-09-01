package com.decoblog.www.user.dao;

import java.util.HashMap;

import com.decoblog.www.user.vo.User;

public interface UserMapper {
	
	/**
	 * 로그인
	 * @param user 로그인할 User 정보
	 * @return 로그인 된 User 정보
	 */
	User login(User user);

	/**
	 * 회원가입
	 * @param vo 회원가입 할 유저정보
	 * @return	Insert 개수
	 */
	int insertUser(User vo);

	/**
	 * 인증키 삽입 (Update)
	 * @param userEmail 해당 유저의 이메일
	 * @param key 인증키
	 * @return
	 */
	int createAuthKey(String userEmail, String key);

	/**
	 * 이메일 인증 (Update)
	 * 이메일과 key가 일치하면 key를 삭제함
	 * @param userEmail	Get으로 전달받은 userEmail
	 * @param key Get으로 전달받은 key
	 * @return 일치여부
	 */
	int emailConfirm(String userEmail, String key);

	/**
	 * 유저 정보 가져오기
	 * @param userNo 가져올 유저의 고유 번호
	 * @return 유저 정보
	 */
	User getProfile(String userNo);

	/**
	 * 비밀번호 변경
	 * @param passwords 바꿀 비밀번호 정보 (유저번호, 기존 비밀번호, 새 비밀번호)
	 * @return
	 */
	int changePassword(HashMap<String, String> passwords);

}
