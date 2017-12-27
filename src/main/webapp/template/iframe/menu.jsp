<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
	$(function() {
		$("#sidebar a").click(function() {
			var value = $(this).attr("href");
			if (value == "#") {
			} else {
				$("#mainContent").attr("src", value);
				return false;
			}
		});
		return false;

	});
</script>
<div class="main-container" id="main-container">
	<div class="main-container-inner">
		<a class="menu-toggler" id="menu-toggler" href="#"> <span
			class="menu-text"></span>
		</a>
		<div class="sidebar" id="sidebar">
			<!-- #sidebar-shortcuts -->
			<ul class="nav nav-list">
				<li class="active"><a href="#"> <i class="icon-dashboard"></i>
						<span class="menu-text"> 控制台 </span>
				</a></li>
				<li><a href="#" class="dropdown-toggle"> <i
						class="icon-desktop"></i> <span class="menu-text"> 前台管理 </span> <b
						class="arrow icon-angle-down"></b>
				</a>

					<ul class="submenu">
						<li><a href="consult/add.jsp"> <i
								class="icon-double-angle-right"></i> 添加数据备案
						</a></li>
						<li><a href="consult/consult_list.jsp"> <i
								class="icon-double-angle-right"></i> 数据备案查询
						</a></li>
					</ul></li>

				<li><a href="#" class="dropdown-toggle"> <i
						class="icon-list"></i> <span class="menu-text"> 咨询管理 </span> <b
						class="arrow icon-angle-down"></b>
				</a>

					<ul class="submenu">
						<li><a href="consult/add.jsp"> <i
								class="icon-double-angle-right"></i> 添加咨询信息
						</a></li>
						<li><a href="consult/consult_list.jsp"> <i
								class="icon-double-angle-right"></i> 咨询信息查询
						</a></li>
					</ul></li>

				<li><a href="#" class="dropdown-toggle"> <i
						class="icon-edit"></i> <span class="menu-text"> 市场管理 </span> <b
						class="arrow icon-angle-down"></b>
				</a>

					<ul class="submenu">
						<li><a href="register.jsp"> <i
								class="icon-double-angle-right"></i> 注册市场员工
						</a></li>
						<li><a href="consult/simple_list.jsp"> <i
								class="icon-double-angle-right"></i> 数据简单查询
						</a></li>
					</ul></li>

			</ul>
			<!-- /.nav-list -->
			<div class="sidebar-collapse" id="sidebar-collapse">
				<i class="icon-double-angle-left"
					data-icon1="icon-double-angle-left"
					data-icon2="icon-double-angle-right"></i>
			</div>
		</div>

		<!-- 页面信息展示 -->
		<div class="main-content">
			<div class="breadcrumbs" id="breadcrumbs">
				<script type="text/javascript">
					try {
						ace.settings.check('breadcrumbs', 'fixed')
					} catch (e) {
					}
				</script>

				<ul class="breadcrumb">
					<li><i class="icon-home home-icon"></i> <a href="#">首页</a></li>
					<li class="active">数据备案信息查询</li>
				</ul>
				<!-- .breadcrumb -->

				<div class="nav-search" id="nav-search">
					<form class="form-search">
						<span class="input-icon"> <input type="text"
							placeholder="Search ..." class="nav-search-input"
							id="nav-search-input" autocomplete="off" /> <i
							class="icon-search nav-search-icon"></i>
						</span>
					</form>
				</div>
				<!-- #nav-search -->
			</div>
			<br />
			<iframe src="consult/consult_list.jsp" id="mainContent"
				class="no-border" width="100%" scrolling="no" name="mainContent"></iframe>
		</div>
	</div>
</div>
<script type="text/javascript">
	//iframe窗体适应
	$(function() {
		startInit('mainContent');
	});
	var browserVersion = window.navigator.userAgent.toUpperCase();
	var isOpera = browserVersion.indexOf("OPERA") > -1 ? true : false;
	var isFireFox = browserVersion.indexOf("FIREFOX") > -1 ? true : false;
	var isChrome = browserVersion.indexOf("CHROME") > -1 ? true : false;
	var isSafari = browserVersion.indexOf("SAFARI") > -1 ? true : false;
	var isIE = (!!window.ActiveXObject || "ActiveXObject" in window);
	var isIE9More = (!-[ 1, ] == false);

	function reinitIframe(iframeId, minHeight) {
		try {
			var iframe = document.getElementById(iframeId);
			var bHeight = 0;
			if (isChrome == false && isSafari == false)
				bHeight = iframe.contentWindow.document.body.scrollHeight;

			var dHeight = 0;
			if (isFireFox == true)
				dHeight = iframe.contentWindow.document.documentElement.offsetHeight + 2;
			else if (isIE == false && isOpera == false)
				dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
			else if (isIE == true && isIE9More) {//ie9+
				var heightDeviation = bHeight
						- eval("window.IE9MoreRealHeight" + iframeId);
				if (heightDeviation == 0) {
					bHeight += 3;
				} else if (heightDeviation != 3) {
					eval("window.IE9MoreRealHeight" + iframeId + "=" + bHeight);
					bHeight += 3;
				}
			} else
				//ie[6-8]、OPERA
				bHeight += 3;

			var height = Math.max(bHeight, dHeight);
			if (height < minHeight)
				height = minHeight;
			iframe.style.height = height + "px";
		} catch (ex) {
		}
	}
	function startInit(iframeId, minHeight) {
		eval("window.IE9MoreRealHeight" + iframeId + "=0");
		window.setInterval(
				"reinitIframe('" + iframeId + "'," + minHeight + ")", 200);
	}
</script>