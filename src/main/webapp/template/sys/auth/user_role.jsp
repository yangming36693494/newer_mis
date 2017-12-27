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
	$(function() {
		$('#form').validate({
			rules : {
				roleId : "required",
			},
			messages : {
				roleId : '请选择角色信息',
			},
			submitHandler : function(form) {
				var json = $('form').serializeJson();
				json.roleName=$("#roleId").find("option:selected").text();
				json.realName=$("#userId").find("option:selected").text();
				json.loginName=$("#userId").find("option:selected").attr('loginName');
				//进行ajax传值
				$.ajax({
					url : "${pageContext.servletContext.contextPath}/sys/auth/addUserRole.do",
					type : "post",
					dataType : "json",
					contentType : "application/json",
					data : JSON.stringify(json),
					success : function(msg) {
						//要执行的代码
						if (msg.success) {
							
						}
					}
				});
				console.log(json);
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
											<td class="font1" height="26" width="35%" align=right>请选择用户：</td>
											<td class="font1" align=left><select name="userId"
												id="userId">
													<option value="">请选择</option>
													<c:forEach items="${result.users}" var="users">
														<option value="${users.id}" loginName="${users.loginName}">${users.realName}</option>
													</c:forEach>
											</select></td>
										</tr>
										<tr bgColor=#ffffff>
											<td class="font1" height="26" width="35%" align=right>请选择角色：</td>
											<td class="font1" align=left><select name="roleId"
												id="roleId">
													<option value="">请选择</option>
													<c:forEach items="${result.roles}" var="role">
														<option value="${role.id}">${role.roleName}</option>
													</c:forEach>
											</select></td>
										</tr>
										<tr bgColor=#ffffff>
											<td class="font1" colspan="2" height="23" align=center>
												<input type="submit" value="确定提交">
											</td>
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