package com.aaa.entity;

import java.util.List;

public class Pager {
  private List list;//���ݼ���
  private int curPage;//��ǰҳ
  private int pageSize;//ÿҳ������
  private int totalCount;//������
  private int totalPage;//��ҳ��=������/ÿҳ������
  private int frist;//��ҳ
  private int prev;//��ҳ=��ǰҳС�ڵ���һ��ʱ��ֵΪһ������һ��ʱ��ǰҳ��һ
  private int next;//��ҳ>=��ҳ����ʱ��ֵΪ��ҳ��������ǰҳ��һ��
  private int last;//βҳ=��ҳ��
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
