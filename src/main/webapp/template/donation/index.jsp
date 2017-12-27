<%@ page language="java" import="java.util.*"
         contentType="text/html;charset=utf-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
    <META http-equiv=Content-Type content="text/html; charset=utf-8">
    <jsp:include page="../head/head.jsp"/>
    <script type="text/javascript">
        $(function () {
            var param = {};

            function doPage() {
                $('#page').bPage({
                    url: '${pageContext.request.contextPath}/donation/doList.do',
                    asyncLoad: true,
                    serverSidePage: false,
                    params: function () {
                        return param;
                    },
                    render: function (data) {
                        var tb = $('#dataGridTableJson tbody');
                        tb.empty();
                        if (data && data.pageResults
                            && data.pageResults.length > 0) {
                            $.each(data.pageResults, function (i, row) {
                                var tr = $('<tr></tr>');
                                tr.append('<td>' + (i + 1) + '</td>');
                                tr.append('<td>' + row.donationRealName + '</td>');
                                tr.append('<td>' + row.doneeRealName + '</td>');
                                tr.append('<td>' + row.donationBatchId + '</td>');
                                tr.append('<td>' + formatTime(row.createTime.time) + '</td>');
                                var td = $('<td></td>');
                                var detailBtn = $('<button onclick="detail(\'' + row.donationBatchId + '\')">详情</button>');
                                detailBtn.addClass('btn-xs btn btn-info');
                                td.append(detailBtn)
                                tr.append(td);
                                tb.append(tr);
                            });
                        }
                    }
                });
            }

            doPage();
            $('button').click(function () {
                $('#page').empty();
                var form = $('form').serializeJson();
                param = form;
                doPage();
                return false;
            });
        });

        //详情方法
        function detail(id) {
            layer.open({
                type: 2,
                shade: false,
                area: ['1200px', '500px'],
                maxmin: true,
                offset: 't',
                content: ['${pageContext.servletContext.contextPath}/donation/detail.htm?donationBatchId=' + id, 'no'],
                btn: ['关闭'],
                yes: function (index) {
                    layer.close(index);
                }
            });
        }
    </script>
</head>
<body>
<div class="breadcrumbs" id="breadcrumbs">
    <ul class="breadcrumb">
        <li>
            <i class="icon-home home-icon"></i>
            <a href="#">捐赠</a>
        </li>
        <li class="active">捐赠信息查询</li>
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
<div class="page-content">
    <div class="page-header">
        <div class="form-inline input-group-sm">
            <div class="form-group ">
                <label for="donationRealName" class="sr-only">姓名</label>
                <span class="input-icon">
                    <input type="password" class="form-control" name="donationRealName"
                           id="donationRealName" placeholder="请输入捐赠人姓名">
                    <i class="icon-search nav-search-icon"></i>
                </span>
            </div>
            <button class="btn btn-default btn-sm">查询</button>
        </div>
    </div>
    <div>
        <table id="dataGridTableJson"
               class="table table-bordered table-hover table-condensed">
            <thead>
            <tr>
                <th>编号</th>
                <th>捐赠人姓名</th>
                <th>受捐人名称</th>
                <th>捐赠批次号</th>
                <th>捐赠时间</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
    <div id="page"></div>
</div>
</body>