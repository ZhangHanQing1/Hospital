<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>Untitled Document</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" type="text/javascript" src="../js/tree.js"></script>
</head>

<body>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" valign="top" class="td03"><br>
      <table width="90%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="25" class="F01"><p><img src="../images/index_35.gif" width="12" height="16" align="absmiddle"><strong>人民医院医疗管理系统</strong></p>
          </td>
        </tr>
        <tr>
          <td height="2" background="../images/index_39.gif"><img src="../images/spacer.gif" width="1" height="1"></td>
        </tr>
      </table>
        <table width="90%" border="0" cellpadding="0" cellspacing="0" class="td01">
          <tr>
            <td width="12">&nbsp;</td>
            <td width="628"><p><img src="../images/spacer.gif" width="1" height="1"><img src="../images/index_35.gif" width="12" height="16" align="absmiddle"><strong>快速通道</strong></p>
			
          <tr>
            <td background="../images/index_41.gif">&nbsp;</td>
            <td>
              
            	
            	
            	<table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>
                	               
                	<table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="19"><img id="top_1" onClick="head('menu_1','top_1');" src="../images/tree_03.gif" width="19" height="20"></td>
                      <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>
                      <td nowrap>门诊管理</td>
                    </tr>
                  </table>
                   				  <div id="menu_1" style="DISPLAY: none">
				  <table width="100%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
							<td nowrap><a href="../html/media/lists.htm" target="mainFrame" class="a03">门诊挂号</td>
						  </tr>
					</table>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
							<td nowrap><a href="../html/results/chooseresult.htm" target="mainFrame" class="a03">门诊医生</td>
						  </tr>
					</table>
						
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_23.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
							<td nowrap><a href="../html/results/checkchooseresult.htm" target="mainFrame" class="a03">药品即时查询</td>
						  </tr>
						</table>
				  </div>  
				  
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="19"><img id="top_3" onClick="menu('menu_3','top_3');" src="../images/tree_11.gif" width="19" height="20"></td>
                          <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>
                          <td nowrap>考勤管理</td>
                        </tr>
                      </table>
					  <div id="menu_3" style="DISPLAY: none">
					  <table width="100%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
							<td nowrap><a href="../html/worktime/createleavelist1.htm" target="mainFrame" class="a03">我要请假</a></td>
						  </tr>
						</table>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
							<td nowrap><a href="../html/worktime/leavelist_1.htm" target="mainFrame" class="a03">我的请假</a></td>
						  </tr>
						</table>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
							<td nowrap><a href="../html/worktime/leavelist_2.htm" target="mainFrame" class="a03">请假查询</a></td>
						  </tr>
						</table>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_23.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
							<td nowrap><a href="../html/worktime/leavelist_31.htm" target="mainFrame" class="a03">考勤统计</td>
						  </tr>
						</table>
										</div>
                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="19"><img id="top_2" onClick="menu('menu_2','top_2');" src="../images/tree_11.gif" width="19" height="20"></td>
                          <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>
                          <td nowrap>药库管理</td>
                        </tr>
                      </table>
                      
                      
                      
					  <div id="menu_2" style="DISPLAY: none">
				
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
							<td nowrap><a href="../../Drug_find.action" target="mainFrame" class="a03">查询药品</a></td>
						  </tr>
						</table>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
							<td nowrap><a href="../../jsp/Patients.jsp" target="mainFrame" class="a03">药品调价</a></td>
						  </tr>
						</table>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_23.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
							<td nowrap><a href="../../Adjust_findPage.action" target="mainFrame" class="a03">药品调价表查询</td>
						  </tr>
						</table>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_23.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
							<td nowrap><a href="../../jsp/chuku.jsp" target="mainFrame" class="a03">药品出库到药房</td>
						  </tr>
						</table>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_23.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
							<td nowrap><a href="../../Chuku_chukuC.action" target="mainFrame" class="a03">出库单查询</td>
						  </tr>
						</table>
					  </div>
					  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="19"><img id="top_7" onClick="menu('menu_7','top_7');" src="../images/tree_11.gif" width="19" height="20"></td>
                          <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>
                          <td nowrap>库房管理</td>
                        </tr>
                      </table>
                      
				  <div id="menu_7" style="DISPLAY: none">
				  <table width="100%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
							<td nowrap><a href="../html/results/createresult1.htm" target="mainFrame" class="a03">库存整理</td>
						  </tr>
						</table>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
							<td nowrap><a href="../html/results/myresult.html" target="mainFrame" class="a03">货物查询</td>
						  </tr>
						</table>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
							<td nowrap><a href="../html/results/resultcheck.htm" target="mainFrame" class="a03">进货审批</td>
						  </tr>
						</table>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                            <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                            <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                            <td nowrap><a href="../html/results/staresults1.html" target="mainFrame" class="a03">成果统计</td>
                          </tr>
                        </table>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_23.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
							<td nowrap><a href="../html/results/loadresults.htm" target="mainFrame" class="a03">成果导出</td>
						  </tr>
						</table>

				  </div>
				  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                       <tr>
                         <td width="19"><img id="top_8" onClick="menu('menu_8','top_8');" src="../images/tree_11.gif" width="19" height="20"></td>
                         <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>
                         <td nowrap>院长查询</td>
                       </tr>
                     </table>
                     
                     <div id="menu_8" style="DISPLAY: none">
                     <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/subject/baoxiao/outpatientList.html" target="mainFrame" class="a03">门诊信息查询</a></td>
                         </tr>
                         
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/subject/baoxiao/pharmacyList.html" target="mainFrame" class="a03">药房信息查询</a></td>
                         </tr>
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/subject/baoxiao/storeroomList.html" target="mainFrame" class="a03">库房信息查询</a></td>
                         </tr>
                       </table>
                                              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/subject/baoxiao/hospitalizedList.html" target="mainFrame" class="a03">住院信息查询</a></td>
                         </tr>
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/subject/subjectList.html" target="mainFrame" class="a03">进货提交管理</a></td>
                         </tr>
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/subject/createsubject1.htm" target="mainFrame" class="a03">课题申请</a></td>
                         </tr>
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/subject/createsubject1.htm" target="mainFrame" class="a03">课题借款申请</a></td>
                         </tr>
                       </table>

						

                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="subject/lend/mylendList.html" target="mainFrame" class="a03">我的课题借款</a></td>
                         </tr>
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="subject/lend/calc1.html" target="mainFrame" class="a03">课题借款统计</a></td>
                         </tr>
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/subject/createsubject1.htm" target="mainFrame" class="a03">课题报销申请</a></td>
                         </tr>
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/subject/baoxiao/mybaoxiaoList.html" target="mainFrame" class="a03">我的课题报销</a></td>
                         </tr>
                       </table>
                       
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="subject/lend/calc1.html" target="mainFrame" class="a03">课题报销统计</a></td>
                         </tr>
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_23.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="subject/lend/calc1.html" target="mainFrame" class="a03">我的经费统计</a></td>
                         </tr>
                       </table>
                     </div>
                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="19"><img id="top_4" onClick="menu('menu_4','top_4');" src="../images/tree_11.gif" width="19" height="20"></td>
                          <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>
                          <td nowrap>财务管理</td>
                        </tr>
                      </table>
					  <div id="menu_4" style="DISPLAY: none">
                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                          <td width="19"><img id="top_5" onClick="menu('menu_5','top_5');" src="../images/tree_11.gif" width="19" height="20"></td>
                          <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                          <td nowrap>工资信息维护</td>
                        </tr>
                      </table>
					  <div id="menu_5" style="DISPLAY: none">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>
							<td nowrap><a href="../html/wage/provide/export.html" target="mainFrame" class="a03">导入工资</a></td>
						  </tr>
						</table>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>
							<td nowrap><a href="../html/wage/provide/export1.html" target="mainFrame" class="a03">导入工资外收入</a></td>
						  </tr>
						</table>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_23.gif" width="19" height="20"></td>
							<td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>
							<td nowrap><a href="../html/wage/provide/wageinfo.html" target="mainFrame" class="a03">维护</a></td>
						  </tr>
						</table>
					  </div>
                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                          <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                          <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                          <td nowrap><a href="../html/wage/provide/querywagebymonth.html" target="mainFrame" class="a03">按月查询</a></td>
                        </tr>
                      </table>
                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                          <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                          <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                          <td nowrap><a href="../html/wage/provide/querywagebyitem.html" target="mainFrame" class="a03">分项查询</a></td>
                        </tr>
                      </table>					  
                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                          <td width="19"><img src="../images/tree_23.gif" width="19" height="20"></td>
                          <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                          <td nowrap><a href="../html/wage/provide/queryotherwageinfo.html" target="mainFrame" class="a03">工资外信息查询</a></td>
                        </tr>
                      </table>
                     </div>
                      
                     
                     <table width="100%" border="0" cellspacing="0" cellpadding="0">
                       <tr>
                         <td width="19"><img id="top_9" onClick="menu('menu_9','top_9');" src="../images/tree_11.gif" width="19" height="20"></td>
                         <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>
                         <td nowrap>住院管理</td>
                       </tr>
                     </table>
                     <div id="menu_9" style="DISPLAY: none">
                     <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/medical/createmedical.htm" target="mainFrame" class="a03">入院办理</a></td>
                         </tr>
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/medical/baoxiao/applist_1-1.htm" target="mainFrame" class="a03">住院处方管理</a></td>
                         </tr>
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/medical/baoxiao/applist_2.htm" target="mainFrame" class="a03">住院发药</a></td>
                         </tr>
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/medical/baoxiao/applist_1-3.htm" target="mainFrame" class="a03">住院结算</td>
                         </tr>
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="Patient_zaiPatientSel" target="mainFrame" class="a03">床位管理</a></td>
                         </tr>
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/medical/loan/applist_1.htm" target="mainFrame" class="a03">xxxxx</a></td>
                         </tr>
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/medical/loan/applist_2.htm" target="mainFrame" class="a03">出院申请</a></td>
                         </tr>
                       </table>
                </div>
                     <table width="100%" border="0" cellspacing="0" cellpadding="0">
                       <tr>
                         <td width="19"><img id="top_10" onClick="menu('menu_10','top_10');" src="../images/tree_11.gif" width="19" height="20"></td>
                         <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>
                         <td nowrap>报表管理</td>
                       </tr>
                     </table>
                     <div id="menu_10" style="DISPLAY: none">
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/report/examine/index.html" target="mainFrame" class="a03">报表查看</a></td>
                         </tr>
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_23.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/report/accredit/index.html" target="mainFrame" class="a03">报表权限管理</a></td>
                         </tr>
                       </table>
                </div>
                     <table width="100%" border="0" cellspacing="0" cellpadding="0">
                       <tr>
                         <td width="19"><img id="top_11" onClick="menu('menu_11','top_11');" src="../images/tree_11.gif" width="19" height="20"></td>
                         <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>
                         <td nowrap>工作流程</td>
                       </tr>
                     </table>
                     <div id="menu_11" style="DISPLAY: none">
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/bpms/startprocess.htm" target="mainFrame" class="a03">启动流程</a></td>
                         </tr>
                       </table>
         <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/bpms/undo.htm" target="mainFrame" class="a03">待办事宜</a></td>
                         </tr>
                       </table>
					
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_23.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/bpms/monitor.htm" target="mainFrame" class="a03">流程监控</a></td>
                         </tr>
                       </table>
                </div>
                     <table width="100%" border="0" cellspacing="0" cellpadding="0">
                       <tr>
                         <td width="19"><img id="top_12" onClick="menu('menu_12','top_12');" src="../images/tree_11.gif" width="19" height="20"></td>
                         <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>
                         <td nowrap>权限管理</td>
                       </tr>
                     </table>
                     <div id="menu_12" style="DISPLAY: none">
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/pms/rolelist.htm" target="mainFrame" class="a03">角色管理</a></td>
                         </tr>
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_23.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/pms/query.htm" target="mainFrame" class="a03">用户管理</a></td>
                         </tr>
                       </table>
                </div>
                     <table width="100%" border="0" cellspacing="0" cellpadding="0">
                       <tr>
                         <td width="19"><img id="top_13" onClick="bottom('menu_13','top_13');" src="../images/tree_29.gif" width="19" height="20"></td>
                         <td width="19"><img src="../images/tree_27.gif" width="19" height="20"></td>
                         <td nowrap>系统管理</td>
                       </tr>
                     </table>
                     <div id="menu_13" style="DISPLAY: none">
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19">&nbsp;</td>
                           <td width="19"><img id="top_14" onClick="menu('menu_14','top_14');" src="../images/tree_11.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap>机构管理</td>
                         </tr>
                       </table>
                       <div id="menu_14" style="DISPLAY: none">
                         <table width="100%" border="0" cellspacing="0" cellpadding="0">
                           <tr>
                             <td width="19">&nbsp;</td>
                             <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                             <td width="19"><img src="../images/tree_23.gif" width="19" height="20"></td>
                             <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>
                             <td nowrap><a href="../html/org/info/orgIndex.htm" target="mainFrame" class="a03">机构维护</a></td>
                           </tr>
                         </table>
                       </div>

                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19">&nbsp;</td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/org/QUERY/index.html" target="mainFrame" class="a03">查询管理</a></td>
                         </tr>
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19">&nbsp;</td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/sys/guide/index.html" target="mainFrame" class="a03">指标管理</a></td>
                         </tr>
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19">&nbsp;</td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/sys/code/index.html" target="mainFrame" class="a03">代码管理</a></td>
                         </tr>
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19">&nbsp;</td>
                           <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap><a href="../html/sys/para/index.html" target="mainFrame" class="a03">参数管理</a></td>
                         </tr>
                       </table>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19">&nbsp;</td>
                           <td width="19"><img id="top_15" onClick="menu('menu_15','top_15');" src="../images/tree_11.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap>日志管理</td>
                         </tr>
                       </table>
                       <div id="menu_15" style="DISPLAY: none">
                         <table width="100%" border="0" cellspacing="0" cellpadding="0">
                           <tr>
                             <td width="19">&nbsp;</td>
                             <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                             <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                             <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>
                             <td nowrap><a href="../html/sys/log/operate-index.htm" target="mainFrame" class="a03">操作日志</a></td>
                           </tr>
                         </table>
                         <table width="100%" border="0" cellspacing="0" cellpadding="0">
                           <tr>
                             <td width="19">&nbsp;</td>
                             <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                             <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                             <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>
                             <td nowrap><a href="../html/sys/log/login-index.htm" target="mainFrame" class="a03">登录日志</a></td>
                           </tr>
                         </table>
                         <table width="100%" border="0" cellspacing="0" cellpadding="0">
                           <tr>
                             <td width="19">&nbsp;</td>
                             <td width="19"><img src="../images/tree_06.gif" width="19" height="20"></td>
                             <td width="19"><img src="../images/tree_23.gif" width="19" height="20"></td>
                             <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>
                             <td nowrap><a href="../html/sys/log/exp-index.htm" target="mainFrame" class="a03">日志导出</a></td>
                           </tr>
                         </table>
                       </div>
                       <table width="100%" border="0" cellspacing="0" cellpadding="0">
                         <tr>
                           <td width="19">&nbsp;</td>
                           <td width="19"><img id="top_16" onClick="bottom('menu_16','top_16');" src="../images/tree_29.gif" width="19" height="20"></td>
                           <td width="19"><img src="../images/tree_08.gif" width="19" height="20"></td>
                           <td nowrap>流程定义</td>
                         </tr>
                       </table>
                       <div id="menu_16" style="DISPLAY: none">
                         <table width="100%" border="0" cellspacing="0" cellpadding="0">
                           <tr>
                             <td width="19">&nbsp;</td>
                             <td width="19">&nbsp;</td>
                             <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                             <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>
                             <td nowrap><a href="../html/workflow/design/processTypeList.htm" target="mainFrame" class="a03">流程类别列表</a></td>
                           </tr>
                         </table>
                         <table width="100%" border="0" cellspacing="0" cellpadding="0">
                           <tr>
                             <td width="19">&nbsp;</td>
                             <td width="19">&nbsp;</td>
                             <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                             <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>
                             <td nowrap><a href="../html/workflow/design/processList.htm" target="mainFrame" class="a03">流程列表</a></td>
                           </tr>
                         </table>
                         <table width="100%" border="0" cellspacing="0" cellpadding="0">
                           <tr>
                             <td width="19">&nbsp;</td>
                             <td width="19">&nbsp;</td>
                             <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                             <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>
                             <td nowrap><a href="../html/workflow/design/functionTypeList.htm" target="mainFrame" class="a03">功能类别列表</a></td>
                           </tr>
                         </table>
                         <table width="100%" border="0" cellspacing="0" cellpadding="0">
                           <tr>
                             <td width="19">&nbsp;</td>
                             <td width="19">&nbsp;</td>
                             <td width="19"><img src="../images/tree_07.gif" width="19" height="20"></td>
                             <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>
                             <td nowrap><a href="../html/workflow/design/functionList.htm" target="mainFrame" class="a03">功能列表</a></td>
                           </tr>
                         </table>
                         <table width="100%" border="0" cellspacing="0" cellpadding="0">
                           <tr>
                             <td width="19">&nbsp;</td>
                             <td width="19">&nbsp;</td>
                             <td width="19"><img src="../images/tree_23.gif" width="19" height="20"></td>
                             <td width="19"><img src="../images/tree_14.gif" width="19" height="20"></td>
                             <td nowrap><a href="../html/workflow/design/attachmentTypeList.htm" target="mainFrame" class="a03">附件类别列表</a></td>
                           </tr>
                         </table>
                       </div>
                </div></td>
              </tr>
            </table></td>
            <td width="67" background="../images/index_43.gif">&nbsp;</td>
          </tr>
          <tr>
            <td><img src="../images/index_50.gif" width="12" height="12"></td>
            <td background="../images/index_51.gif"><img src="../images/spacer.gif" width="1" height="1"></td>
            <td><img src="../images/index_53.gif" width="12" height="12"></td>
          </tr>
      </table>
        <br>
    </td>
  </tr>
</table>
</body>
</html>

