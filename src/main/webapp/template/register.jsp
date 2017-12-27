<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<jsp:include page="head/head.jsp" />
</head>
<body>
	<div class="main-container">
		<div class="main-content">
			<div class="row">
				<div class="col-sm-5 col-sm-offset-1">
					<div class="login-container">
						<div class="center">
							<h1>
								<i class="icon-leaf green"></i> <span class="red">牛耳教育</span> <span
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
										<h4 class="header blue lighter bigger" style="width: 600px">
											<i class="icon-coffee green"></i> 新用户注册
										</h4>
										<div class="space-6"></div>
										<form>
											<fieldset>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="email" class="form-control" placeholder="用户名..."
														style="width: 600px;" /> <i class="icon-user"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="text" class="form-control" placeholder="登录名..." /> <i
														class="glyphicon glyphicon-user"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="password" class="form-control" placeholder="登陆密码..." />
														<i class="icon-lock"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="password" class="form-control" placeholder="确认密码..." />
														<i class="icon-lock"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="password" class="form-control" placeholder="手机号..." />
														<i class="glyphicon glyphicon-phone"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <select
														name="" placeholder="省" style="width: 188px">
															<option>省</option>
													</select> <select name="" placeholder="省" style="width: 188px">
															<option>市</option>
													</select> <select name="" placeholder="省" style="width: 188px">
															<option>区</option>
													</select> <i class="glyphicon glyphicon-phone"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="password" class="form-control" placeholder="上级主管..." />
														<i class="glyphicon glyphicon-user"></i>
												</span>
												</label>
												<div class="space-24"></div>
												<div class="clearfix">
													<button type="reset" class="width-30 pull-left btn btn-sm">
														<i class="icon-refresh"></i> 重置
													</button>

													<button type="button"
														class="width-65 pull-right btn btn-sm btn-success">
														注册 <i class="icon-arrow-right icon-on-right"></i>
													</button>
												</div>
											</fieldset>
										</form>

									</div>
									<!-- /widget-main -->


								</div>
								<!-- /widget-body -->
							</div>
							<!-- /login-box -->



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