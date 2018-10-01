package com.decoblog.www.user.dao;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;

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
			sendMail.setSubject("[デコブロ]サービスメール認証");
			sendMail.setText(
					new StringBuffer()
						.append("<h1>メール認証</h1>")
						.append("<a href='http://localhost:48080/www/user/emailConfirm?userEmail=")
						.append(vo.getUserEmail())
						.append("&key=")
						.append(key)
						.append("' target='_blenk'>メール認証確認</a>")
						.toString()
					);
			sendMail.setFrom("decoblo35@gmail.com", "デコブロ");
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
		result = mapper.emailConfirm(userEmail, key);
		
		return result;
	}

	public User getProfile(String userNo) {
		User result = null;
		
		UserMapper mapper = session.getMapper(UserMapper.class);
		result = mapper.getProfile(userNo);
		
		return result;
	}

	/**
	 * 비밀번호 변경
	 * @param passwords
	 * @return
	 */
	public int changePassword(HashMap<String, String> passwords) {
		int result = 0;
		
		UserMapper mapper = session.getMapper(UserMapper.class);
		result = mapper.changePassword(passwords);
		
		return result;
	}

	/**
	 * 전체 회원수 조회	
	 * @return
	 */
	public int getNUser() {
		int result = 0;
		
		UserMapper mapper = session.getMapper(UserMapper.class);
		result = mapper.getNUser();
		
		return result;
	}
}
