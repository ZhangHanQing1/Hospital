<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
   
    <title>My JSP 'chuku.jsp' starting page</title>
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
     <table class="table table-hover">
							
							<thead>
								<tr>
								    <th>领取药房</th>
									
									<th>出库日期</th>
									<th>药房确认</th>	
								</tr>
							</thead>
							<tbody id="tbody">
								<c:forEach items="${p.list }" var="chu">
								   <tr>
								       <td>${chu.pharmacy.phName }</td>
								      
								       <td>${chu.ckDate }</td>
								       <td>${chu.audit.auName }</td>
								       <td><input type="button" value="查看详情" id="${chu.ckId }" class="xiang"/></td>
								   </tr>
								</c:forEach>
							</tbody>
							
						</table> 
						<a href="Chuku_chukuC.action?curPage=${p.frist}">首页</a>
    	<a href="Chuku_chukuC.action?curPage=${p.prev}">上页</a>
    	<a href="Chuku_chukuC.action?curPage=${p.next}">下页</a>
    	<a href="Chuku_chukuC.action?curPage=${p.last}">尾页</a>
    	当前${p.curPage}页/共${p.totalPage}页
 <input type="button" value="添加" id="save" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display:none;"/>
 	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close div-hidden" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">出库明细查询</h4>
				</div>
				<div class="modal-body">
					<table class="table table-hover">
						
						<thead>
							<tr>
								    <th>药品名称</th>
									<th>药品规格</th>
									<th>零售价</th>
									<th>出库数量</th>
									<th>零售额</th>
									<th>产地</th>
							</tr>
						</thead>
						<tbody id="ttbody">
                        
						</tbody>
					</table>
				</div>
				<div class="modal-footer div-hidden">
					<button type="button" class="btn btn-default" data-dismiss="modal"
						id="close-modal">关闭</button>
					
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
  </body>
</html>
<script>
$(".xiang").click(function(){
alert(this.id);
$("#save").click();
    $.ajax({
       url:"${pageContext.request.contextPath}/Chuku_chukuM.action",
       data:{"chuku.ckId":this.id},
       type:"post",
       dataType:"json",
       success:function(data){
       alert(data);
       $("#ttbody").html("");
        	for(var i=0;i<data.length;i++){
                  var tr="<tr>";  
                  tr+="<td>"+data[i].dname+"</td>";
                  tr+="<td>"+data[i].spec+"</td>";
                  tr+="<td>"+data[i].retaiPrice+"</td>";
                  tr+="<td>"+data[i].num3+"</td>";
                  tr+="<td>"+data[i].totalPrice5+"</td>";
                  tr+="<td>"+data[i].aname+"</td>";
                  tr+="</tr>";
                  $("#ttbody").append(tr);
                  
        	}
       }
     });
});
</script>