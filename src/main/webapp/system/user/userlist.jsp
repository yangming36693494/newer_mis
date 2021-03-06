<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="../../resource/html5shiv.js"></script>
<script type="text/javascript" src="../../resource/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css"
	href="../../js/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="../../js/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="../../resource/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="../../js/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css"
	href="../../js/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="../../resource/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>添加用户信息</title>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		系统管理 <span class="c-gray en">&gt;</span> 添加用户信息 <a
			class="btn btn-success radius r"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="page-container">
		<div class="text-c">
			<!-- <button onclick="removeIframe()" class="btn btn-primary radius">关闭选项卡</button> -->
			<form action="" method="post" class="form form-horizontal"
				id="form-article-add">
				<div class="row cl">
					<label class="form-label col-xs-2 col-sm-1"><span
						class="c-red"></span>姓名:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<input type="text" class="input-text" value="" placeholder=""
							id="" name="">
					</div>
					<label class="form-label col-xs-2 col-sm-1">电话:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<input type="text" class="input-text" value="" placeholder=""
							id="" name="">
					</div>
					<label class="form-label col-xs-2 col-sm-1">QQ:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<input type="text" class="input-text" value="" placeholder=""
							id="" name="">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-2 col-sm-1">校区:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<select name="" class="select-box select">
							<option value="0">五一校区</option>
							<option value="1">河西小区</option>
						</select>
					</div>
					<label class="form-label col-xs-2 col-sm-1">咨询师:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<select name="" class="select-box select">
							<option value="0">唐僧</option>
							<option value="1">悟空</option>
						</select>
					</div>
					<label class="form-label col-xs-2 col-sm-1"><span
						class="c-red"></span>学员状态:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<select name="" class="select-box select">
							<option value="0">未报名</option>
							<option value="1">已报名</option>
							<option value="2">已进班</option>
						</select>
					</div>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-2 col-sm-1">咨询进度:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<select name="" class="select-box select">
							<option value="0">未报名</option>
							<option value="1">已报名</option>
							<option value="2">已进班</option>
						</select>
					</div>
					<label class="form-label col-xs-2 col-sm-1">信息来源:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<select name="" class="select-box select">
							<option value="0">未报名</option>
							<option value="1">已报名</option>
							<option value="2">已进班</option>
						</select>
					</div>
					<label class="form-label col-xs-2 col-sm-1">市场分类:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<select name="" class="select-box select">
							<option value="0">A</option>
							<option value="1">B</option>
							<option value="2">C</option>
						</select>
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-2 col-sm-1">咨询时间:</label>
					<div class="formControls col-xs-2 col-sm-3"
						style="float: left; text-align: left;">
						<input type="text"
							onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}' })"
							id="logmin" class="input-text Wdate" style="width: 115px;">
						- <input type="text"
							onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d' })"
							id="logmax" class="input-text Wdate" style="width: 115px;">
					</div>
					<label class="form-label col-xs-2 col-sm-1">回复时间:</label>
					<div class="formControls col-xs-2 col-sm-3"
						style="float: left; text-align: left;">
						<input type="text"
							onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}' })"
							id="logmin" class="input-text Wdate" style="width: 115px;">
						- <input type="text"
							onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d' })"
							id="logmax" class="input-text Wdate" style="width: 115px;">
					</div>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-2 col-sm-1">咨询分类:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<select name="" class="select-box select">
							<option value="0">A</option>
							<option value="1">B</option>
							<option value="2">C</option>
						</select>
					</div>
					<label class="form-label col-xs-2 col-sm-1">市场专员:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<select name="" class="select-box select">
							<option value="0">张三</option>
							<option value="1">李四</option>
							<option value="2">王五</option>
						</select>
					</div>
					<div class="formControls col-xs-4 col-sm-4">
						<button name="" id="" class="btn btn-success" type="submit">
							<i class="Hui-iconfont">&#xe665;</i> 查询
						</button>
						<button name="" id="" class="btn btn-info" type="button">
							<i class="Hui-iconfont">&#xe665;</i> 重置
						</button>
					</div>
				</div>
			</form>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"><a href="javascript:;" onclick="datadel()"
				class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
					批量删除</a> <a class="btn btn-primary radius" data-title="添加用戶"
				data-href="user/adduser.jsp" onclick="Hui_admin_tab(this)"
				href="javascript:;"><i class="Hui-iconfont">&#xe600;</i> 添加用户</a></span> <span
				class="r">共有数据：<strong>54</strong> 条
			</span>
		</div>
		<div class="mt-20">
			<table
				class="table table-border table-bordered table-bg table-hover table-sort table-responsive">
				<thead>
					<tr class="text-c">
						<th width="25"><input type="checkbox" name="" value=""></th>
						<th width="80">ID</th>
						<th>标题</th>
						<th width="80">分类</th>
						<th width="80">来源</th>
						<th width="120">更新时间</th>
						<th width="75">浏览次数</th>
						<th width="60">发布状态</th>
						<th width="120">操作</th>
					</tr>
				</thead>
				<tbody>
					<tr class="text-c">
						<td><input type="checkbox" value="" name=""></td>
						<td>10001</td>
						<td class="text-l"><u style="cursor: pointer"
							class="text-primary"
							onClick="article_edit('查看','article-zhang.html','10001')"
							title="查看">资讯标题</u></td>
						<td>行业动态</td>
						<td>H-ui</td>
						<td>2014-6-11 11:11:42</td>
						<td>21212</td>
						<td class="td-status"><span
							class="label label-success radius">已发布</span></td>
						<td class="f-14 td-manage"><a style="text-decoration: none"
							onClick="article_stop(this,'10001')" href="javascript:;"
							title="下架"><i class="Hui-iconfont">&#xe6de;</i></a> <a
							style="text-decoration: none" class="ml-5"
							onClick="article_edit('资讯编辑','article-add.html','10001')"
							href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
							<a style="text-decoration: none" class="ml-5"
							onClick="article_del(this,'10001')" href="javascript:;"
							title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
					</tr>
					<tr class="text-c">
						<td><input type="checkbox" value="" name=""></td>
						<td>10002</td>
						<td class="text-l"><u style="cursor: pointer"
							class="text-primary"
							onClick="article_edit('查看','article-zhang.html','10002')"
							title="查看">资讯标题</u></td>
						<td>行业动态</td>
						<td>H-ui</td>
						<td>2014-6-11 11:11:42</td>
						<td>21212</td>
						<td class="td-status"><span
							class="label label-success radius">草稿</span></td>
						<td class="f-14 td-manage"><a style="text-decoration: none"
							onClick="article_shenhe(this,'10001')" href="javascript:;"
							title="审核">审核</a> <a style="text-decoration: none" class="ml-5"
							onClick="article_edit('资讯编辑','article-add.html','10001')"
							href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
							<a style="text-decoration: none" class="ml-5"
							onClick="article_del(this,'10001')" href="javascript:;"
							title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript"
		src="../../resource/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="../../resource/layer/2.4/layer.js"></script>
	<script type="text/javascript" src="../../js/h-ui/js/H-ui.min.js"></script>
	<script type="text/javascript"
		src="../../js/h-ui.admin/js/H-ui.admin.js"></script>
	<!--/_footer 作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="../../resource/My97DatePicker/4.8/WdatePicker.js"></script>
	<script type="text/javascript"
		src="../../resource/datatables/1.10.0/jquery.dataTables.min.js"></script>
	<script type="text/javascript"
		src="../../resource/laypage/1.2/laypage.js"></script>
	<script type="text/javascript">
		$('.table-sort').dataTable({
			"aaSorting" : [ [ 1, "desc" ] ],//默认第几个排序
			"bStateSave" : true,//状态保存
			"pading" : false,
			"aoColumnDefs" : [
			//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
			{
				"orderable" : false,
				"aTargets" : [ 0, 8 ]
			} // 不参与排序的列
			]
		});

		/*资讯-添加*/
		function article_add(title, url, w, h) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*资讯-编辑*/
		function article_edit(title, url, id, w, h) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*资讯-删除*/
		function article_del(obj, id) {
			layer.confirm('确认要删除吗？', function(index) {
				$.ajax({
					type : 'POST',
					url : '',
					dataType : 'json',
					success : function(data) {
						$(obj).parents("tr").remove();
						layer.msg('已删除!', {
							icon : 1,
							time : 1000
						});
					},
					error : function(data) {
						console.log(data.msg);
					},
				});
			});
		}

		/*资讯-审核*/
		function article_shenhe(obj, id) {
			layer
					.confirm(
							'审核文章？',
							{
								btn : [ '通过', '不通过', '取消' ],
								shade : false,
								closeBtn : 0
							},
							function() {
								$(obj)
										.parents("tr")
										.find(".td-manage")
										.prepend(
												'<a class="c-primary" onClick="article_start(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
								$(obj)
										.parents("tr")
										.find(".td-status")
										.html(
												'<span class="label label-success radius">已发布</span>');
								$(obj).remove();
								layer.msg('已发布', {
									icon : 6,
									time : 1000
								});
							},
							function() {
								$(obj)
										.parents("tr")
										.find(".td-manage")
										.prepend(
												'<a class="c-primary" onClick="article_shenqing(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
								$(obj)
										.parents("tr")
										.find(".td-status")
										.html(
												'<span class="label label-danger radius">未通过</span>');
								$(obj).remove();
								layer.msg('未通过', {
									icon : 5,
									time : 1000
								});
							});
		}
		/*资讯-下架*/
		function article_stop(obj, id) {
			layer
					.confirm(
							'确认要下架吗？',
							function(index) {
								$(obj)
										.parents("tr")
										.find(".td-manage")
										.prepend(
												'<a style="text-decoration:none" onClick="article_start(this,id)" href="javascript:;" title="发布"><i class="Hui-iconfont">&#xe603;</i></a>');
								$(obj)
										.parents("tr")
										.find(".td-status")
										.html(
												'<span class="label label-defaunt radius">已下架</span>');
								$(obj).remove();
								layer.msg('已下架!', {
									icon : 5,
									time : 1000
								});
							});
		}

		/*资讯-发布*/
		function article_start(obj, id) {
			layer
					.confirm(
							'确认要发布吗？',
							function(index) {
								$(obj)
										.parents("tr")
										.find(".td-manage")
										.prepend(
												'<a style="text-decoration:none" onClick="article_stop(this,id)" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>');
								$(obj)
										.parents("tr")
										.find(".td-status")
										.html(
												'<span class="label label-success radius">已发布</span>');
								$(obj).remove();
								layer.msg('已发布!', {
									icon : 6,
									time : 1000
								});
							});
		}
		/*资讯-申请上线*/
		function article_shenqing(obj, id) {
			$(obj).parents("tr").find(".td-status").html(
					'<span class="label label-default radius">待审核</span>');
			$(obj).parents("tr").find(".td-manage").html("");
			layer.msg('已提交申请，耐心等待审核!', {
				icon : 1,
				time : 2000
			});
		}
	</script>
</body>
</html>