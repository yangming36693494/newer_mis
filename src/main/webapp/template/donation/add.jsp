<%@ page language="java" import="java.util.*"
         contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
    <TITLE>捐献物品</TITLE>
    <META http-equiv=Content-Type content="text/html; charset=utf-8">
    <jsp:include page="../head/head.jsp"/>
    <script type="text/javascript">
        $(function () {
            $('#form').validate({
                rules: {
                    goodsName: "required",
                    goodsTypeId: "required",
                    doneeUserId: "required",
                    goodsCount: "required",
                },
                messages: {
                    goodsName: '商品名必填',
                    goodsTypeId: '商品类型必选',
                    doneeUserId: '受捐人必选',
                    goodsCount: '商品数量必填'
                },
                submitHandler: function (form) {
                    //获取所有的inputsWrapper对象
                    var inputsWrappers = $('tr [name=inputsWrapper]');
                    var targets = [];
                    $.each(inputsWrappers, function (index, inputsWrapper) {
                        var obj = {
                            donationUserId: $('#donationUserId').val(),
                            donationRealName: $('#donationRealName').val(),
                            doneeUserId: $('#doneeUserId').val(),
                            doneeRealName: $('#doneeUserId').find("option:selected").text(),
                            goodsName: $(inputsWrapper).find('#goodsName').val(),
                            goodsTypeId: $(inputsWrapper).find('#goodsTypeId').val(),
                            goodsTypeName: $(inputsWrapper).find('#goodsTypeId').find("option:selected").text(),
                            goodsCount: $(inputsWrapper).find('#goodsCount').val()
                        }
                        targets.push(obj);
                    });

                    //进行ajax传值
                    $.ajax({
                        url: "${pageContext.servletContext.contextPath}/donation/donation.do",
                        type: "post",
                        dataType: "json",
                        contentType: "application/json",
                        data: JSON.stringify(targets),
                        success: function (msg) {
                            //要执行的代码
                            if (!msg.success) {
                                layer.msg(msg.msg);
                                return;
                            }
                            //登录成功跳转页面
                            window.location.href = "${pageContext.servletContext.contextPath}/template/donation/index.jsp";
                        }
                    });
                    return false;
                }
            });

            //添加操作
            $(".addclass").click(function (e) {
                if ($("div[name=inputsWrapper]").length <= 8) {
                    var inputsWrapperClone = $("#inputsWrapper").clone();
                    inputsWrapperClone.find(".addclass").attr("class", "removeclass");
                    inputsWrapperClone.find("span").attr("class",'glyphicon glyphicon-minus')
                    //add input box
                    $("#inputsWrapper").after(inputsWrapperClone);
                }
                return false;
            });
            //减去操作
            $("body").on("click", ".removeclass", function (e) { //user click on remove text
                if ($("div[name=inputsWrapper]").length > 1) {
                    $(this).parent().remove(); //remove text box
                }
                return false;
            })
        });
    </script>
</head>
<body>
<div class="breadcrumbs" id="breadcrumbs">
    <ul class="breadcrumb">
        <li>
            <i class="icon-home home-icon"></i>
            <a href="#">捐赠</a>
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

<div class="page-content">
    <div class="page-header"></div>
    <form id="form" class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-4 control-label">捐赠人姓名：</label>
            <div class="col-sm-4">
                <input type="text" name="donationRealName" id="donationRealName" class="form-control"
                       readonly="readonly" value="${users.realName}">
                <input type="hidden" name="donationUserId" id="donationUserId" value="${users.id}">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">受捐人列表：</label>
            <div class="col-sm-4">
                <select name="doneeUserId" id="doneeUserId" class="form-control">
                    <option value="">请选择</option>
                    <c:forEach items="${result.donees}" var="donee">
                        <c:if test="${donee.id != users.id}">
                            <option value="${donee.id}">${donee.realName}</option>
                        </c:if>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="form-inline text-center" id="inputsWrapper" name="inputsWrapper">
            <label>物品名称：</label>
            <input type="text" id="goodsName" name="goodsName">
            <label>物品类型：</label>
            <select name="goodsTypeId" id="goodsTypeId" class="form-control" style="width: 200px">
                <option value="">请选择</option>
                <c:forEach items="${result.goodsTypes}" var="goodsType">
                    <option value="${goodsType.id}">${goodsType.typeName}</option>
                </c:forEach>
            </select>
            <label>物品数量：</label>
            <input type="text" id="goodsCount" name="goodsCount">
            <a href="#" class="addclass"><span class="glyphicon glyphicon-plus"/></a>
            <label id="goodsCount-error" class="error" for="goodsCount"></label>
        </div>
        <div class="page-header"></div>
        <div class="form-group">
            <div class="col-sm-2 col-sm-offset-3">
                <button class="btn btn-info">确认提交</button>
            </div>
        </div>
    </form>
</div>
</body>