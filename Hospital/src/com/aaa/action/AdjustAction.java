package com.aaa.action;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.aaa.entity.Adjustprice;
import com.aaa.entity.Drug;
import com.aaa.entity.Message;
import com.aaa.entity.Pager;
import com.aaa.service.AdjustService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@Scope("prototype")
public class AdjustAction extends BaseAction {
@Autowired
private AdjustService  service;
private String name;

private List<Adjustprice> a;

public List<Adjustprice> getA() {
	return a;
}

public void setA(List<Adjustprice> a) {
	this.a = a;
}
private int curPage;
private int pageSize=2;

public int getCurPage() {
	return curPage;
}


public void setCurPage(int curPage) {
	this.curPage = curPage;
}


public int getPageSize() {
	return pageSize;
}


public void setPageSize(int pageSize) {
	this.pageSize = pageSize;
}


public String getName() {
	return name;
}


public void setName(String name) {
	this.name = name;
}


//查询药品信息
public void find(){
	System.out.println(name);
	List<Map> list=service.find(name);
	this.getPrintWriter().print(JSONArray.fromObject(list));
}
//修改药品信息,添加药品调价单
public void saveAndUpdate(){
  System.out.println("批发价"+a.get(0).getTradePrice3()+a.get(0).getDrug().getDid());
  System.out.println("批发价"+a.get(1).getTradePrice3()+a.get(1).getDrug().getDid());
	service.saveAndUpdate(a);	
	Message mess=new Message();
	mess.setMessage("成功");
	this.getPrintWriter().print(JSONObject.fromObject(mess));
}
//查询药品调价表
public String findPage(){
   Pager p=service.findPage(curPage, pageSize);
   this.getRequest().put("p",p);
	return "findPage";
	
}
}