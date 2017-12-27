<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>后台操作区</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="${pageContext.request.contextPath}/static/css/style.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/validator/screen.css" />
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
		$('#form').validate({
			rules : {
				loginName : "required",
				password : "required",
				re_password: {
			      equalTo: "#password"
			    }
			},
			messages : {
				loginName : '用户名必填',
				password : '密码必填',
				re_password:'两次密码不相同'
			},
			submitHandler : function(form) {
				//进行ajax传值
				$.ajax({
					url : "${pageContext.servletContext.contextPath}/sys/user/doAdd.do",
					type : "post",
					dataType : "json",
					data : $('form').serializeJson(),
					success : function(msg) {
						//要执行的代码
						if(!msg.success){
							layer.msg(msg.msg);
							return;
						}
						//登录成功跳转页面
						window.location.href="${pageContext.servletContext.contextPath}/sys/user/list.htm";
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
											<td class="font1" height="26" width="35%" align=right>用户真实姓名：</td>
											<td class="font1" align=left><input type="text"
												name="realName"></td>
										</tr>
										<tr bgColor=#ffffff>
											<td class="font1" height="26" width="35%" align=right>用户登录名：</td>
											<td class="font1" align=left><input type="text"
												name="loginName"></td>
										</tr>
										<tr bgColor=#ffffff>
											<td class="font1" height="26" width="35%" align=right>密码：</td>
											<td class="font1" align=left><input type="password"
												name="password" id="password"></td>
										</tr>
										<tr bgColor=#ffffff>
											<td class="font1" height="26" width="35%" align=right>确认密码：</td>
											<td class="font1" align=left><input type="password"
												name="re_password" id="re_password"></td>
										</tr>
										<tr bgColor=#ffffff>
											<td class="font1" colspan="2" height="23" align=center><input
												type="submit" value="确定提交"></td>
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