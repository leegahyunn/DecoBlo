package com.decoblog.www.stat.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.decoblog.www.stat.vo.Stat;

@Repository
public class StatRepository {
	@Autowired
	SqlSession session;
	
	/**
	 * 저장된 Stat 가져오기
	 * @return DB에 저장된 Stat
	 */
	public Stat selectnowstat() {
		StatMapper sm = session.getMapper(StatMapper.class);
		
		Stat stat = sm.selectnowstat();
		
		return stat;
	}
	

	
	
	
}
