package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.entity.Chuku;
import com.aaa.entity.Chukuming;
import com.aaa.entity.Pager;

public interface ChukuService {
	//模糊查询库存药品信息
		public List<Map> findAll(String name);
		//查询医生信息
		public List<Map> stuff();
		//一对多添加出库和出库明细表
		public void addAll(Chuku chuku,List<Chukuming> list);
		//出库单查询
		public Pager chukuC(int curPage,int pageSize);
		//出库明细表查询
		public List<Map> chukuM(Chuku chuku);
}
