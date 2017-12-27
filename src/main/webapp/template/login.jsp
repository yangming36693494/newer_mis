<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta charset="utf-8" />
<title>newer招生咨询系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:include page="head/head.jsp" />
<!-- JS代码 -->
<script type="text/javascript">
	function show_box(id) {
		jQuery('.widget-box.visible').removeClass('visible');
		jQuery('#' + id).addClass('visible');
	}
	$(function() {
		$('#validation-form')
				.validate(
						{
							rules : {
								username : "required",
								password : "required",
								validateCode : "required"
							},
							messages : {
								username : '用户名必填',
								password : '密码必填',
								validateCode : "验证码不能为空"
							},
							submitHandler : function(form) {
								//进行ajax传值
								$
										.ajax({
											url : "${pageContext.servletContext.contextPath}/login.do",
											type : "post",
											dataType : "json",
											data : {
												username : $("#username").val(),
												password : $("#password").val(),
												validateCode : $(
														"#validateCode").val()
											},
											success : function(msg) {
												//要执行的代码
												if (!msg.success) {
													layer.msg(msg.msg);
													return;
												}
												//登录成功跳转页面
												window.location.href = "${pageContext.servletContext.contextPath}/template/index.jsp";
											}
										});
							}
						});
	})
	//刷新验证码的方法
	function reloadValidateCode() {
		//刷新验证码
		$("#validateCodeImg").attr(
				"src",
				"${pageContext.request.contextPath }/validateCode?data="
						+ new Date() + Math.floor(Math.random() * 24));
	}
</script>
</head>

<body class="login-layout">
	<div class="main-container">
		<div class="main-content">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="login-container">
						<div class="center">
							<h1>
								<i class="icon-leaf green"></i> <span class="red">招生咨询</span> <span
									class="white">管理系统</span>
							</h1>
							<h4 class="blue">&copy; 牛耳教育</h4>
						</div>

						<div class="space-6"></div>

						<div class="position-relative">
							<div id="login-box"
								class="login-box visible widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header blue lighter bigger">
											<i class="icon-coffee green"></i> 请登录...
										</h4>
										<div class="space-6"></div>
										<form id="validation-form">
											<fieldset>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="text" class="form-control" id="username"
														name="username" placeholder="请输入用户名..." /> <i
														class="icon-user"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="password" class="form-control"
														placeholder="请输入密码..." name="password" id="password" /> <i
														class="icon-lock"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="text" class="form-control" id="validateCode"
														name="validateCode" placeholder="请输入验证码..." />&nbsp;&nbsp;
														<img id="validateCodeImg"
														src="${pageContext.request.contextPath }/validateCode" />&nbsp;&nbsp;
														<a href="#" onclick="javascript:reloadValidateCode();">看不清？</a>
												</span>
												</label>

												<div class="space"></div>
												<div class="clearfix">
													<label class="inline"> <input type="checkbox"
														class="ace" /> <span class="lbl"> 记住</span>
													</label>

													<button type="submit"
														class="width-35 pull-right btn btn-sm btn-primary">
														<i class="icon-key"></i> 登录
													</button>
												</div>

												<div class="space-4"></div>
											</fieldset>
										</form>

									</div>
									<!-- /widget-main -->

									<div class="toolbar clearfix">
										<div>
											<a href="#" onclick="show_box('forgot-box'); return false;"
												class="forgot-password-link"> <i class="icon-arrow-left"></i>
												忘记密码
											</a>
										</div>
									</div>
								</div>
								<!-- /widget-body -->
							</div>
							<!-- /login-box -->

							<div id="forgot-box" class="forgot-box widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header red lighter bigger">
											<i class="icon-key"></i> 重置密码
										</h4>
										<div class="space-6"></div>
										<p>请输入注册邮箱号码</p>
										<form>
											<fieldset>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="email" class="form-control" placeholder="邮箱" /> <i
														class="icon-envelope"></i>
												</span>
												</label>

												<div class="clearfix">
													<button type="button"
														class="width-35 pull-right btn btn-sm btn-danger">
														<i class="icon-lightbulb"></i> 发送
													</button>
												</div>
											</fieldset>
										</form>
									</div>
									<!-- /widget-main -->

									<div class="toolbar center">
										<a href="#" onclick="show_box('login-box'); return false;"
											class="back-to-login-link"> 返回登录 <i
											class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
								<!-- /widget-body -->
							</div>
							<!-- /forgot-box -->
						</div>
						<!-- /widget-body -->
					</div>
					<!-- /signup-box -->
				</div>
				<!-- /position-relative -->
			</div>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	</div>
	</div>
	<!-- /.main-container -->
</body>
</html>
