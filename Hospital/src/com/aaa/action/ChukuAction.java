package com.aaa.action;

import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.aaa.entity.Chuku;
import com.aaa.entity.Chukuming;
import com.aaa.entity.Message;
import com.aaa.entity.Pager;
import com.aaa.service.ChukuService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@Scope("prototype")
public class ChukuAction extends BaseAction {
	@Autowired
	private ChukuService service;
	
	private Chuku chuku;
	private List<Chukuming> list;
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

public Chuku getChuku() {
		return chuku;
	}

	public void setChuku(Chuku chuku) {
		this.chuku = chuku;
	}

	public List<Chukuming> getList() {
		return list;
	}

	public void setList(List<Chukuming> list) {
		this.list = list;
	}

public ChukuService getService() {
		return service;
	}

	public void setService(ChukuService service) {
		this.service = service;
	}
private String name;

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}
//模糊查询库存的药品信息
public void findAll(){
	List<Map> list=service.findAll(name);
	System.out.println(list);
	this.getPrintWriter().print(JSONArray.fromObject(list));
 }
//查询医生信息
public void stuff(){
	 List<Map> list=service.stuff();
	 this.getPrintWriter().print(JSONArray.fromObject(list));
}
//一对多添加出库和出库明细表
public void addAll(){
	service.addAll(chuku, list);
	Message mess=new Message();
	mess.setMessage("成功");
	this.getPrintWriter().print(JSONObject.fromObject(mess));
}
//出库单查询
public String chukuC(){
	Pager p=service.chukuC(curPage, pageSize);
	System.out.println(p.getList());
	this.getRequest().put("p",p);
	return "chukuC";	
}
//出库明细表查询
	public void chukuM(){
		List<Map> list=service.chukuM(chuku);
		System.out.println(list);
		System.out.println(chuku.getCkId());
		this.getPrintWriter().print(JSONArray.fromObject(list));
	}
}
