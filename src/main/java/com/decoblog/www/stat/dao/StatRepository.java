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
	public Stat selectnowstat() {
		StatMapper sm = session.getMapper(StatMapper.class);
		
		Stat stat = sm.selectnowstat();
		
		return stat;
	}
	
	
	public Stat selectdate(String date) {
		StatMapper sm = session.getMapper(StatMapper.class);
		
		Stat stat = sm.selectdate(date);
		
		return stat;
	}
	
	public Stat selectweek(@Param("startdate") String startdate,@Param("enddate") String enddate){
		StatMapper sm = session.getMapper(StatMapper.class);
		Stat stat = sm.selectweek(startdate, enddate);
		
		return stat;
		
	}
	
	public List<Stat> selectchart(){
		StatMapper sm = session.getMapper(StatMapper.class);
		List<Stat> stat = sm.selectchart();
		
		return stat;
	}
	
	public List<Stat> selectweekchart(){
		StatMapper sm = session.getMapper(StatMapper.class);
		List<Stat> stat = sm.selectweekchart();
		
		return stat;
	}
	
	
	public List<Stat> selectmchart(){
		StatMapper sm = session.getMapper(StatMapper.class);
		List<Stat> stat = sm.selectmchart();
		
		return stat;
	}
	
	public Stat nowmoth(){
		StatMapper sm = session.getMapper(StatMapper.class);
		Stat stat = sm.nowmoth();
		
		return stat;
	}
	public Stat nowweek() {
		StatMapper sm = session.getMapper(StatMapper.class);
		Stat stat = sm.nowweek();
		
		return stat;
	}
	
}
