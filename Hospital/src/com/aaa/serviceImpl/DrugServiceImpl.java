package com.aaa.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DaoSupport;
import org.springframework.stereotype.Service;

import com.aaa.dao.DrugDao;
import com.aaa.entity.Drug;
import com.aaa.entity.Pager;
import com.aaa.service.DrugService;
@Service
public class DrugServiceImpl implements DrugService {
  @Autowired
  private DrugDao dao;
	public DrugDao getDao() {
	return dao;
}
public void setDao(DrugDao dao) {
	this.dao = dao;
}

/*��ѯҩƷ��Ϣ*/
public Pager find(int curPage,int pageSize){
	return dao.find(curPage, pageSize);
};
	//�޸�ǰ��ѯ
@Override
public Map updateFind(Drug d) {
	// TODO Auto-generated method stub
	System.out.println(dao.updateFind(d));
	return dao.updateFind(d);
}
//�޸�
public void saveOrUpdate(Drug d){
	if(d.getDid()!=null&&d.getDid()>0){
		dao.update(d);
	}else{
		dao.save(d);
	}
	 
	
}
//ɾ��
public void delete(Drug d) {
	dao.delete(d);
}

}
