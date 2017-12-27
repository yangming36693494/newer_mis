<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
    $(function () {
        $('.nav.nav-list').on('click', 'li', function (e) {
            var menuId = $(this).find('[name = menuId]').val();
            var level = $(this).find('[name = menuLevel]').val();
            var roleId = $(this).find('[name = roleId]').val();
            var submenu = $(this).find('.submenu');
            var thisLi=$(this);
            if (submenu.children().size() <= 0) {
                if (level != 1) {
                    $.ajax({
                        url: " ${pageContext.servletContext.contextPath}/index/doMenuQuery.do",
                        type: "post",
                        dataType: "json",
                        data: {
                            'id': menuId,
                            'roleId': roleId
                        },
                        success: function (data) {
                            //要执行的代码
                            if (!data.success) {
                                layer.msg(data.msg);
                                return;
                            }
                            $.each(data.pageResults, function (i, item) {
                                var li = $('<li></li>');
                                var menuLevel = $('<input type="hidden" name="menuLevel" value="' + item.menuLevel + '">'),
                                    menuId = $('<input type="hidden" name="menuId" value="' + item.menuId + '">'),
                                    roleId = $('<input type="hidden" name="roleId" value="' + item.roleId + '">');
                                li.append(menuLevel);
                                li.append(menuId);
                                li.append(roleId);
                                var ai = $('<i class="icon-double-angle-right"></i>');
                                //二级菜单
                                if (item.menuLevel != 0) {
                                    thisLi.addClass('open');
                                    var a = $('<a></a>');
                                    a.text(item.menuName);
                                    a.attr('href', '${pageContext.servletContext.contextPath}/' + item.menuUrl);
                                    a.attr('target', 'mainContent');
                                    a.append(ai);
                                    li.append(a);
                                }
                                //三级或更多
                                else{
                                    var a = $('<a></a>');
                                    a.append(ai);
                                    a.append(item.menuName);
                                    var ab=$('<b class="arrow icon-angle-down"></b>');
                                    a.append(ab);
                                    var subs=$('<ul class="submenu"></ul>');
                                    a.attr('href','#');
                                    a.addClass('dropdown-toggle');
                                    li.append(a);
                                    li.append(subs);
                                }
                                li.click(function () {
                                    $('.nav.nav-list li').removeClass('active');
                                    $(this).addClass('active');
                                });
                                submenu.append(li);
                            });
                        }
                    });
                }
            }else{
                $(this).addClass('open');
            }
        });
    })
    ;
</script>
<div class="main-container" id="main-container">
    <div class="main-container-inner">
        <div class="sidebar" id="sidebar">
            <div class="sidebar-shortcuts" id="sidebar-shortcuts">
                <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
                    <button class="btn btn-success">
                        <i class="icon-signal"></i>
                    </button>
                    <button class="btn btn-info">
                        <i class="icon-pencil"></i>
                    </button>
                    <button class="btn btn-warning">
                        <i class="icon-group"></i>
                    </button>
                    <button class="btn btn-danger">
                        <i class="icon-cogs"></i>
                    </button>
                </div>

                <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                    <span class="btn btn-success"></span>

                    <span class="btn btn-info"></span>

                    <span class="btn btn-warning"></span>

                    <span class="btn btn-danger"></span>
                </div>
            </div><!-- #sidebar-shortcuts -->

            <ul class="nav nav-list">
                <c:forEach items="${menus}" var="menu">
                    <c:choose>
                        <c:when test="${menu.menuLevel ==1}">
                            <li>
                                <input type="hidden" name="menuLevel" value="${menu.menuLevel}">
                                <input type="hidden" name="id" value="${menu.id}">
                                <a href="${menu.menuUrl}">
                                    <i class="icon-${menu.icon}"></i>
                                    <span class="menu-text"> ${menu.menuName} </span>
                                </a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li>
                                <input type="hidden" name="menuLevel" value="${menu.menuLevel}">
                                <input type="hidden" name="menuId" value="${menu.menuId}">
                                <input type="hidden" name="roleId" value="${menu.roleId}">
                                <a href="#" class="dropdown-toggle">
                                    <i class="icon-${menu.icon}"></i>
                                    <span class="menu-text"> ${menu.menuName} </span>
                                    <b class="arrow icon-angle-down"></b>
                                </a>
                                <ul class="submenu">
                                </ul>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </ul><!-- /.nav-list -->

            <div class="sidebar-collapse" id="sidebar-collapse">
                <i class="icon-double-angle-left" data-icon1="icon-double-angle-left"
                   data-icon2="icon-double-angle-right"></i>
            </div>
        </div>

        <div class="main-content">
            <iframe src="" id="mainContent"
                    class="no-border"
                    width="100%" scrolling="no" name="mainContent"></iframe>
        </div><!-- /.main-content -->
    </div><!-- /.main-container -->
</div>
<script type="text/javascript">
    $(function () {
        startInit('mainContent');
    });

    var browserVersion = window.navigator.userAgent.toUpperCase();
    var isOpera = browserVersion.indexOf("OPERA") > -1 ? true : false;
    var isFireFox = browserVersion.indexOf("FIREFOX") > -1 ? true : false;
    var isChrome = browserVersion.indexOf("CHROME") > -1 ? true : false;
    var isSafari = browserVersion.indexOf("SAFARI") > -1 ? true : false;
    var isIE = (!!window.ActiveXObject || "ActiveXObject" in window);
    var isIE9More = (!-[1,] == false);

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
                var heightDeviation = bHeight - eval("window.IE9MoreRealHeight" + iframeId);
                if (heightDeviation == 0) {
                    bHeight += 3;
                } else if (heightDeviation != 3) {
                    eval("window.IE9MoreRealHeight" + iframeId + "=" + bHeight);
                    bHeight += 3;
                }
            }
            else//ie[6-8]、OPERA
                bHeight += 3;

            var height = Math.max(bHeight, dHeight);
            if (height < minHeight) height = minHeight;
            iframe.style.height = height + "px";
        } catch (ex) {
        }
    }

    function startInit(iframeId, minHeight) {
        eval("window.IE9MoreRealHeight" + iframeId + "=0");
        window.setInterval("reinitIframe('" + iframeId + "'," + minHeight + ")", 200);
    }
</script>