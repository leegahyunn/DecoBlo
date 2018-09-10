package com.decoblog.www.stat.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.decoblog.www.stat.vo.Stat;

public interface StatMapper {

	/**
	 * 저장된 Stat 가져오기
	 * @return DB에 저장된 Stat
	 */
	public Stat selectnowstat(int loginNo);
	public Stat selectdate(String date,int loginNo);
	public Stat selectweek(@Param("startdate") String startdate,@Param("enddate") String enddate,int loginNo);
	public List<Stat> selectchart(int loginNo);
	public List<Stat> selectmchart(int loginNo);
	public List<Stat> selectweekchart(int loginNo);
	public Stat nowmoth(int loginNo); 
	public Stat nowweek(int loginNo); 
	
}
