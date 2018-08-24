package com.decoblog.www.user.dao;

import com.decoblog.www.user.vo.User;

public interface UserMapper {
	
	/**
	 * 로그인
	 * @param user 로그인할 User 정보
	 * @return 로그인 된 User 정보
	 */
	User login(User user);

}
