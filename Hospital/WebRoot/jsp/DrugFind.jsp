<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>

<head>
	<meta charset="utf-8"> 
	<title>Bootstrap 实例 - 模态框（Modal）插件</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/zTree_v3/css/demo.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/zTree_v3/css/zTreeStyle/zTreeStyle.css">
	<script src="${pageContext.request.contextPath}/resource/jquery-1.11.3.min.js"></script>
	<script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resource/zTree_v3/js/jquery.ztree.all.min.js"></script>
	
	<style>
  #a{width:1500px;}
	th{font-size:25px;}
	</style>
</head>
  
  <body><center>
  <table class="table table-hover" id="a">
  <caption ><h1 style="color:blue">药品信息</h1></caption>
	<thead>
		<tr>
			       <th>助记码</th>
			        <th>名称</th>
			        <th>产地</th>
			        <th>规格</th>
			        <th>药品剂量</th>
			        <th>类别</th>
			        <th>剂型</th>
			        <th>单位</th> 
			        <th>库存上限</th> 
			        <th>库存下限</th>   
			        <th>进货价</th>
			        <th>批发价</th>
			        <th>零售价</th>   
		</tr>
	</thead>
	<tbody>
	  <c:forEach items="${p.list}" var="drug">
	        <tr>
			        <td>${drug.zhuji }</td>
			        <td>${drug.dname }</td>
			        <td>${drug.address.aname}</td>
			        <td>${drug.spec }</td>
			        <td>${drug.dosage2}</td>
			        <td>${drug.drugtype2.dtName }</td>
			        <td>${drug.dosageform.dfName }</td>
			        <td>${drug.doseunit.duName }</td>
			        <td>${drug.maxNum }</td>
			        <td>${drug.minNum }</td>
			        <td>${drug.stockPrice }</td>
			        <td>${drug.tradePrice}</td>
			        <td>${drug.retaiPrice}</td>
			      <td><input type="button" value="修改" id="${drug.did}" class="updateFind" data-toggle="modal" data-target="#myModal" /></td>
			        <td><input type="button" value="删除" class="delete" id="${drug.did}" /></td>
	        </tr>
     </c:forEach>
	</tbody>
</table>
  <a href="Drug_find.action?curPage=${p.frist}">首页</a>
    	<a href="Drug_find.action?curPage=${p.prev}">上页</a>
    	<a href="Drug_find.action?curPage=${p.next}">下页</a>
    	<a href="Drug_find.action?curPage=${p.last}">尾页</a>
    	当前${p.curPage}页/共${p.totalPage}页
    <input type="button" value="添加" id="save" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal"/>
      
     

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					录入修改页面
				</h4>
			</div>
			<div class="modal-body">
			   <form id="form">
			       <input type="hidden" name="drug.did"  id="did" readonly="readonly"/></br>
			       助记码:<input type="text" name="drug.zhuji" id="zhuji"/></br>
			       名称:<input type="text" name="drug.dname" id="dname"/></br>
			       产地: <select name="drug.address.aid">
			         <option value="1">新乡</option>
			         <option value="2">郑州</option>
			         <option value="3">商丘</option>    
			       </select>
			         类别: <select name="drug.drugtype2.dtId">
			         <option value="1">西药</option>
			         <option value="2">中药</option>
			         <option value="3">中成药</option>    
			       </select></br> 
			         单位: <select name="drug.doseunit.duId">
			         <option value="1">片</option>
			         <option value="2">盒</option>
			         <option value="3">支</option>
			         <option value="4">箱</option>
			         <option value="5">瓶</option>
			         <option value="6">板</option>
			         <option value="7">粒</option>
			         <option value="8">包</option>
			         <option value="9">袋</option>
			       </select>
			          剂型: <select name="drug.dosageform.dfId">
			         <option value="1">片剂</option>
			         <option value="2">针剂</option>
			         <option value="3">胶囊</option>    
			         <option value="4">丸剂</option> 
			         <option value="5">口服液</option> 
			         <option value="6">注射液</option> 
			         <option value="7">滴眼剂</option> 
			         
			       </select></br> 
			      规格:<input type="text" name="drug.spec" id="spec"/></br>
			      药品剂量:<input type="text" name="drug.dosage2" id="dosage2"/></br>
			      库存上限:<input type="text" name="drug.maxNum" id="maxNum"/></br>
			      库存下限:<input type="text" name="drug.minNum" id="minNum"/></br>   
			             进货价:<input type="text" name="drug.stockPrice" id="stockprice"/></br>
			              批发价:<input type="text" name="drug.tradePrice" id="tradeprice"/></br>
			              零售价:<input type="text" name="drug.retaiPrice" id="retaiprice"/></br>
                 
		
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				
				<input type="button" value="提交" class="btn btn-primary" id="ti" data-dismiss="modal">
				</form>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>

  </body>
</html>
<script>
/*药品修改前查询  */
   $(".updateFind").click(function(){
   
    var did=this.id;
    alert(this.id);
    $.ajax({
        url:"${pageContext.request.contextPath}/Drug_updateFind.action",
				        data:{
				        /*键值对  */
				        	"drug.did":did,
				        },
				        dataType:"json",
				        type:"post",
				        success:function(data){
				        
				         $("#did").val(data.did);
				         $("#dname").val(data.dname);
				          $("#zhuji").val(data.zhuji);
				         $("#spec").val(data.spec);
				         $("#dosage2").val(data.dosage2);
				         $("#minNum").val(data.minNum);
				         $("#maxNum").val(data.maxNum);
		             $("#stockprice").val(data.stockprice);
		             $("#tradeprice").val(data.tradeprice);
		             $("#retaiprice").val(data.retaiprice);
			     }
     });
});
/*药品添加和修改  */
 $("#ti").click(function(){
     $.ajax({
       url:"${pageContext.request.contextPath}/Drug_saveOrUpdate.action",
       data:$("#form").serialize(),
       dataType:"json",
       type:"post",
       success:function(data){
          alert(data.message);
       }
     });
   
});
/*药品删除  */
   $(".delete").click(function(){
   
    var did=this.id;
    alert("禁止删除");
   /*   $.ajax({
        url:"${pageContext.request.contextPath}/Drug_delete.action",
				        data:{
				        键值对 
				        	"drug.did":did,
				        },
				        dataType:"json",
				        type:"post",
				        success:function(data){
				       alert(data.message);
				      }
       })
  */
});
 </script>
