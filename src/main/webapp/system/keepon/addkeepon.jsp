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
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="page-container">
		<div class="text-c">
			<!-- <button onclick="removeIframe()" class="btn btn-primary radius">关闭选项卡</button> -->
			<form action="" method="post" class="form form-horizontal"
				id="form-article-add">
				<div class="row cl">
					<label class="form-label col-xs-6 col-sm-1"><span
						class="c-red"></span>学员姓名:</label>
					<div class="formControls col-xs-6 col-sm-3">
						<input type="text" class="input-text" value="" placeholder=""
							id="" name="">
					</div>
					<label class="form-label col-xs-6 col-sm-1">信息来源:</label>
					<div class="formControls col-xs-6 col-sm-3">
						<input type="text" class="input-text" value="" placeholder=""
							id="" name="">
					</div>
					<label class="form-label col-xs-6 col-sm-1">年龄:</label>
					<div class="formControls col-xs-6 col-sm-3">
						<input type="text" class="input-text" value="" placeholder=""
							id="" name="">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-6 col-sm-1">性别:</label>
					<div class="formControls col-xs-6 col-sm-3">
						<label> <input name="sex" type="radio" id="six_1"
							value="1" checked> 男
						</label> <label> <input type="radio" name="sex" value="0"
							id="six_0"> 女
						</label>
					</div>
					<label class="form-label col-xs-6 col-sm-1">关联人:</label>
					<div class="formControls col-xs-6 col-sm-3">
						<input type="text" class="input-text" value="" placeholder=""
							id="" name="">
					</div>
					<label class="form-label col-xs-6 col-sm-1"><span
						class="c-red"></span>关系:</label>
					<div class="formControls col-xs-6 col-sm-3">
						<input type="text" class="input-text" value=""
							placeholder="如：父亲，兄长" id="" name="">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-6 col-sm-1">QQ:</label>
					<div class="formControls col-xs-6 col-sm-3">
						<input type="text" class="input-text" value=""
							placeholder="填写正确的QQ号码" id="" name="">
					</div>
					<label class="form-label col-xs-6 col-sm-1">联系电话:</label>
					<div class="formControls col-xs-6 col-sm-3">
						<input type="text" class="input-text" value="" placeholder=""
							id="" name="">
					</div>
					<label class="form-label col-xs-6 col-sm-1">所在区域:</label>
					<div class="formControls col-xs-6 col-sm-3">
						<input type="text" class="input-text" value="" placeholder=""
							id="" name="">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-6 col-sm-1">预计上门时间:</label>
					<div class="formControls col-xs-6 col-sm-3">
					<input type="text"
							onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}' })"
							id="logmin" class="input-text Wdate"  style="width: 115px;">
					</div>
					<label class="form-label col-xs-6 col-sm-1">学历:</label>
					<div class="formControls col-xs-6 col-sm-3">
						<select name="" class="select-box select">
							<option value="0">初中</option>
							<option value="1">高中</option>
							<option value="2">大学</option>
						</select>
					</div>
					<label class="form-label col-xs-6 col-sm-1">学历:</label>
					<div class="formControls col-xs-6 col-sm-3">
						<select name="" class="select-box select">
							<option value="0">初中</option>
							<option value="1">高中</option>
							<option value="2">大学</option>
						</select>
					</div>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-6 col-sm-1">咨询时间:</label>
					<div class="formControls col-xs-6 col-sm-3">
						<select name="" class="select-box select">
							<option value="0">A</option>
							<option value="1">B</option>
							<option value="2">C</option>
						</select>
					</div>
					<label class="form-label col-xs-6 col-sm-1">所在区域:</label>
					<div class="formControls col-xs-6 col-sm-3">
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