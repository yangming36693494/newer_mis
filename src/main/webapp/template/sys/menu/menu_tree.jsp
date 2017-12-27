<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.servletContext.contextPath}/static/css/style.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/page/bootstrap.min.css">
<!-- 分页相关 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/ztree/zTreeStyle/zTreeStyle.css">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/util.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/ztree/js/jquery.ztree.all.min.js"></script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/static/layer/layer.js"></script>

<script type="text/javascript">
	var setting = {
		data : {//表示tree的数据格式
			simpleData : {
				enable : true,//表示使用简单数据模式
				idKey : "id",//设置之后id为在简单数据模式中的父子节点关联的桥梁
				pIdKey : "pid",//设置之后pid为在简单数据模式中的父子节点关联的桥梁和id互相对应
				rootId : null,//pid为null的表示根节点
			},
			key : {
				name : "menuName"
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
			chkStyle : "radio",
			//值为checkbox或者radio表示,all和level
			radioType : "all"//设置tree的分组
		},
		callback : {//表示tree的一些事件处理函数
			onCheck : handlerClick,
			beforeClick : function(treeId, treeNode) {
				var zTree = $.fn.zTree.getZTreeObj("channelTree");
				zTree.checkNode(treeNode, !treeNode.checked, null, true);
				return false;
			}
		}
	}
	function initTree() {
		//进行ajax传值
		$
				.ajax({
					url : "${pageContext.servletContext.contextPath}/sys/menu/doList.do",
					type : "post",
					dataType : "json",
					data : $('form').serializeJson(),
					success : function(msg) {
						//要执行的代码
						if (msg.success) {
							var result = msg.pageResults;
							result.push({
								id : '0',
								menuName : '根菜单',
								pid : null
							});
							$.fn.zTree.init($("#channelTree"), setting, result);
						}
					}
				});
	}

	function handlerClick(event, treeId, treeNode) {
		//获取父窗口的document对象,并且根据id来赋值
		parent.document.getElementById("pid").value = treeNode.id;
		parent.document.getElementById("pName").value = treeNode.menuName;
	}

	$(function() {
		initTree();
	});
</script>
</head>
<body>
	<form>
		<input type="hidden" id="pid" />
	</form>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td height="2">&nbsp;</td>
		</tr>
		<tr>
			<td bgcolor="#FFFFFF" style="height: 490px; vertical-align: top;">
				<div class="container">
					<div class="row">
						<ul id="channelTree" class="ztree">
						</ul>
					</div>
				</div>
			</td>
		</tr>
	</table>
</body>