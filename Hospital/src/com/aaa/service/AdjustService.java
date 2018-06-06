package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.entity.Adjustprice;
import com.aaa.entity.Drug;
import com.aaa.entity.Pager;

public interface AdjustService {
	//查询药品信息
		public List<Map> find(String name);
		//修改药品信息,添加药品调价单
		public void saveAndUpdate(List<Adjustprice> a);
		
		//查询药品调价表
		public Pager  findPage(int curPage,int pageSize);
}
