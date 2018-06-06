package com.aaa.daoImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.aaa.dao.ChukuDao;
import com.aaa.entity.Chuku;
import com.aaa.entity.Chukuming;
import com.aaa.entity.Pager;
import com.aaa.util.PageHibernateCallBack;
@Repository
public class ChukuDaoImpl implements ChukuDao {
  @Autowired
  private HibernateTemplate hibernateTemplate;
  
	//ģ����ѯ���ҩƷ��Ϣ
	public List<Map> findAll(String name) {
		String hql="select new Map(k.totalNum4 as totalNum,d.did as did,d.dname as dname,d.zhuji as zhuji,d.spec as spec,d.retaiPrice as retaiPrice,ad.aname as aname) from Kuinventory as k join k.drug as d join k.drug.address as ad where d.zhuji like '%"+name+"%'";
		return this.hibernateTemplate.find(hql);
	}

	//��ѯҽ����Ϣ
	public List<Map> stuff() {
		String hql="select new Map(s.stuffid2 as stuffid,s.stuffname as stuffname) from Stuff as s";
		System.out.println(this.hibernateTemplate.find(hql));
		return this.hibernateTemplate.find(hql);
	}

	//һ�Զ���ӳ���ͳ�����ϸ��
	public void addAll(Chuku chuku) {
		this.hibernateTemplate.save(chuku);
		
	}
	//���ⵥ��ѯ
	public Pager chukuC(int curPage,int pageSize) {
		String hql="from Chuku";
		List list=this.hibernateTemplate.executeFind(new PageHibernateCallBack<List<Chuku>>(hql, null, curPage, pageSize));
		   //ת��Ϊint����
		int totalCount=Integer.valueOf(this.hibernateTemplate.find("select count(*) from Chuku").get(0).toString());
		Pager p=new Pager(list, curPage, pageSize, totalCount);
		return p;
	}
	//������ϸ���ѯ	,  
	@Override
	public List<Map>  chukuM(Chuku chuku) {
		String hql="select new Map(c.num3 as num3,c.totalPrice5 as totalPrice5,c.drug.dname as dname,c.drug.retaiPrice as retaiPrice,c.drug.spec as spec,c.drug.address.aname as aname,c.chuku.ckId as ckId) from Chukuming as c where c.chuku.ckId="+chuku.getCkId();
		 System.out.println(this.hibernateTemplate.find(hql));
		return this.hibernateTemplate.find(hql);
		
	}

}
