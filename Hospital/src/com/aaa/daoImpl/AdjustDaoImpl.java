package com.aaa.daoImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.aaa.dao.AdjustDao;
import com.aaa.entity.Adjustprice;
import com.aaa.entity.Drug;
import com.aaa.entity.Pager;
import com.aaa.util.PageHibernateCallBack;
@Repository
public class AdjustDaoImpl implements AdjustDao {
 @Autowired
 private HibernateTemplate hibernateTemplate;
 
	//查询药品信息
	public List<Map> find(String name) {
		String hql="select new Map(d.did as did,d.dname as dname,d.zhuji as zhuji,d.spec as spec,d.tradePrice as tradePrice,d.retaiPrice as retaiPrice,ad.aname as aname,du.duName as duName) from Drug as d join d.address as ad join d.doseunit as du where d.zhuji like '%"+name+"%'";
		return this.hibernateTemplate.find(hql);
	}

	//修改药品信息
	public void update(Drug drug) {
		
	  Drug d=this.hibernateTemplate.get(Drug.class,drug.getDid());
	    d.setTradePrice(drug.getTradePrice());
		d.setRetaiPrice(drug.getRetaiPrice());
		/* String hql="update Drug as d set d.tradePrice=?,d.retaiParice=? where d.did=? ";
		this.hibernateTemplate.bulkUpdate(hql,drug.getRetaiPrice(),drug.getTradePrice(),drug.getDid());*/
		this.hibernateTemplate.update(d);
	}
	
	//添加药品调价单
	public void add(Adjustprice adjustprice) {
		this.hibernateTemplate.save(adjustprice);	
	}

	//查询药品调价表
	public Pager findPage(int curPage, int pageSize) {
		  String hql="from Adjustprice";
		   List list=this.hibernateTemplate.executeFind(new PageHibernateCallBack<List<Adjustprice>>(hql,null, curPage, pageSize));
		   int totalCount=Integer.valueOf(this.hibernateTemplate.find("select count(*) from Adjustprice").get(0).toString());
		   Pager p=new Pager(list, curPage, pageSize, totalCount);
		    
		return p;
	}

	

}
