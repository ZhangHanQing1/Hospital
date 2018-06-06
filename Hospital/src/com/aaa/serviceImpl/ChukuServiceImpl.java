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
//模糊查询库存药品信息

	@Override
	public List<Map> findAll(String name) {
		// TODO Auto-generated method stub
		return dao.findAll(name);
	}
	//查询医生信息

	@Override
	public List<Map> stuff() {
		// TODO Auto-generated method stub
		return dao.stuff();
	}
	//一对多添加出库和出库明细表
	public void addAll(Chuku chuku, List<Chukuming> list) {
//	修改状态为“1”，
		Audit audit=new Audit();
		audit.setAuId(1);
		chuku.setAudit(audit);
		
		 for (Chukuming chukuming : list) {
			   //获取出库明细表的数量
			 int num=chukuming.getNum3();
			 System.out.println(num);
			 //获取库存对象里面的库存
			 
			   
			chuku.getChukumings().add(chukuming);
			
			chukuming.setChuku(chuku);
		}
		 dao.addAll(chuku);
	}

	//出库单查询
	public Pager chukuC(int curPage, int pageSize) {
		// TODO Auto-generated method stub
		return dao.chukuC(curPage, pageSize);
	}

	//出库明细表查询
	@Override
	public List<Map> chukuM(Chuku chuku) {
		
		return dao.chukuM(chuku);
	}

	
		

	

}
