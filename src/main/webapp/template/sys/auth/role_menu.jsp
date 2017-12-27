<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>后台操作区</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="${pageContext.request.contextPath}/static/css/style.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/validator/screen.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/ztree/zTreeStyle/zTreeStyle.css">
	
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/static/js/jquery-1.11.3.js"></script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/static/js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/static/layer/layer.js"></script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/static/js/util.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/validator/jquery.validate.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/validator/localization/messages_zh.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/ztree/js/jquery.ztree.all.min.js"></script>
<script type="text/javascript">
var setting = {
		data : {//表示tree的数据格式
			simpleData : {
				enable : true,//表示使用简单数据模式
				idKey : "id",//设置之后id为在简单数据模式中的父子节点关联的桥梁
				pIdKey : "pid",//设置之后pid为在简单数据模式中的父子节点关联的桥梁和id互相对应
				rootId : "0",//pid为null的表示根节点
			},
			key : {
				name : "menuName",
				menuUrl:"menuUrl",
				menuLevel:"menuLevel"
			}
		},
		view : {//表示tree的显示状态
			selectMulti : false
		//表示禁止多选
		},
		check : {
			//表示tree的节点在点击时的相关设置
			enable : true,
			//是否显示radio/checkbox
			chkStyle : "checkbox",
			//值为checkbox或者radio表示
			radioType : "all"//设置tree的分组
		},
		callback : {//表示tree的一些事件处理函数
			beforeClick: function (treeId, treeNode) {
				var zTree = $.fn.zTree.getZTreeObj("channelTree");
				zTree.checkNode(treeNode, !treeNode.checked, null, true);
				return false;
			} 
		}
	}
	function initTree(roleId) {
		//进行ajax传值
		$.ajax({
			url : "${pageContext.servletContext.contextPath}/sys/menu/doList.do",
			type : "post",
			dataType : "json",
			data : {
				"roleId":roleId
			},
			success : function(msg) {
				//要执行的代码
				if (msg.success) {
					var result=msg.pageResults;
					$.fn.zTree.init($("#channelTree"), setting,result);
				}
			}
		});
	}
	
	$(function() {
		$('#roleId').change(function(){
			initTree($(this).val());
		});
		$('#form').validate({
			rules : {
				roleId : "required",
			},
			messages : {
				roleId : '请选择角色信息',
			},
			submitHandler : function(form) {
				var zTree = $.fn.zTree.getZTreeObj("channelTree");
				var checkNodes=zTree.getCheckedNodes();
				var menus=[];
				$.each(checkNodes,function(index,checkNode){
					var node={
						menuName:checkNode.menuName,
						menuId:checkNode.id,
						pid:checkNode.pid == null?'0':checkNode.pid,
						menuUrl:checkNode.menuUrl,
						menuLevel:checkNode.menuLevel,
						roleName:$("#roleId").find("option:selected").text(),
						roleId:$('#roleId').val()
					}
					menus.push(node);
				})
				
				//进行ajax传值
				$.ajax({
					url : "${pageContext.servletContext.contextPath}/sys/auth/addRoleMenu.do",
					type : "post",
					dataType : "json",
					contentType:"application/json", 
					data :JSON.stringify(menus),
					success : function(msg) {
						//要执行的代码
						if (msg.success) {
							var zTree = $.fn.zTree.getZTreeObj("channelTree"),type = "refresh";
					        var silent = false;
					        var nodes = zTree.getSelectedNodes();  
							zTree.reAsyncChildNodes(nodes[0], type, silent); 
						}
					}
				});
			}
		});
	});
</script>
</head>
<body>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td height="2">&nbsp;</td>
		</tr>
		<tr>
			<td bgcolor="#FFFFFF" style="height: 490px; vertical-align: top;">
				<table width="100%" border="0" cellspacing="10" cellpadding="0">
					<tr>
						<td>
							<form id="form">
								<table width="100%" border="0" cellpadding="0" cellspacing="1"
									bgcolor="#BBD3EB">
									<tbody>
										<tr bgColor=#ffffff>
											<td class="font1" height="26" width="35%" align=right>请选择角色：</td>
											<td class="font1" align=left>
												<select name="roleId" id="roleId">
														<option value="">请选择</option>
														<c:forEach items="${roles}" var="role">
															<option value="${role.id}">${role.roleName}</option>
														</c:forEach>
												</select>
											</td>
										</tr>
										<tr bgColor=#ffffff>
											<td class="font1" height="26" width="35%" align=right>请选择菜单：</td>
											<td class="font1" align=left><ul id="channelTree"
													class="ztree">
												</ul></td>
										</tr>
										<tr bgColor=#ffffff>
											<td class="font1" colspan="2" height="23" align=center>
											<input type="submit" value="确定提交"></td>
										</tr>
									</tbody>
								</table>
							</form>
						</td>
					</tr>
				</table>
			</td>
	</table>
</body>