package com.decoblog.www.stat.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
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
	public Stat selectnowstat(int loginNo) {
		StatMapper sm = session.getMapper(StatMapper.class);
		
		Stat stat = sm.selectnowstat(loginNo);
		
		return stat;
	}
	
	
	public Stat selectdate(String date,int loginNo) {
		StatMapper sm = session.getMapper(StatMapper.class);
		
		Stat stat = sm.selectdate(date,loginNo);
		
		return stat;
	}
	
	public Stat selectweek(@Param("startdate") String startdate,@Param("enddate") String enddate,int loginNo){
		StatMapper sm = session.getMapper(StatMapper.class);
		Stat stat = sm.selectweek(startdate, enddate,loginNo);
		
		return stat;
		
	}
	
	public List<Stat> selectchart(int loginNo){
		StatMapper sm = session.getMapper(StatMapper.class);
		List<Stat> stat = sm.selectchart(loginNo);
		
		return stat;
	}
	
	public List<Stat> selectweekchart(int loginNo){
		StatMapper sm = session.getMapper(StatMapper.class);
		List<Stat> stat = sm.selectweekchart(loginNo);
		
		return stat;
	}
	
	
	public List<Stat> selectmchart(int loginNo){
		StatMapper sm = session.getMapper(StatMapper.class);
		List<Stat> stat = sm.selectmchart(loginNo);
		
		return stat;
	}
	
	public Stat nowmoth(int loginNo){
		StatMapper sm = session.getMapper(StatMapper.class);
		Stat stat = sm.nowmoth(loginNo);
		
		return stat;
	}
	public Stat nowweek(int loginNo) {
		StatMapper sm = session.getMapper(StatMapper.class);
		Stat stat = sm.nowweek(loginNo);
		
		return stat;
	}
	
}
