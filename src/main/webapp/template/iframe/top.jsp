<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="navbar navbar-default" id="navbar">
    <div class="navbar-container" id="navbar-container">
        <div class="navbar-header pull-left">
            <a href="#" class="navbar-brand">
                <small>
                    <i class="icon-leaf"></i>
                    Newer招生咨询系统
                </small>
            </a><!-- /.brand -->
        </div><!-- /.navbar-header -->
        <div class="navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="light-blue">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="${pageContext.request.contextPath}/static/avatars/avatar2.png"
                             alt="Jason's Photo"/>
                        <%-- <span class="user-info">
                            <small>欢迎光临,</small>
                            <!-- 用户登录判断 -->
                            <c:choose>
                                <c:when test="${users == null}">
                                    <script type="text/javascript">
                                        window.self.location="login.jsp";
                                    </script>
                                </c:when>
                                <c:otherwise>
                                    ${users.realName}
                                </c:otherwise>
                            </c:choose>
                        </span> --%>
                        <i class="icon-caret-down"></i>
                    </a>
                    <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li>
                            <a href="#">
                                <i class="icon-cog"></i>
                                设置
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="icon-user"></i>
                                个人资料
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="login.jsp">
                                <i cla1ss="icon-off"></i>
                                退出1
                            </a>
                        </li>
                    </ul>
                </li>
            </ul><!-- /.ace-nav -->
        </div><!-- /.navbar-header -->
    </div><!-- /.container -->
</div>