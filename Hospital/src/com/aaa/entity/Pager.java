package com.aaa.entity;

import java.util.List;

public class Pager {
  private List list;//数据集合
  private int curPage;//当前页
  private int pageSize;//每页的条数
  private int totalCount;//总条数
  private int totalPage;//总页数=总条数/每页的条数
  private int frist;//首页
  private int prev;//上页=当前页小于等于一的时候值为一，大于一的时候当前页减一
  private int next;//下页>=总页数的时候值为总页数，否则当前页加一；
  private int last;//尾页=总页数
public List getList() {
	return list;
}
public void setList(List list) {
	this.list = list;
}
public int getCurPage() {
	return curPage;
}
public void setCurPage(int curPage) {
	if(curPage<1){
		curPage=1;
	}else{
	this.curPage = curPage;
			}
}
public int getPageSize() {
	return pageSize;
}
public void setPageSize(int pageSize) {
	this.pageSize = pageSize;
}
public int getTotalCount() {
	return totalCount;
}
public void setTotalCount(int totalCount) {
	this.totalCount = totalCount;
}
public int getTotalPage() {
	return getTotalCount()%getPageSize()==0?getTotalCount()/getPageSize():getTotalCount()/getPageSize()+1;
}

public int getFrist() {
	return 1;
}

public int getPrev() {
	return getCurPage()<=1?1:getCurPage()-1;
}

public int getNext() {
	return getCurPage()>=getTotalPage()?getTotalPage():getCurPage()+1;
}

public int getLast() {
	return getTotalPage();
}

public Pager(List list, int curPage, int pageSize, int totalCount) {
	super();
	this.list = list;
	this.curPage = curPage;
	this.pageSize = pageSize;
	this.totalCount = totalCount;
}
public Pager() {
	super();
	// TODO Auto-generated constructor stub
}
 
  
  
}
