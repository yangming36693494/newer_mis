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
	src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/util.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/page/b.page.js"></script>

<script type="text/javascript">
	$(function() {
		var param = {};
		function doPage() {
			$('#page').bPage({
				url : '${pageContext.request.contextPath}/sys/user/doList.do',
				asyncLoad : true,
				serverSidePage : false,
				params : function() {
					return param;
				},
				render : function(data) {
					var tb = $('#dataGridTableJson tbody');
					tb.empty();
					if (data && data.pageResults
							&& data.pageResults.length > 0) {
						$.each(data.pageResults,function(i, row) {
							var tr = $('<tr></tr>');
							tr.append('<td>' + row.id + '</td>');
							tr.append('<td>' + row.realName + '</td>');
							var td = $('<td></td>');
							var delBtn = $('<button>删除</button>');
							delBtn.addClass('small btn btn-danger');
							var updateBtn = $('<button>修改</button>');
							updateBtn.addClass('small btn btn-default');
							td.append(delBtn)
							td.append(updateBtn)
							tr.append(td);
							tb.append(tr);
						});
					}
				}
			});
		}
		doPage();
		$('button').click(function() {
			$('#page').empty();
			var form = $('form').serializeJson();
			param = form;
			doPage();
			return false;
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
							<div>
								<form action="#" class="form-inline">
									<div class="form-group">
										姓名:<input type="text" name="realName" class="form-control">
										<button class="btn btn-default">查询</button>
									</div>
								</form>
							</div>
							<div>
								<table id="dataGridTableJson"
									class="table table-striped table-bordered table-hover table-condensed">
									<thead>
										<tr>
											<th>编号</th>
											<th>姓名</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>
							<div id="page"></div>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>