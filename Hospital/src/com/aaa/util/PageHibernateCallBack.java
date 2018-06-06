package com.aaa.util;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

public class PageHibernateCallBack<T> implements HibernateCallback<List<T>>{
    private String hql;
    private Object[] params;
    private int curPage;
    private int pageSize;
       //构造方法
	
	public PageHibernateCallBack(String hql, Object[] params, int curPage, int pageSize) {
		super();
		this.hql = hql;
		this.params = params;
		this.curPage = curPage;
		this.pageSize = pageSize;
	}

//通用分页方法
	public List<T> doInHibernate(Session session) throws HibernateException, SQLException {
		    Query query=session.createQuery(hql);
		    if(params!=null){
		    	for (int j = 0; j < params.length; j++) {
		    		query.setParameter(j, params[j]);		
				}
		    }
		    query.setFirstResult((curPage-1)*pageSize);
		    query.setMaxResults(pageSize);
		return query.list();
	}

}
