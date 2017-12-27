<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.servletContext.contextPath}/static/css/style.css">
<!-- 分页相关 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/page/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/page/b.page.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/page/b.page.bootstrap3.css">
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

<script type="text/javascript">
	$(function() {
		$('#pName').click(function() {
			layer.open({
				type : 2,
				shade : false,
				area : [ '500px', '300px' ],
				maxmin : true,
				offset : 't',
				content : [
						'${pageContext.servletContext.contextPath}/template/sys/menu/menu_tree.jsp',
						'no' ],
				btn : [ '确定', '关闭' ],
				yes : function(index) {
					layer.close(index);
				},
				cancel : function() {
					//右上角关闭回调
				}
			});
		});

		$('#form').validate({
			rules : {
				menuName : "required",
				pName : "required"
			},
			messages : {
				menuName : '菜单名称必填',
				pName : '父菜单必须选择'
			},
			submitHandler : function(form) {
				//进行ajax传值
				$.ajax({
					url : "${pageContext.servletContext.contextPath}/sys/menu/doOperate.do",
					type : "post",
					dataType : "json",
					data : $('form').serializeJson(),
					success : function(msg) {
						//要执行的代码
						if (!msg.success) {
							layer.msg(msg.msg);
							return;
						}else{
							layer.msg("添加成功.",function(){
								/* var index=parent.layer.getFrameIndex(window.name);
								window.parent.location.reload();
								parent.layer.close(index); */
								location.reload();
							});
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
			<td
				background="${pageContext.servletContext.contextPath}/static/images/index1_45.gif"></td>
			<td bgcolor="#FFFFFF" style="height: 490px; vertical-align: top;">
				<table width="100%" border="0" cellspacing="10" cellpadding="0">
					<tr>
						<td>
							<form id="form">
								<input type="hidden" name="id" value="${menu.id}">
								<table width="100%" border="0" cellpadding="0" cellspacing="1"
									bgcolor="#BBD3EB"
									class="table table-striped table-bordered table-hover table-condensed">
									<tbody>
										<tr bgColor=#ffffff>
											<td class="font1" height="26" width="35%" align=right>菜单名称：</td>
											<td class="font1" align=left><input type="text"
												name="menuName" value="${menu.menuName}"></td>
										</tr>
										<tr bgColor=#ffffff>
											<td class="font1" height="26" width="35%" align=right>菜单地址：</td>
											<td class="font1" align=left><input type="text"
												name="menuUrl" value="${menu.menuUrl}"></td>
										</tr>
										<tr bgColor=#ffffff>
											<td class="font1" height="26" width="35%" align=right>父菜单：</td>
											<td class="font1" align=left>
											<input type="text" readonly="readonly" name="pName" value="${menu.pName}"
												id="pName">
											<input type="hidden" name="pid" value="${menu.pid}" id="pid"></td>
										</tr>
										<tr bgColor=#ffffff>
											<td class="font1" colspan="2" height="23" align=center><input
												type="submit" class="btn" value="确定提交"></td>
										</tr>
									</tbody>
								</table>
							</form>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>