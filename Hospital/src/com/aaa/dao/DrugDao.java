package com.aaa.dao;

import java.util.List;
import java.util.Map;

import com.aaa.entity.Drug;
import com.aaa.entity.Pager;

public interface DrugDao {
//ҩƷ��Ϣ��ѯ
	public Pager find(int curPage,int pageSize);
//�޸�ǰ��ѯ
	public Map updateFind(Drug d);
	//�޸�
	public void update(Drug d);
	//���
		public void save(Drug d);
//	ɾ��
		 public void delete(Drug d);
}
