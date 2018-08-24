package com.decoblog.www.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.decoblog.www.user.vo.User;

@Repository
public class UserRepository {
	@Autowired
	SqlSession session;

	/**
	 * 로그인
	 * @param user 로그인 할 유저 정보
	 * @return 로그인 된 유저 정보
	 */
	public User login(User user) {
		UserMapper mapper = session.getMapper(UserMapper.class);
		User result = mapper.login(user);
		return result;
	}
}
