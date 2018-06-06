<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
<title>药品调价记录表</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap-theme.min.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/zTree_v3/css/demo.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/zTree_v3/css/zTreeStyle/zTreeStyle.css">

<script
	src="${pageContext.request.contextPath}/resource/jquery-1.11.3.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resource/zTree_v3/js/jquery.ztree.all.min.js"></script>

  </head>
  
  <body>
   <table class="table table-hover" id="ta">
							<caption ><h1 style="color:blue">药品调价记录表</h1></caption>
							<thead>
								<tr>
								    <th>id</th>
									<th>助记码</th>
									<th>名称</th>
									<th>产地</th>
									<th>规格</th>
									<th>单位</th>
									<th>原批发价</th>
									<th>原零售价</th>
									<th>现批发价</th>
									<th>现零售价</th>
								</tr>
							</thead>
							<tbody id="ttt">
								<c:forEach items="${p.list}" var="a">
								     <tr>
								        <td>${a.apId}</td>
								        <td>${a.drug.zhuji}</td>
								        <td>${a.drug.dname}</td>
								        <td>${a.drug.address.aname}</td>
								        <td>${a.drug.spec}</td>
								        <td>${a.drug.doseunit.duName}</td>
								        <td>${a.tradePrice3}</td>
								        <td>${a.retailPrice3}</td>
								        <td>${a.drug.tradePrice}</td>
								        <td>${a.drug.retaiPrice}</td>							        
								     </tr>
								</c:forEach>
							</tbody>
						</table> 
						<a href="Adjust_findPage.action?curPage=${p.frist}">首页</a>
    	<a href="Adjust_findPage.action?curPage=${p.prev}">上页</a>
    	<a href="Adjust_findPage.action?curPage=${p.next}">下页</a>
    	<a href="Adjust_findPage.action?curPage=${p.last}">尾页</a>
    	当前${p.curPage}页/共${p.totalPage}页
  </body>
</html>
