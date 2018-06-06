package com.aaa.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.aaa.entity.Adjustprice;
import com.aaa.entity.Drug;
import com.aaa.entity.Pager;

public interface AdjustDao {
//查询药品信息
	public List<Map> find(String name);
	//修改药品信息
	public void update(Drug drug);
	//添加药品调价单
	public void add(Adjustprice adjustprice);
	//查询药品调价表
	public Pager findPage(int curPage,int pageSize);
}
