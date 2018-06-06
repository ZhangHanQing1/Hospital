package com.aaa.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.transaction.RollbackException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.dao.AdjustDao;
import com.aaa.entity.Adjustprice;
import com.aaa.entity.Drug;
import com.aaa.entity.Pager;
@Service
public class AdjustService implements com.aaa.service.AdjustService {
@Autowired
private AdjustDao dao;
//��ѯҩƷ��Ϣ
	public List<Map> find(String name) {
		// TODO Auto-generated method stub
		return dao.find(name);
	}

	//�޸�ҩƷ��Ϣ,���ҩƷ���۵�
	@Transactional
	public void saveAndUpdate(List<Adjustprice> a) {
      for (int i = 0; i <a.size(); i++) {
//    	  ���ҩƷ������Ϣ
		 dao.add(a.get(i));
//		   �޸�ҩƷ��Ϣ
		dao.update(a.get(i).getDrug());
			
		}
	}
	//��ѯҩƷ���۱�
	public Pager findPage(int curPage, int pageSize) {
		// TODO Auto-generated method stub
		return dao.findPage(curPage, pageSize);
	}

}
