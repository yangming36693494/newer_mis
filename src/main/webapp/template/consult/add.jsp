<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>市场数据备案添加</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<jsp:include page="../head/head.jsp" />
</head>
<body>
	<div class="row">
		<!---表單 類容-->
		<form class="form-horizontal" role="form" action="#" method="post">

			<!--左边类容-->
			<div class="col-xs-6">


				<div class="form-group has-success has-feedback">
					<label class="col-sm-3 control-label no-padding-right"
						style="color: black">学员姓名 </label>

					<div class="col-sm-9">
						<input type="text" name="stuName" id="stuName" placeholder="王倩"
							class="col-xs-10 col-sm-7" style="border-color: #CDCDCD" /> <span
							class="glyphicon glyphicon-ok form-control-feedback"></span>
					</div>
				</div>


				<div class="space-4"></div>

				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="age">年龄</label>
					<div class="col-sm-9">
						<input type="text" id="age" placeholder="18"
							class="col-xs-10 col-sm-7" />
					</div>
				</div>
				<div class="space-4"></div>

				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="nv">
						性别 </label>

					<div class="col-sm-9">
						<label class="radio-inline"> <input type="radio"
							name="sex" id="nan" value="option1" checked="checked"> 男
						</label> <label class="radio-inline"> <input type="radio"
							name="sex" id="nv" value="option1"> 女
						</label>
					</div>
				</div>
				<div class="space-4"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right"
						for="nameRemarks">姓名备注</label>
					<div class="col-sm-9">
						<input type="text" id="nameRemarks" placeholder="倩倩"
							class="col-xs-10 col-sm-7" />
					</div>
				</div>
				<div class="space-4"></div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right" for="qq">QQ
					</label>

					<div class="col-sm-9">
						<input type="text" id="qq" placeholder=""
							class="col-xs-10 col-sm-7" />
					</div>
				</div>
				<div class="space-7"></div>
				<div class="form-group">
					<label class="control-label col-sm-3 no-padding-right"
						for="phoneNumber">联系电话 </label>

					<div class="col-sm-9">
						<div class="input-group">
							<span class="input-group-addon"> <i class="icon-phone"></i>
							</span> <input type="text" id="phoneNumber" name="phoneNumber"
								placeholder="" class="col-xs-10 col-sm-5" />
						</div>

					</div>
				</div>


				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right"
						for="address">所在区域 </label>

					<div class="col-sm-9">
						<input type="text" id="address" name="address"
							placeholder="湖南省永州市祁阳县" class="col-xs-10 col-sm-7" />
					</div>
				</div>


				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right">学校</label>

					<div class="col-sm-9">
						<span class="input-icon"> <input type="text" name="school"
							placeholder="尊宝大学" /> <i class="icon-leaf blue"></i>
						</span>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right"
						for="form-field-1"> 体系 </label>

					<div class="col-sm-9">
						<span class="input-icon input-icon-right"
							class="col-xs-10 col-sm-7"> <input type="text"
							name="specialty" placeholder="林业系" /> <i class="icon-leaf green"></i>
						</span>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right"
						for="specialty"> 专业</label>

					<div class="col-sm-9">
						<input type="text" id="specialty" placeholder="种植专业"
							class="col-xs-10 col-sm-7" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right"
						for="education">学历</label>

					<div class="col-sm-9">
						<input type="text" id="education" name="education"
							placeholder="本科" class="col-xs-10 col-sm-7" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right"
						for="remarks">备注</label>

					<div class="col-sm-9">
						<input type="text" id="remarks" name="remarks" placeholder=""
							class="col-xs-10 col-sm-7" />
						<div class="help-block" id="input-size-slider"></div>
					</div>
				</div>

			</div>
			<!--右边类容-->
			<div class="col-xs-6">

				<div class="form-group">
					<label class="col-sm-2 control-label no-padding-right"
						for="informationSource"> 信息来源</label>

					<div class="col-sm-10">
						<input type="text" id="informationSource" placeholder="Username"
							class="col-xs-10 col-sm-7" />
					</div>
				</div>

				<div class="space-4"></div>

				<div class="form-group">
					<label class="col-sm-2 control-label no-padding-right"
						for="marketingSpecialist"> 市场专员</label>

					<div class="col-sm-10">
						<input type="text" id="marketingSpecialist" placeholder=""
							class="col-xs-10 col-sm-7" /> <span
							class="help-inline col-xs-12 col-sm-7"> <span
							class="middle">该人员不存在！</span>
						</span>
					</div>
				</div>

				<div class="space-4"></div>

				<div class="form-group">
					<label class="col-sm-2 control-label no-padding-right"
						for="affiliatedPerson"> 关联人 </label>

					<div class="col-sm-10">
						<input type="text" class="col-xs-10 col-sm-5"
							id="affiliatedPerson" value="张国荣" /> <span
							class="help-inline col-xs-12 col-sm-5"> <label
							class="middle"> <input class="ace" type="checkbox"
								id="id-disable-check" /> <span class="lbl"> 例如：兄长介绍</span>
						</label>
						</span>
					</div>
				</div>
				<div class="space-4"></div>

				<div class="form-group">
					<label class="col-sm-2 control-label no-padding-right"
						for="relation"> 关联人关系</label>

					<div class="col-sm-10">
						<input type="text" id="relation" placeholder="例如：朋友关系"
							class="col-xs-10 col-sm-7" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label no-padding-right"
						for="consultant">咨询师</label>

					<div class="col-sm-10">
						<input readonly="" type="text" id="consultant" placeholder=""
							value="小芸" class="col-xs-10 col-sm-7" /> <span
							class="help-inline col-xs-12 col-sm-5"> <!--	<span class="middle">是否存在</span>-->
						</span>
					</div>
				</div>
				<div class="space-4"></div>
				<div class="form-group">
					<label class="col-sm-2 control-label no-padding-right"
						for="consultationime">咨询时间 </label>

					<div class="col-sm-10">
						<!--<input type="text" id="consultationime" placeholder="例如：2017-12-29" class="col-xs-10 col-sm-5" />
												<span class="help-inline col-xs-12 col-sm-7">
													<span class="middle">默认当前时间</span>
												</span>-->



						<div class="row">
							<div class="col-xs-6">
								<div class="input-group input-group-sm">
									<input type="text" id="consultationime" class="form-control" />
									<span class="input-group-addon"> <i
										class="icon-calendar"></i>
									</span>
								</div>
							</div>
						</div>


					</div>
				</div>
				<!--layer日期-->
				<script type="text/javascript">
					laydate.render({
						elem : "#consultationime", //绑定id
						format : 'yyyy年MM月dd日', //format自定义格式
						value : new Date(1534766888000)
					//初始值
					});
				</script>
				<div class="form-group">
					<label class="col-sm-2 control-label no-padding-right"
						for="consultationProgress">咨询进度</label>
					<div class="col-sm-10">
						<select id="studentType" name="studentType" style="width: 255px"
							class="form-control">
							<option value="">请选择</option>
							<option value="1">市场部</option>
							<option value="2">咨询部</option>
						</select>
					</div>
					<!-- <div class="col-sm-10">

						<div class="row">
							<div class="col-xs-10 col-sm-7">
								<div class="input-group">
									<input class="form-control" type="text"
										id="consultationProgress" placeholder="例如：几天前联系过" />
									<div class="input-group-btn">
										<button type="button"
											class="btn btn-sm btn-success dropdown-toggle"
											data-toggle="dropdown">
											<span class="caret"></span>
										</button>
										<ul class="dropdown-menu dropdown-menu-right">
											<li><a href="#">两天前联系过</a></li>
											<li><a href="#">三天前联系过</a></li>
											<li><a href="#">五天前联系过</a></li>
											<li><a href="#">一周前联系过</a></li>
										</ul>
									</div>
								</div>
								/input-group
							</div>
						</div>
					</div> -->
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label no-padding-right"
						for="contactState">联系状态</label>

					<div class="col-sm-10">
						<input type="text" id="contactState" placeholder=""
							class="col-xs-10 col-sm-7" /> <span
							class="help-inline col-xs-12 col-sm-7"> <!--<span class="middle">Inline help text</span>-->
						</span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label no-padding-right"
						for="doorTime">预计上门时间</label>
					<div class="col-sm-10">
						<div class="row">
							<div class="col-xs-6">
								<div class="input-group input-group-sm">
									<input type="text" id="doorTime" placeholder=""
										class="form-control" /> <span class="input-group-addon">
										<i class="icon-calendar"></i>
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="space-4"></div>


				<div class="form-group">
					<label class="col-sm-2 control-label no-padding-right"
						for="studentType">咨询分类</label>
					<div class="col-sm-10">
						<select id="studentType" name="studentType" style="width: 255px"
							class="form-control">
							<option value="">请选择</option>
							<option value="1">A</option>
							<option value="2">B部</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label no-padding-right"
						for="studentType">市场分类</label>
					<div class="col-sm-10">
						<select id="studentType" name="studentType" style="width: 255px"
							class="form-control">
							<option value="">请选择</option>
							<option value="1">A</option>
							<option value="2">B部</option>
						</select>
					</div>
				</div>

				<div class="space-4"></div>
				<div class="form-group">
					<label class="col-sm-2 control-label no-padding-right"
						for="consultationInfo">咨询信息</label>

					<div class="col-sm-10">
						<input data-rel="tooltip" type="text" id="consultationInfo"
							placeholder="" title="点击添加多条信息！" data-placement="bottom"
							class="col-xs-10 col-sm-6" />
						<!--添加-->
						<a href="#" class="btn btn-xs btn-yellow no-radius"
							data-toggle="modal" data-target="#myModalAdd"> <i
							class="icon-edit bigger-170"></i>
						</a>
						<!--查看-->
						<span class="help-button btn-lg glyphicon glyphicon-search"
							data-rel="popover" data-toggle="modal" data-target="#myModalShow"></span>
						<!-- Modal -->
						<div class="modal fade" id="myModalAdd" tabindex="-1"
							role="dialog" aria-labelledby="myModalAddLabel">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title" id="myModalAddLabel">添加咨询信息</h4>
									</div>
									<div class="modal-body">
										<div class="container-fluid">
											<form class="form-horizontal">
												<div class="form-group">
													<label class="col-sm-2 control-label">详细：</label>
													<div class="col-sm-6">
														<!--<input class="form-control has-success" type="text" placeholder="请输入姓名">-->

														<textarea class="form-control has-success" rows="10"
															cols="100%"></textarea>
													</div>
												</div>
											</form>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">关闭</button>
										<button type="button" class="btn btn-primary"
											data-dismiss="modal">保存</button>
									</div>
								</div>
							</div>
						</div>

						<!-- Modal2 显示多条 -->
						<div class="modal fade" id="myModalShow" tabindex="1"
							role="dialog" aria-labelledby="myModalShowLabel">
							<div class="modal-dialog" role="document">
								<div class="modal-content" style="width: 120%;">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title" id="myModalShowLabel">查看所有咨询信息</h4>
									</div>
									<div class="modal-body">
										<div class="container">
											<div class="row">
												<div class="table-striped table">
													<table class="table">
														<thead>
															<tr>
																<th>序号</th>
																<th>类容</th>
																<th>添加日期</th>
															</tr>
														</thead>
														<tbody>
															<tr>

																<td>#1</td>
																<td>大学没考上，来复读....大学没考上，</td>
																<td>2017-12-27</td>

															</tr>
															<tr>
																<td>#2</td>
																<td>初中毕业，在厂里打了几年工，想学门技术</td>
																<td>2017-10-17</td>
															</tr>
															<tr>
																<td>#3</td>
																<td>公司就职，想加深些技术，朋友介绍来的，联系人：笑笑</td>
																<td>2018-02-27</td>
															</tr>
															<tr>
																<td>#4</td>
																<td>学校某某老师一个院子的表姐的小舅子的堂哥的儿子的姨父的儿女，好好关照</td>
																<td>2017-09-12</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">关闭</button>
										<button type="button" class="btn btn-primary"
											data-dismiss="modal">保存</button>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>

				<div class="space-4"></div>

			</div>
			<!-- /右边类容-->

			<div class="space-4"></div>
			<div class="row">
				<div class="col-sm-11">
					<div class="col-md-offset-5">
						<button class="btn btn-sm btn-success" type="submit">
							<i class="icon-ok bigger-110"></i> 确认
						</button>
						&nbsp; &nbsp;
						<button class="btn btn-sm" type="reset">
							<i class="icon-undo bigger-110"></i> 重置
						</button>
						&nbsp;&nbsp;
						<button class="btn btn-sm btn-purple" type="button">
							<i class="icon-caret-right bigger-110"></i> 返回
						</button>
					</div>
				</div>
			</div>


		</form>

	</div>
	<!-- /.row -->
</body>