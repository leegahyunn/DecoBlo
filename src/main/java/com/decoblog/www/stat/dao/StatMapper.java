package com.decoblog.www.stat.dao;

import java.util.ArrayList;


import org.apache.ibatis.annotations.Param;

import com.decoblog.www.stat.vo.Stat;

public interface StatMapper {

	public Stat selectnowstat();
	
}
