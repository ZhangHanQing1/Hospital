package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.entity.Drug;
import com.aaa.entity.Pager;

public interface DrugService {
	//ҩƷ��Ϣ��ѯ
	public Pager find(int curPage,int pageSize);
	//�޸�ǰ��ѯ
		public Map updateFind(Drug d);
		//�޸�or���
		public void saveOrUpdate(Drug d);
//		ɾ��
			 public void delete(Drug d);
		
}
