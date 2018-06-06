package com.aaa.daoImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.aaa.dao.DrugDao;
import com.aaa.entity.Drug;
import com.aaa.entity.Pager;
import com.aaa.util.PageHibernateCallBack;
@Repository
public class DrugDaoImpl implements DrugDao{
  @Autowired
  private HibernateTemplate hibernateTemplate;
	
//	药品信息查询
	public Pager find(int curPage,int pageSize) {
		String hql="from Drug";
	List list=this.hibernateTemplate.executeFind(new PageHibernateCallBack<List<Drug>>(hql, null,curPage, pageSize));
	  int totalCount=Integer.valueOf(this.hibernateTemplate.find("select count(*) from Drug").get(0).toString()); 
	Pager p=new Pager(list, curPage, pageSize, totalCount);	
	return p;				
	}

	//修改前查询
	public Map updateFind(Drug d) {
		// TODO Auto-generated method stub
	    String hql="select new Map(d.did as did,d.dname as dname,d.spec as spec,d.zhuji as zhuji,d.stockPrice as stockprice,d.tradePrice as tradeprice,d.retaiPrice as retaiprice,d.dosage2 as dosage2,d.maxNum as maxNum,d.minNum as minNum ) from Drug d where did="+d.getDid();
	   System.out.println(this.hibernateTemplate.find(hql).get(0));
		return  (Map) this.hibernateTemplate.find(hql).get(0);
		
	}
	//修改
	public void update(Drug d) {	
		this.hibernateTemplate.update(d);
	}

//	添加
	public void save(Drug d) {
		this.hibernateTemplate.save(d);
		
	}

//删除
	public void delete(Drug d) {
		this.hibernateTemplate.delete(d);
		
	}

}                                                       
