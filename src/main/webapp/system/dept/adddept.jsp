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
<title>资讯列表</title>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		前台管理 <span class="c-gray en">&gt;</span> 数据备案 <a
			class="btn btn-success radius r"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="page-container">
		<div class="text-c">
			<!-- <button onclick="removeIframe()" class="btn btn-primary radius">关闭选项卡</button> -->
			<form action="" method="post" class="form form-horizontal"
				id="form-article-add">
				<div class="row cl">
					<label class="form-label col-xs-2 col-sm-1"><span
						class="c-red"></span>学员姓名:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<input type="text" class="input-text" value="" placeholder=""
							id="" name="">
					</div>
					<label class="form-label col-xs-2 col-sm-1">信息来源:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<input type="text" class="input-text" value="" placeholder=""
							id="" name="">
					</div>
					<label class="form-label col-xs-2 col-sm-1">年龄:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<input type="text" class="input-text" value="" placeholder=""
							id="" name="">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-2 col-sm-1">市场专员:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<select name="" class="select-box select">
							<option value="0">五一校区</option>
							<option value="1">河西小区</option>
						</select>
					</div>
					<label class="form-label col-xs-2 col-sm-1">性别:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<select name="" class="select-box select">
							<option value="0">唐僧</option>
							<option value="1">悟空</option>
						</select>
					</div>
					<label class="form-label col-xs-2 col-sm-1"><span
						class="c-red"></span>关联人:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<select name="" class="select-box select">
							<option value="0">未报名</option>
							<option value="1">已报名</option>
							<option value="2">已进班</option>
						</select>
					</div>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-2 col-sm-1">姓名备注:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<select name="" class="select-box select">
							<option value="0">未报名</option>
							<option value="1">已报名</option>
							<option value="2">已进班</option>
						</select>
					</div>
					<label class="form-label col-xs-2 col-sm-1">关联人关系:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<select name="" class="select-box select">
							<option value="0">未报名</option>
							<option value="1">已报名</option>
							<option value="2">已进班</option>
						</select>
					</div>
					<label class="form-label col-xs-2 col-sm-1">QQ:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<select name="" class="select-box select">
							<option value="0">A</option>
							<option value="1">B</option>
							<option value="2">C</option>
						</select>
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-2 col-sm-1">咨询师:</label>
					<div class="formControls col-xs-2 col-sm-3"
						style="float: left; text-align: left;">
						<input type="text"
							onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}' })"
							id="logmin" class="input-text Wdate"  style="width: 115px;">
						- <input type="text"
							onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d' })"
							id="logmax" class="input-text Wdate"  style="width: 115px;">
					</div>
					<label class="form-label col-xs-2 col-sm-1">联系电话:</label>
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
					<label class="form-label col-xs-2 col-sm-1">咨询时间:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<select name="" class="select-box select">
							<option value="0">A</option>
							<option value="1">B</option>
							<option value="2">C</option>
						</select>
					</div>
					<label class="form-label col-xs-2 col-sm-1">所在区域:</label>
					<div class="formControls col-xs-2 col-sm-3">
						<select name="" class="select-box select">
							<option value="0">张三</option>
							<option value="1">李四</option>
							<option value="2">王五</option>
						</select>
					</div>
				</div>

				<div class="row cl">
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
	</div>
	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript"
		src="../../resource/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="../../resource/layer/2.4/layer.js"></script>
	<script type="text/javascript" src="../../js/h-ui/js/H-ui.min.js"></script>
	<script type="text/javascript"
		src="../../js/h-ui.admin/js/H-ui.admin.js"></script>
	<!--/_footer 作为公共模版分离出去-->
</body>
</html>