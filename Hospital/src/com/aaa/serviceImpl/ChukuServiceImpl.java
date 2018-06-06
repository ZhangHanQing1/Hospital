package com.aaa.serviceImpl;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.dao.ChukuDao;
import com.aaa.entity.Audit;
import com.aaa.entity.Chuku;
import com.aaa.entity.Chukuming;
import com.aaa.entity.Kuinventory;
import com.aaa.entity.Pager;
import com.aaa.service.ChukuService;
@Service
public class ChukuServiceImpl implements ChukuService{
  @Autowired
  private ChukuDao dao;
  
	public ChukuDao getDao() {
	return dao;
}

public void setDao(ChukuDao dao) {
	this.dao = dao;
}
//ģ����ѯ���ҩƷ��Ϣ

	@Override
	public List<Map> findAll(String name) {
		// TODO Auto-generated method stub
		return dao.findAll(name);
	}
	//��ѯҽ����Ϣ

	@Override
	public List<Map> stuff() {
		// TODO Auto-generated method stub
		return dao.stuff();
	}
	//һ�Զ���ӳ���ͳ�����ϸ��
	public void addAll(Chuku chuku, List<Chukuming> list) {
//	�޸�״̬Ϊ��1����
		Audit audit=new Audit();
		audit.setAuId(1);
		chuku.setAudit(audit);
		
		 for (Chukuming chukuming : list) {
			   //��ȡ������ϸ�������
			 int num=chukuming.getNum3();
			 System.out.println(num);
			 //��ȡ����������Ŀ��
			 
			   
			chuku.getChukumings().add(chukuming);
			
			chukuming.setChuku(chuku);
		}
		 dao.addAll(chuku);
	}

	//���ⵥ��ѯ
	public Pager chukuC(int curPage, int pageSize) {
		// TODO Auto-generated method stub
		return dao.chukuC(curPage, pageSize);
	}

	//������ϸ���ѯ
	@Override
	public List<Map> chukuM(Chuku chuku) {
		
		return dao.chukuM(chuku);
	}

	
		

	

}
