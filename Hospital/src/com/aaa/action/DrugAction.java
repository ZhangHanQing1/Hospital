package com.aaa.action;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.aaa.entity.Drug;
import com.aaa.entity.Message;
import com.aaa.entity.Pager;
import com.aaa.service.DrugService;

import net.sf.json.JSONObject;

@Controller
@Scope("prototype")
public class DrugAction extends BaseAction{
     @Autowired
     private DrugService  service;
     private Drug drug;
  
     
public Drug getDrug() {
		return drug;
	}

	public void setDrug(Drug drug) {
		this.drug = drug;
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

//查询药品信息
   public String find(){
	   System.out.println(curPage);
	  Pager p=service.find(curPage, pageSize);
      getRequest().put("p",p);
	  return "drugFind";
   }   
     
   //修改前查询
   public void updateFind(){
	Map map=service.updateFind(drug);
	   System.out.println(map);
	 this.getPrintWriter().print((JSONObject.fromObject(map)));
   }
   //修改or添加
   public void saveOrUpdate(){
	   service.saveOrUpdate(drug);
	   Message mess=new Message();
	   mess.setMessage("成功");
	   this.getPrintWriter().print(JSONObject.fromObject(mess));
   }
//   删除
   public void delete(){
	   service.delete(drug);
	   Message mess=new Message();
	   mess.setMessage("删除成功");
	   this.getPrintWriter().print(JSONObject.fromObject(mess));
	   
   }
}
