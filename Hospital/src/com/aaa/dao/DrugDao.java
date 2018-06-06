package com.aaa.dao;

import java.util.List;
import java.util.Map;

import com.aaa.entity.Drug;
import com.aaa.entity.Pager;

public interface DrugDao {
//药品信息查询
	public Pager find(int curPage,int pageSize);
//修改前查询
	public Map updateFind(Drug d);
	//修改
	public void update(Drug d);
	//添加
		public void save(Drug d);
//	删除
		 public void delete(Drug d);
}
