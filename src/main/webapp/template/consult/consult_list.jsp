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
</head>
<body>
	<div class="main-content" style="margin-left: 50px">
		<!-- 表单部分 -->
		<div class="page-content">
			<div class="page-header">
				<h1>
					newer招生 <small> <i class="icon-double-angle-right"></i>
						市场数据备案
					</small>
				</h1>
			</div>
			<form class="form-inline" id="taskList_form">
				<div class="form-group small">
					学员姓名：<input name="openUserName" class="form-control input-sm" />
				</div>
				<div class="form-group small">
					联系电话：<input name="openUserName" class="form-control input-sm" />
				</div>
				<div class="form-group small">
					QQ号码：<input name="openUserName" class="form-control input-sm" />
				</div>
				<div class="form-group small">
					校区：<select class="input-sm"><option>未选择</option>
						<option>五一校区</option>
						<option>河西校区</option></select>
				</div>
				<div class="form-group small">
					咨询师：<select class="input-sm"><option>未选择</option>
						<option>张三</option>
						<option>李四</option></select>
				</div>
				<br />
				<br />
				<div class="form-group small">
					学员状态：<select class="input-sm"><option>未选择</option>
						<option>在职</option>
						<option>学生</option></select>
				</div>
				<div class="form-group small">
					咨询进度：<select class="input-sm"><option>未选择</option>
						<option>很快</option>
						<option>一般</option></select>
				</div>
				<div class="form-group small">
					信息来源：<select class="input-sm"><option>未选择</option>
						<option>网络</option>
						<option>亲戚</option></select>
				</div>
				<div class="form-group pdate">
					咨询时间：<input id="birthday" name="birthday"
						class="form-control layer-date Wdate" type="text"
						onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
						onfocus="WdatePicker({lang:'zh-cn',readOnly:true,maxDate:'#F{$dp.$D(\'enrollDate\')||\'2050-10-01\'}'})"
						readonly>

				</div>
				<div class="form-group pdate">
					至 <input id="enrollDate" name="enrollDate"
						class="form-control layer-date Wdate" type="text"
						onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
						onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
						onfocus="WdatePicker({lang:'zh-cn',readOnly:true,minDate:'#F{$dp.$D(\'birthday\')}',maxDate:'2020-10-01'})">
				</div>
				<br />
				<br />
				<div class="form-group small">
					市场分类：<select class="input-sm"><option>未选择</option>
						<option>是</option>
						<option>否</option></select> 咨询分类：<select class="input-sm"><option>未选择</option>
						<option>是</option>
						<option>否</option></select>
				</div>
				<div class="form-group small">
					市场专员：<select class="input-sm"><option>未选择</option>
						<option>很快</option>
						<option>一般</option></select>
				</div>
				<div class="form-group pdate">
					回复时间： <input id="birthday" name="birthday"
						class="form-control layer-date Wdate" type="text"
						onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
						onfocus="WdatePicker({lang:'zh-cn',readOnly:true,maxDate:'#F{$dp.$D(\'enrollDate\')||\'2050-10-01\'}'})"
						readonly>
				</div>
				<div class="form-group pdate">
					至 <input id="enrollDate" name="enrollDate"
						class="form-control layer-date Wdate" type="text"
						onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
						onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd HH:mm:ss'})"
						onfocus="WdatePicker({lang:'zh-cn',readOnly:true,minDate:'#F{$dp.$D(\'birthday\')}',maxDate:'2020-10-01'})">
				</div>
				<div class="form-group">
					<button id="btn" class="btn-info">查询</button>
				</div>
			</form>
			<br />
		</div>
		<div class="row">
			<div class="col-xs-12">
				<!-- PAGE CONTENT BEGINS -->

				<div class="row">
					<div class="col-xs-12">
						<div class="table-responsive">
							<table id="sample-table-1"
								class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th class="center"><label> <input type="checkbox"
												class="ace" /> <span class="lbl"></span>
										</label></th>
										<th>Domain</th>
										<th>Price</th>
										<th class="hidden-480">Clicks</th>

										<th><i class="icon-time bigger-110 hidden-480"></i>
											Update</th>
										<th class="hidden-480">Status</th>

										<th></th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td class="center"><label> <input type="checkbox"
												class="ace" /> <span class="lbl"></span>
										</label></td>

										<td><a href="#">ace.com</a></td>
										<td>$45</td>
										<td class="hidden-480">3,330</td>
										<td>Feb 12</td>

										<td class="hidden-480"><span
											class="label label-sm label-warning">Expiring</span></td>

										<td>
											<div
												class="visible-md visible-lg hidden-sm hidden-xs btn-group">
												<button class="btn btn-xs btn-success">
													<i class="icon-ok bigger-120"></i>
												</button>

												<button class="btn btn-xs btn-info">
													<i class="icon-edit bigger-120"></i>
												</button>

												<button class="btn btn-xs btn-danger">
													<i class="icon-trash bigger-120"></i>
												</button>

												<button class="btn btn-xs btn-warning">
													<i class="icon-flag bigger-120"></i>
												</button>
											</div>

											<div class="visible-xs visible-sm hidden-md hidden-lg">
												<div class="inline position-relative">
													<button class="btn btn-minier btn-primary dropdown-toggle"
														data-toggle="dropdown">
														<i class="icon-cog icon-only bigger-110"></i>
													</button>

													<ul
														class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
														<li><a href="#" class="tooltip-info"
															data-rel="tooltip" title="View"> <span class="blue">
																	<i class="icon-zoom-in bigger-120"></i>
															</span>
														</a></li>

														<li><a href="#" class="tooltip-success"
															data-rel="tooltip" title="Edit"> <span class="green">
																	<i class="icon-edit bigger-120"></i>
															</span>
														</a></li>

														<li><a href="#" class="tooltip-error"
															data-rel="tooltip" title="Delete"> <span class="red">
																	<i class="icon-trash bigger-120"></i>
															</span>
														</a></li>
													</ul>
												</div>
											</div>
										</td>
									</tr>

									<tr>
										<td class="center"><label> <input type="checkbox"
												class="ace" /> <span class="lbl"></span>
										</label></td>

										<td><a href="#">base.com</a></td>
										<td>$35</td>
										<td class="hidden-480">2,595</td>
										<td>Feb 18</td>

										<td class="hidden-480"><span
											class="label label-sm label-success">Registered</span></td>

										<td>
											<div
												class="visible-md visible-lg hidden-sm hidden-xs btn-group">
												<button class="btn btn-xs btn-success">
													<i class="icon-ok bigger-120"></i>
												</button>

												<button class="btn btn-xs btn-info">
													<i class="icon-edit bigger-120"></i>
												</button>

												<button class="btn btn-xs btn-danger">
													<i class="icon-trash bigger-120"></i>
												</button>

												<button class="btn btn-xs btn-warning">
													<i class="icon-flag bigger-120"></i>
												</button>
											</div>

											<div class="visible-xs visible-sm hidden-md hidden-lg">
												<div class="inline position-relative">
													<button class="btn btn-minier btn-primary dropdown-toggle"
														data-toggle="dropdown">
														<i class="icon-cog icon-only bigger-110"></i>
													</button>

													<ul
														class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
														<li><a href="#" class="tooltip-info"
															data-rel="tooltip" title="View"> <span class="blue">
																	<i class="icon-zoom-in bigger-120"></i>
															</span>
														</a></li>

														<li><a href="#" class="tooltip-success"
															data-rel="tooltip" title="Edit"> <span class="green">
																	<i class="icon-edit bigger-120"></i>
															</span>
														</a></li>

														<li><a href="#" class="tooltip-error"
															data-rel="tooltip" title="Delete"> <span class="red">
																	<i class="icon-trash bigger-120"></i>
															</span>
														</a></li>
													</ul>
												</div>
											</div>
										</td>
									</tr>

									<tr>
										<td class="center"><label> <input type="checkbox"
												class="ace" /> <span class="lbl"></span>
										</label></td>

										<td><a href="#">max.com</a></td>
										<td>$60</td>
										<td class="hidden-480">4,400</td>
										<td>Mar 11</td>

										<td class="hidden-480"><span
											class="label label-sm label-warning">Expiring</span></td>

										<td>
											<div
												class="visible-md visible-lg hidden-sm hidden-xs btn-group">
												<button class="btn btn-xs btn-success">
													<i class="icon-ok bigger-120"></i>
												</button>

												<button class="btn btn-xs btn-info">
													<i class="icon-edit bigger-120"></i>
												</button>

												<button class="btn btn-xs btn-danger">
													<i class="icon-trash bigger-120"></i>
												</button>

												<button class="btn btn-xs btn-warning">
													<i class="icon-flag bigger-120"></i>
												</button>
											</div>

											<div class="visible-xs visible-sm hidden-md hidden-lg">
												<div class="inline position-relative">
													<button class="btn btn-minier btn-primary dropdown-toggle"
														data-toggle="dropdown">
														<i class="icon-cog icon-only bigger-110"></i>
													</button>

													<ul
														class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
														<li><a href="#" class="tooltip-info"
															data-rel="tooltip" title="View"> <span class="blue">
																	<i class="icon-zoom-in bigger-120"></i>
															</span>
														</a></li>

														<li><a href="#" class="tooltip-success"
															data-rel="tooltip" title="Edit"> <span class="green">
																	<i class="icon-edit bigger-120"></i>
															</span>
														</a></li>

														<li><a href="#" class="tooltip-error"
															data-rel="tooltip" title="Delete"> <span class="red">
																	<i class="icon-trash bigger-120"></i>
															</span>
														</a></li>
													</ul>
												</div>
											</div>
										</td>
									</tr>

									<tr>
										<td class="center"><label> <input type="checkbox"
												class="ace" /> <span class="lbl"></span>
										</label></td>

										<td><a href="#">best.com</a></td>
										<td>$75</td>
										<td class="hidden-480">6,500</td>
										<td>Apr 03</td>

										<td class="hidden-480"><span
											class="label label-sm label-inverse arrowed-in">Flagged</span>
										</td>

										<td>
											<div
												class="visible-md visible-lg hidden-sm hidden-xs btn-group">
												<button class="btn btn-xs btn-success">
													<i class="icon-ok bigger-120"></i>
												</button>

												<button class="btn btn-xs btn-info">
													<i class="icon-edit bigger-120"></i>
												</button>

												<button class="btn btn-xs btn-danger">
													<i class="icon-trash bigger-120"></i>
												</button>

												<button class="btn btn-xs btn-warning">
													<i class="icon-flag bigger-120"></i>
												</button>
											</div>

											<div class="visible-xs visible-sm hidden-md hidden-lg">
												<div class="inline position-relative">
													<button class="btn btn-minier btn-primary dropdown-toggle"
														data-toggle="dropdown">
														<i class="icon-cog icon-only bigger-110"></i>
													</button>

													<ul
														class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
														<li><a href="#" class="tooltip-info"
															data-rel="tooltip" title="View"> <span class="blue">
																	<i class="icon-zoom-in bigger-120"></i>
															</span>
														</a></li>

														<li><a href="#" class="tooltip-success"
															data-rel="tooltip" title="Edit"> <span class="green">
																	<i class="icon-edit bigger-120"></i>
															</span>
														</a></li>

														<li><a href="#" class="tooltip-error"
															data-rel="tooltip" title="Delete"> <span class="red">
																	<i class="icon-trash bigger-120"></i>
															</span>
														</a></li>
													</ul>
												</div>
											</div>
										</td>
									</tr>

									<tr>
										<td class="center"><label> <input type="checkbox"
												class="ace" /> <span class="lbl"></span>
										</label></td>

										<td><a href="#">pro.com</a></td>
										<td>$55</td>
										<td class="hidden-480">4,250</td>
										<td>Jan 21</td>

										<td class="hidden-480"><span
											class="label label-sm label-success">Registered</span></td>

										<td>
											<div
												class="visible-md visible-lg hidden-sm hidden-xs btn-group">
												<button class="btn btn-xs btn-success">
													<i class="icon-ok bigger-120"></i>
												</button>

												<button class="btn btn-xs btn-info">
													<i class="icon-edit bigger-120"></i>
												</button>

												<button class="btn btn-xs btn-danger">
													<i class="icon-trash bigger-120"></i>
												</button>

												<button class="btn btn-xs btn-warning">
													<i class="icon-flag bigger-120"></i>
												</button>
											</div>

											<div class="visible-xs visible-sm hidden-md hidden-lg">
												<div class="inline position-relative">
													<button class="btn btn-minier btn-primary dropdown-toggle"
														data-toggle="dropdown">
														<i class="icon-cog icon-only bigger-110"></i>
													</button>

													<ul
														class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
														<li><a href="#" class="tooltip-info"
															data-rel="tooltip" title="View"> <span class="blue">
																	<i class="icon-zoom-in bigger-120"></i>
															</span>
														</a></li>

														<li><a href="#" class="tooltip-success"
															data-rel="tooltip" title="Edit"> <span class="green">
																	<i class="icon-edit bigger-120"></i>
															</span>
														</a></li>

														<li><a href="#" class="tooltip-error"
															data-rel="tooltip" title="Delete"> <span class="red">
																	<i class="icon-trash bigger-120"></i>
															</span>
														</a></li>
													</ul>
												</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- /.table-responsive -->
					</div>
					<!-- /span -->
				</div>
				<!-- /row -->

				<div class="hr hr-18 dotted hr-double"></div>
				<!-- PAGE CONTENT ENDS -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
	</div>
</body>
</html>