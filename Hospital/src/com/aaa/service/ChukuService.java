package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.entity.Chuku;
import com.aaa.entity.Chukuming;
import com.aaa.entity.Pager;

public interface ChukuService {
	//ģ����ѯ���ҩƷ��Ϣ
		public List<Map> findAll(String name);
		//��ѯҽ����Ϣ
		public List<Map> stuff();
		//һ�Զ���ӳ���ͳ�����ϸ��
		public void addAll(Chuku chuku,List<Chukuming> list);
		//���ⵥ��ѯ
		public Pager chukuC(int curPage,int pageSize);
		//������ϸ���ѯ
		public List<Map> chukuM(Chuku chuku);
}
