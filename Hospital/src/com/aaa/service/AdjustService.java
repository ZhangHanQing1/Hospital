package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.entity.Adjustprice;
import com.aaa.entity.Drug;
import com.aaa.entity.Pager;

public interface AdjustService {
	//��ѯҩƷ��Ϣ
		public List<Map> find(String name);
		//�޸�ҩƷ��Ϣ,���ҩƷ���۵�
		public void saveAndUpdate(List<Adjustprice> a);
		
		//��ѯҩƷ���۱�
		public Pager  findPage(int curPage,int pageSize);
}
