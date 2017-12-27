<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<jsp:include page="../head/head.jsp"/>
<script type="text/javascript">
	$(function() {
		var param = {donationBatchId:"${donationBatchId}"};
		function doPage() {
			$('#page').bPage({
				url : '${pageContext.request.contextPath}/donation/doList.do',
				asyncLoad : true,
				serverSidePage : false,
				params :function(){
					return param;
				},
				render : function(data) {
					var tb = $('#dataGridTableJson tbody');
					tb.empty();
					if (data && data.pageResults
							&& data.pageResults.length > 0) {
						$.each(data.pageResults,function(i, row) {
							var tr = $('<tr></tr>');
							tr.append('<td>' + (i+1) + '</td>');
							tr.append('<td>' + row.donationRealName	 + '</td>');
							tr.append('<td>' + row.doneeRealName + '</td>');
							tr.append('<td>' + row.goodsName + '</td>');
							tr.append('<td>' + row.goodsTypeName + '</td>');
							tr.append('<td>' + row.goodsCount + '</td>');
							tr.append('<td>' + row.donationBatchId + '</td>');
							tr.append('<td>' + formatTime(row.createTime.time) + '</td>');
							tb.append(tr);
						});
					}
				}
			});
		}
		doPage();
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
							<div>
								<table id="dataGridTableJson"
									class="table table-bordered table-hover table-condensed">
									<thead>
										<tr>
											<th>编号</th>
											<th>捐赠人姓名</th>
											<th>受捐人名称</th>
											<th>物品名称</th>
											<th>物品类型</th>
											<th>物品数量</th>
											<th>捐赠批次号</th>
											<th>捐赠时间</th>
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