<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
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
   
<form id="form">
领取药房：<select name="chuku.pharmacy.phId">
             <option>----请选择-----</option>
             <option value="1">唯一药房</option>
          
          </select>
领取医生：<select name="chuku.stuffs.stuffid2" id="select">

          </select>
 出库日期：<input type="text" name="chuku.ckDate" id="date"/>
 
    <table class="table table-hover">
							
							<thead>
								<tr>
								    <th>id</th>
									<th>助记码</th>
									<th>名称</th>	
									<th>规格</th>
									<th>产地</th>
									<th>零售价</th>
									<th>库存</th>
							     	<th>数量</th>
					                <th>零售额</th>
					                
								</tr>
							</thead>
							<tbody id="tbody">
								<tr>
							    	<td><input type="text" name="list[0].drug.did"/></td>
							    	<td><input type="text" name="" class="all"/></td>
							    	<td><input type="text" name=""/></td>
							    	<td><input type="text" name=""/></td>
							    	<td><input type="text" name=""/></td>
							    	<td><input type="text" name="" class="ling"/></td>
							    	<td><input type="text" name=""/></td>
							    	<td><input type="text" name="list[0].num3" class="aaa"/></td>
							    	<td><input type="text" name="list[0].totalPrice5" class="zong"/></td>			
								</tr>
							  
							</tbody>
							<input type="button" value="增加"  id="hang" class="btn btn-primary btn-lg"/>
						</table> 
<input type="button" value="提交" id="chuku" class="btn btn-primary btn-lg"/>
</form>
 <input type="button" value="添加" id="save" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display:none;"/>
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
									<th>规格</th>
									<th>产地</th>
									<th>零售价</th>
									<th>库存</th>
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
/*页面加载时查询出医生  */
$(function(){
   $.ajax({
      url:"${pageContext.request.contextPath}/Chuku_stuff.action",
      data:{},
      type:"post",
      dataType:"json",
      success:function(data){
       $("#select").empty();
       $("#select").append("<option value='-1'>----请选择----</option>");
       for(var i=0;i<data.length;i++){
          $("#select").append("<option value='"+data[i].stuffid+"'>"+data[i].stuffname+"</option>");
       }
      }
   });
});

/*获取系统时间  */
$(function(){
  var date=new Date();
  var dat=date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate();
   var da=dat.toLocaleString();
  $("#date").val(da);
});

var i=1;
/* 动态添加行 */
$("#hang").click(function(){
  var tr="<tr>";
      tr+="<td><input type='text' name='list["+i+"].drug.did'/></td>";
      tr+="<td><input type='text' class='all'/></td>";
      tr+="<td><input type='text' /></td>";
      tr+="<td><input type='text' /></td>";
      tr+="<td><input type='text' /></td>";
      tr+="<td><input type='text' class='ling'/></td>";
      tr+="<td><input type='text' /></td>";
      tr+="<td><input type='text' name='list["+i+"].num3' class='aaa'/></td>";
      tr+="<td><input type='text' name='list["+i+"].totalPrice5' class='zong'/></td>";
      tr+="</tr>"
      $("#tbody").append(tr);
      i++;
});
/*动态添加的元素是页面加载后完成的，所以页面加载时无法绑定事件  */
var zjm;
$(function(){
     $("#tbody").on("keyup",".all",function(){
          zjm=this;
          alert($(zjm).val());
          $("#save").click();
       $.ajax({
           url:"${pageContext.request.contextPath}/Chuku_findAll.action",
           type:"post",
           data:{"name":$(zjm).val()},
           dataType:"json",
           success:function(data){
           $("#ttbody").html("");
           alert(data);
         for(var i=0;i<data.length;i++){
             var tr="<tr>";
                 tr+="<td>"+data[i].did+"</td>";
                 tr+="<td>"+data[i].zhuji+"</td>";
                 tr+="<td>"+data[i].dname+"</td>";
                 tr+="<td>"+data[i].spec+"</td>";
                 tr+="<td>"+data[i].aname+"</td>";
                 tr+="<td>"+data[i].retaiPrice+"</td>";
                 tr+="<td>"+data[i].totalNum+"</td>";
                 tr+="</tr>";
                 $("#ttbody").append(tr);
              }
               /*点击给input赋值  */
         $("#ttbody tr").click(function(){
					$("#close-modal").click();
					for (var i = 0; i < $(this).children().length; i++) {
						$(zjm).parent().parent().children().eq(i).children().val($(this).children().eq(i).html());
					}   
	    });
            }
          }) ;
    });
});
//零售价*数量=零售额
$(function(){
   $("#tbody").on("blur",".aaa",function(){
        var num=$(this).parent().children(".aaa").val();
        var ling=$(this).parent().parent().children().children(".ling").val();
         $(this).parent().parent().children().children(".zong").val(num*ling);
  });
});
//一对多添加
$(function(){
     $("#chuku").click(function(){
        $.ajax({
           url:"${pageContext.request.contextPath}/Chuku_addAll.action",
           data:$("#form").serialize(),
           type:"post",
           dataType:"json",
           success:function(data){
             alert(data.message);
           }
        });
     });
});
</script>
