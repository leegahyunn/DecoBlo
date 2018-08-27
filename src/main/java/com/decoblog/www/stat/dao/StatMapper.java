package com.decoblog.www.stat.dao;

import com.decoblog.www.stat.vo.Stat;

public interface StatMapper {

	/**
	 * 저장된 Stat 가져오기
	 * @return DB에 저장된 Stat
	 */
	public Stat selectnowstat();
	
}
