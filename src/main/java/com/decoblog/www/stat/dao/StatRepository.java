package com.decoblog.www.stat.dao;

import java.util.ArrayList;


import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.decoblog.www.stat.vo.Stat;

@Repository
public class StatRepository {
	@Autowired
	SqlSession session;
	
	public Stat selectnowstat() {
		StatMapper sm = session.getMapper(StatMapper.class);
		
		Stat stat = sm.selectnowstat();
		
		return stat;
	}
	

	
	
	
}
