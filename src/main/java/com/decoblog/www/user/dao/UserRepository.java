package com.decoblog.www.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.decoblog.www.user.vo.User;

@Repository
public class UserRepository {
	@Autowired
	SqlSession session;

	public User login(User user) {
		UserMapper mapper = session.getMapper(UserMapper.class);
		User result = mapper.login(user);
		return result;
	}
}
