<%@ page language="java" import="java.util.*"
         contentType="text/html;charset=utf-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
    <META http-equiv=Content-Type content="text/html; charset=utf-8">
    <jsp:include page="../../head/head.jsp"/>
    <script type="text/javascript">
        var setting = {
            data: {
                //表示tree的数据格式
                simpleData: {
                    enable: true,//表示使用简单数据模式
                    idKey: "id",//默认为:id,设置之后id为在简单数据模式中的父子节点关联的桥梁
                    pIdKey: "pid",//默认为:pId设置之后pid为在简单数据模式中的父子节点关联的桥梁和id互相对应
                    rootId: null,//pid为null的表示根节点
                },
                key: {
                    name: "menuName"//默认为:name
                }
            },
            view: {//表示tree的显示状态
                selectMulti: false
                //表示禁止多选
            },
            callback: {//表示tree的一些事件处理函数
                onClick: function (event, treeId, treeNode) {
                    $('#listChannel').attr('src', '${pageContext.request.contextPath}/sys/menu/info.htm?menuId=' + treeNode.id);
                    changeFrameHeight();
                }
            }
        }

        function initTree() {
            //进行ajax传值
            $.ajax({
                url: "${pageContext.servletContext.contextPath}/sys/menu/doList.do",
                type: "post",
                dataType: "json",
                data: $('form').serializeJson(),
                success: function (msg) {
                    //要执行的代码
                    if (msg.success) {
                        $.fn.zTree.init($("#channelTree"), setting,
                            msg.pageResults);
                    }
                }
            });
        }

        function handlerClick(event, treeId, treeNode) {
            $('#listChannel').attr('src', '${pageContext.request.contextPath}/sys/menu/info.htm?menuId=' + treeNode.id);
            changeFrameHeight();
        }

        function changeFrameHeight() {
            var ifm = document.getElementById("listChannel");
            ifm.height = document.documentElement.clientHeight;
        }

        $(function () {
            initTree();
        })
    </script>
</head>
<body>
<div class="breadcrumbs" id="breadcrumbs">
    <ul class="breadcrumb">
        <li>
            <i class="icon-home home-icon"></i>
            <a href="#">系统管理</a>
        </li>
        <li class="active">添加捐赠</li>
    </ul><!-- .breadcrumb -->
    <div class="nav-search" id="nav-search">
        <form class="form-search">
                <span class="input-icon">
                    <input type="text" placeholder="Search ..." class="nav-search-input"
                           id="nav-search-input" autocomplete="off"/>
                    <i class="icon-search nav-search-icon"></i>
                </span>
        </form>
    </div><!-- #nav-search -->
</div>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td height="2">&nbsp;</td>
    </tr>
    <tr>
        <td bgcolor="#FFFFFF" style="height: 490px; vertical-align: top;">
            <div class="container">
                <div class="row">
                    <!-- 左侧树形展示 -->
                    <div class="col-md-2">
                        <ul id="channelTree" class="ztree">
                        </ul>
                    </div>
                    <!-- 右侧详细信息展示 -->
                    <div class="col-md-10">
                        <iframe id="listChannel" Name="listChannel" frameborder=0 src=""
                                scrolling=auto width=100%></iframe>
                    </div>
                </div>
            </div>
        </td>
    </tr>
</table>
</body>