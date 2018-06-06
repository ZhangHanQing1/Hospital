package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.entity.Drug;
import com.aaa.entity.Pager;

public interface DrugService {
	//药品信息查询
	public Pager find(int curPage,int pageSize);
	//修改前查询
		public Map updateFind(Drug d);
		//修改or添加
		public void saveOrUpdate(Drug d);
//		删除
			 public void delete(Drug d);
		
}
