package com.decoblog.www.stat.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.decoblog.www.stat.vo.Stat;

public interface StatMapper {

	/**
	 * 저장된 Stat 가져오기
	 * @return DB에 저장된 Stat
	 */
	public Stat selectnowstat();
	public Stat selectdate(String date);
	public Stat selectweek(@Param("startdate") String startdate,@Param("enddate") String enddate);
	public List<Stat> selectchart();
	public List<Stat> selectmchart();
	public List<Stat> selectweekchart();
	public Stat nowmoth(); 
	public Stat nowweek(); 
}
