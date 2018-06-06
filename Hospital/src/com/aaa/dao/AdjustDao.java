package com.aaa.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.aaa.entity.Adjustprice;
import com.aaa.entity.Drug;
import com.aaa.entity.Pager;

public interface AdjustDao {
//��ѯҩƷ��Ϣ
	public List<Map> find(String name);
	//�޸�ҩƷ��Ϣ
	public void update(Drug drug);
	//���ҩƷ���۵�
	public void add(Adjustprice adjustprice);
	//��ѯҩƷ���۱�
	public Pager findPage(int curPage,int pageSize);
}
