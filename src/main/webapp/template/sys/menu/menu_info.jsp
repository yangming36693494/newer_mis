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
							<table width="100%" border="0" cellpadding="0" cellspacing="1"
								bgcolor="#BBD3EB" class="table table-striped table-bordered table-hover table-condensed">
								<tbody>
									<tr bgColor=#ffffff>
										<td class="font1" height="26" width="35%" align=right>菜单名称：</td>
										<td class="font1" align=left>${menu.menuName}</td>
									</tr>
									<tr bgColor=#ffffff>
										<td class="font1" height="26" width="35%" align=right>菜单地址：</td>
										<td class="font1" align=left>${menu.menuUrl}</td>
									</tr>
									<tr bgColor=#ffffff>
										<td class="font1" height="26" width="35%" align=right>父菜单：</td>
										<td class="font1" align=left>${menu.pName}</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>