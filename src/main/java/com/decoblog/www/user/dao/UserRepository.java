package com.decoblog.www.user.dao;

import java.io.UnsupportedEncodingException;

import javax.inject.Inject;
import javax.mail.MessagingException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.decoblog.www.user.vo.User;

@Repository
public class UserRepository {
	@Autowired
	SqlSession session;
	
	@Inject
	private JavaMailSender mailSender;

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
	
	public void create(User vo) {
		UserMapper mapper = session.getMapper(UserMapper.class);
		mapper.insertUser(vo); // 회원가입 DAO
	
		String key = new TempKey().getKey(50, false); // 인증키 생성
	
		mapper.createAuthKey(vo.getUserEmail(), key); // 인증키 DB저장
	
		// 메일 보내기
		MailHandler sendMail = null;
		try {
			sendMail = new MailHandler(mailSender);
			sendMail.setSubject("[DecoBlo 서비스 이메일 인증]");
			sendMail.setText(
			new StringBuffer().append("<h1>메일인증</h1>")
				.append("<a href='http://localhost:48080/www/user/emailConfirm?userEmail=")
				.append(vo.getUserEmail())
				.append("&key=")
				.append(key)
				.append("' target='_blenk'>이메일 인증 확인</a>").toString());
			sendMail.setFrom("decoblo35@gmail.com", "데코브로");
			sendMail.setTo(vo.getUserEmail());
			sendMail.send();
		} catch (MessagingException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 이메일 인증
	 * @param userEmail Get으로 전달받은 유저 이메일
	 * @param key Get으로 전달받은 key
	 * @return 인증 여부
	 */
	public int emailConfirm(String userEmail, String key) {
		int result = 0;
		
		UserMapper mapper = session.getMapper(UserMapper.class);
		mapper.emailConfirm(userEmail, key);
		
		return result;
	}
}
