<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<title>药品调价</title>
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
<style type="text/css">
.center_table tr td {
	
}

#pmodal {
	display: none;
}

.div-hidden {
	display: none;
}

.nav-pills li a {
	font-size: medium;
	font-weight: bold;
	font-family: serif;
	text-decoration: none;
}

#page-title {
	font-size: 30px;
}
#ta{
 width:800px;
}
</style>



</head>
<body>
   
	<div>
	<!--  行-->
         
      <form id="form">
		        <table class="table table-hover" id="ta">
							<caption ><h1 style="color:blue">药品调价单</h1></caption>
							<thead>
								<tr>
								    <th>  id</th>
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
								<tr>
							    	<td><input type="text" id="adjust0"  name='a[0].drug.did' readonly="readonly"/></td>	    
										<td><input type="text" id="adjust1"  class="all" /></td>
									<td><input type="text" id="adjust2"  name="" readonly="readonly"/></td>
									<td><input type="text" id="adjust3" name="" readonly="readonly"/></td>
									<td><input type="text" id="adjust4" name="" readonly="readonly"/></td>
									<td><input type="text" id="adjust5" name="" readonly="readonly"/></td>
									<td><input type="text" id="adjust6"  name='a[0].tradePrice3' readonly="readonly"/></td>
									<td><input type="text" id="adjust7"  name='a[0].retailPrice3' readonly="readonly"/></td>
										<td><input type="text" id="adjust8" name="a[0].drug.tradePrice"/></td>
										<td><input type="text" id="adjust9" name="a[0].drug.retaiPrice"/></td>
										
								</tr>
							  <input type="button" value="增加"  id="hang" class="btn btn-primary btn-lg"/>
							</tbody>
						</table> 
						<input type="button" value="提交" id="adjust" class="btn btn-primary btn-lg"/>
		         </form>
     
    <input type="button" value="添加" id="save" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display:none;"/>
 
</div>

	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close div-hidden" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">药品信息查询</h4>
				</div>
				<div class="modal-body">
					<table class="table table-hover">
						
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
							</tr>
						</thead>
						<tbody id="tbody">
                        
						</tbody>
					</table>
				</div>
				<div class="modal-footer div-hidden">
					<button type="button" class="btn btn-default" data-dismiss="modal"
						id="close-modal">关闭</button>
					<button type="button" class="btn btn-primary">提交更改</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
</body>
</html>
<script type="text/javascript">
/* 点击的时候执行俩个表修改，添加操作 */
		$("#adjust").click(function(){		 
			$.ajax({
			url:"${pageContext.request.contextPath}/Adjust_saveAndUpdate.action",
			type:"post",
			data:$("#form").serialize(),
			dataType:"json",
			success:function(data){
			alert(data.message);
			}
			});
		});	
/* 点击的时候添加行 */		
var l=1;
     $("#hang").click(function(){
		var tr="<tr>";
		tr+="<td><input type='text' name='a["+l+"].drug.did'/></td>";
		tr+="<td><input type='text' class='all'/></td>";
		tr+="<td><input type='text' /></td>";
		tr+="<td><input type='text' /></td>";
		tr+="<td><input type='text' /></td>";
		tr+="<td><input type='text' /></td>";
		tr+="<td><input type='text' name='a["+l+"].tradePrice3'/></td>";
		tr+="<td><input type='text' name='a["+l+"].retailPrice3'/></td>";
		tr+="<td><input type='text' name='a["+l+"].drug.tradePrice'/></td>";
		tr+="<td><input type='text' name='a["+l+"].drug.retaiPrice'/></td>";
		tr +="</tr>";
		$("#ttt").append(tr);
		l++;
		});

	/*模糊查询  */
	/*当页面加载完毕的时候动态绑定函数事件  */
	  var zjm;
	$(function(){
		  $("#ttt").on("keyup",".all",function(){
		 zjm=this;
		   $("#save").click();
		 var obj=$(this).val(); 
		   $.ajax({
		     url:"${pageContext.request.contextPath}/Adjust_find.action",
		     type:"post",
		     data:{"name":obj},
		     dataType:"json",
		     success:function(data){
		     alert(data);
		     $("#tbody").html("");
		     for(var i=0;i<data.length;i++){
		        var tr="<tr>";
		        tr +="<td>" +data[i].did + "</td>";
		        tr +="<td>" +data[i].zhuji + "</td>";
		        tr +="<td>" +data[i].dname + "</td>";
		        tr +="<td>" +data[i].aname + "</td>";
		        tr +="<td>" +data[i].spec + "</td>";
		        tr +="<td>" +data[i].duName + "</td>";
		        tr +="<td>" +data[i].tradePrice + "</td>";
		        tr +="<td>" +data[i].retaiPrice + "</td>";
		        tr +="</tr>";
		        $("#tbody").append(tr);  
		       };	       
        /*点击给input赋值  */
         $("#tbody tr").click(function() {
					$("#close-modal").click();
					for (var i = 0; i < $(this).children().length; i++) {
						$(zjm).parent().parent().children().eq(i).children().val($(this).children().eq(i).html());
					}   
	    });
		     }
		   });
    });
});
  

</script>
	