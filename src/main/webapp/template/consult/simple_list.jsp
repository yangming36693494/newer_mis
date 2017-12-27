<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<!--移动设备优先-->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>数据备案信息列表</title>
<link
	href="${pageContext.request.contextPath}/static/css/bootstrap-theme.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/css/bootstrap.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/My97DatePicker/WdatePicker.js"></script>
<jsp:include page="../head/head.jsp" />
<script type="text/javascript">
	$(function() {
		appendTable();
	});
	function appendTable() {
		//声明tr td对象
		var tr = $("<tr></tr>");
		var td1 = $("<td>1</td>");
		var td2 = $("<td></td>");
		var lab1 = $("<label>zhangsan</label>");
		lab1.attr("style", "color:red");
		var lab2 = $("<label>学员于</label>");
		var lab3 = $("<label>1998-11-29</label>");
		lab3.attr("style", "color:red");
		var lab4 = $("<label>由</label>");
		var lab5 = $("<label>唐怡心</label>");
		lab5.attr("style", "color:red");
		var lab6 = $("<label>进行备案，指课咨询师为</label>");
		var lab7 = $("<label>牛耳学院于冬</label>");
		lab7.attr("style", "color:red");
		var lab8 = $("<label>，最后跟进时间为：</label>");
		var lab9 = $("<label>2017-01-06 02:36:22</label>");
		lab9.attr("style", "color:red");
		td2.append(lab1);
		td2.append(lab2);
		td2.append(lab3);
		td2.append(lab4);
		td2.append(lab5);
		td2.append(lab6);
		td2.append(lab7);
		td2.append(lab8);
		td2.append(lab9);
		//将td添加到tr里
		tr.append(td1);
		tr.append(td2);
		//再将tr添加到表格内
		$("#simplTable").append(tr);
	}
</script>
</head>
<body>
	<div class="main-content" style="margin-left: 50px">
		<!-- 表单部分 -->
		<div class="page-content">
			<div class="page-header">
				<h1>
					newer招生 <small> <i class="icon-double-angle-right"></i>
						市场数据备案简单查询
					</small>
				</h1>
			</div>
			<form class="form-inline" id="taskList_form">
				<div class="form-group small">
					请输入查询信息：<input name="openUserName" class="form-control input-sm" />
				</div>
				<div class="form-group">
					<button id="btn" class="btn-info">查询</button>
				</div>
			</form>
			<br />
			<!-- 简单数据备案查询信息显示 -->
			<table id="simplTable" class="table table-bordered">
				<tbody>


				</tbody>
			</table>
		</div>
	</div>
</body>
</html>