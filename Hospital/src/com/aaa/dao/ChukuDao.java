package com.aaa.dao;

import java.util.List;
import java.util.Map;

import com.aaa.entity.Chuku;
import com.aaa.entity.Chukuming;
import com.aaa.entity.Pager;

public interface ChukuDao {
//ģ����ѯ���ҩƷ��Ϣ
	public List<Map> findAll(String name);
	//��ѯҽ����Ϣ
	public List<Map> stuff();
	//һ�Զ���ӳ���ͳ�����ϸ��
	public void addAll(Chuku chuku);
	//���ⵥ��ѯ
	public Pager chukuC(int curPage,int pageSize);
	//������ϸ���ѯ
	public List<Map> chukuM(Chuku chuku);
}
