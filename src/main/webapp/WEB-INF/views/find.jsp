<%--
  Created by IntelliJ IDEA.
  User: wz
  Date: 2017/10/16
  Time: 9:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String basePath = request.getContextPath();
%>
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/table_bootstrap.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:03 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - Bootstrap Table</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="<%=basePath%>/UI/hplus/html/favicon.ico">
    <link href="<%=basePath%>/UI/hplus/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="<%=basePath%>/UI/hplus/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="<%=basePath%>/UI/hplus/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="<%=basePath%>/UI/hplus/css/animate.min.css" rel="stylesheet">
    <link href="<%=basePath%>/UI/hplus/css/style.min862f.css?v=4.1.0" rel="stylesheet">


</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="ibox float-e-margins">
        <div class="ibox-title">
            <h5>基本</h5>
            <div class="ibox-tools">
                <a class="collapse-link">
                    <i class="fa fa-chevron-up"></i>
                </a>
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-wrench"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#">选项1</a>
                    </li>
                    <li><a href="#">选项2</a>
                    </li>
                </ul>
                <a class="close-link">
                    <i class="fa fa-times"></i>
                </a>
            </div>
        </div>
        <div class="ibox-content">
            <div class="row row-lg">
                <div class="col-sm-6">
                    <h4 class="example-title">从URL加载${tableNameEN}</h4>
                    <div class="example">
                        <table data-toggle="table" data-url="/data1/${tableNameEN}" data-height="250" data-mobile-responsive="true">
                            <thead>
                            <tr>
                                <c:forEach items="${field}" var="f">
                                    <th data-field="${f.name_en}">${f.name}</th>
                                </c:forEach>
                            </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Panel Basic -->

    <!-- Panel Style -->
    <div class="ibox float-e-margins">
        <div class="ibox-title">
            <h5>样式</h5>
            <div class="ibox-tools">
                <a class="collapse-link">
                    <i class="fa fa-chevron-up"></i>
                </a>
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-wrench"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#">选项1</a>
                    </li>
                    <li><a href="#">选项2</a>
                    </li>
                </ul>
                <a class="close-link">
                    <i class="fa fa-times"></i>
                </a>
            </div>
        </div>
        <div class="ibox-content">
            <div class="row row-lg">
                <div class="col-sm-6">
                    <!-- Example Classes -->
                    <div class="example-wrap">
                        <h4 class="example-title">类名称</h4>
                        <div class="example">
                            <table data-toggle="table" data-classes="table table-hover table-condensed" data-url="/data1/${tableNameEN}" data-striped="true" data-height="250" data-mobile-responsive="true">
                                <thead>
                                <tr>
                                    <c:forEach items="${field}" var="f">
                                        <th data-field="${f.name_en}">${f.name}</th>
                                    </c:forEach>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <!-- End Example Classes -->
                </div>

                <div class="col-sm-6">
                    <!-- Example Align -->
                    <div class="example-wrap">
                        <h4 class="example-title">对齐</h4>
                        <div class="example">
                            <table data-toggle="table" data-url="/data1/${tableNameEN}" data-mobile-responsive="true">
                                <thead>
                                <tr>
                                    <c:forEach items="${field}" var="f">
                                        <%-- data-halign="center" data-halign="left" --%>
                                        <th data-field="${f.name_en}" data-halign="right">${f.name}</th>
                                    </c:forEach>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <!-- End Example Align -->
                </div>

                <div class="clearfix hidden-xs"></div>

                <div class="col-sm-6">
                    <!-- Example Rowstyle -->
                    <div class="example-wrap margin-sm-0">
                        <h4 class="example-title">行样式</h4>
                        <div class="example">
                            <table data-toggle="table" data-url="/data1/${tableNameEN}" data-mobile-responsive="true" data-row-style="rowStyle" data-height="250">
                                <thead>
                                <tr>
                                    <c:forEach items="${field}" var="f">
                                        <%-- data-halign="center" data-halign="left" --%>
                                        <th data-field="${f.name_en}" data-halign="right">${f.name}</th>
                                    </c:forEach>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <!-- End Example Rowstyle -->
                </div>

                <div class="col-sm-6">
                    <!-- Example Cellstyle -->
                    <div class="example-wrap">
                        <h4 class="example-title">列样式</h4>
                        <div class="example">
                            <table data-toggle="table" data-url="/data1/${tableNameEN}" data-mobile-responsive="true">
                                <thead>
                                <tr>
                                    <c:forEach items="${field}" var="f">
                                        <th data-field="${f.name_en}" data-cell-style="cellStyle">${f.name}</th>
                                    </c:forEach>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <!-- End Example Cellstyle -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Panel Style -->

    <!-- Panel Sort & Hideheader -->
    <div class="ibox float-e-margins">
        <div class="ibox-title">
            <h5>排序&amp;隐藏头部</h5>
            <div class="ibox-tools">
                <a class="collapse-link">
                    <i class="fa fa-chevron-up"></i>
                </a>
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-wrench"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#">选项1</a>
                    </li>
                    <li><a href="#">选项2</a>
                    </li>
                </ul>
                <a class="close-link">
                    <i class="fa fa-times"></i>
                </a>
            </div>
        </div>
        <div class="ibox-content">
            <div class="row row-lg">
                <div class="col-sm-6">
                    <!-- Example Basic Sort -->
                    <div class="example-wrap">
                        <h4 class="example-title">基本排序</h4>
                        <div class="example">
                            <table data-toggle="table" data-url="/data1/${tableNameEN}" data-height="250" data-sort-name="First" data-sort-order="desc" data-mobile-responsive="true">
                                <thead>
                                <tr>
                                    <c:forEach items="${field}" var="f">
                                        <th data-field="${f.name_en}" data-sortable="true">${f.name}</th>
                                    </c:forEach>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <!-- End Example Basic Sort -->
                </div>

                <div class="col-sm-6">
                    <!-- Example Format Sort -->
                    <div class="example-wrap margin-sm-0">
                        <h4 class="example-title">格式排序</h4>
                        <div class="example">
                            <table data-toggle="table" data-url="/data1/${tableNameEN}" data-mobile-responsive="true">
                                <thead>
                                <tr>
                                    <c:forEach items="${field}" var="f">
                                        <th data-field="${f.name_en}" ata-formatter="nameFormatter">${f.name}</th>
                                    </c:forEach>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <!-- End Example Format Sort -->
                </div>

                <div class="clearfix hidden-xs"></div>

                <div class="col-sm-6">
                    <!-- Example Custom Sort -->
                    <div class="example-wrap">
                        <h4 class="example-title">自定义排序</h4>
                        <div class="example">
                            <table data-toggle="table" data-url="/data1/${tableNameEN}" data-height="250" data-sort-name="Score" data-sort-order="desc" data-mobile-responsive="true">
                                <thead>
                                <tr>
                                    <c:forEach items="${field}" var="f">
                                        <%--data-sortable="true" data-sorter="scoreSorter"--%>
                                        <th data-field="${f.name_en}" data-sortable="true">${f.name}</th>
                                    </c:forEach>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <!-- End Example Custom Sort -->
                </div>

                <div class="col-sm-6">
                    <!-- Example Hide Header -->
                    <div class="example-wrap">
                        <h4 class="example-title">隐藏头部</h4>
                        <div class="example">
                            <table data-toggle="table" data-url="/data1/${tableNameEN}" data-height="250" data-show-header="false" data-mobile-responsive="true">
                                <thead>
                                <tr>
                                    <c:forEach items="${field}" var="f">
                                        <th data-field="${f.name_en}">${f.name}</th>
                                    </c:forEach>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <!-- End Example Hide Header -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Panel Sort & Hideheader -->

    <!-- Panel Columns & Select -->
    <div class="ibox float-e-margins">
        <div class="ibox-title">
            <h5>列&amp;选择</h5>
            <div class="ibox-tools">
                <a class="collapse-link">
                    <i class="fa fa-chevron-up"></i>
                </a>
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-wrench"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#">选项1</a>
                    </li>
                    <li><a href="#">选项2</a>
                    </li>
                </ul>
                <a class="close-link">
                    <i class="fa fa-times"></i>
                </a>
            </div>
        </div>
        <div class="ibox-content">
            <div class="row row-lg">
                <div class="col-sm-6">
                    <!-- Example Radio Select -->
                    <div class="example-wrap margin-sm-0">
                        <h4 class="example-title">单选框</h4>
                        <div class="example">
                            <table data-toggle="table" data-url="/data1/${tableNameEN}" data-height="299" data-click-to-select="true" data-select-item-name="myRadioName" data-mobile-responsive="true">
                                <thead>
                                <tr>
                                    <th data-field="state" data-radio="true"></th>
                                    <c:forEach items="${field}" var="f">
                                        <th data-field="${f.name_en}">${f.name}</th>
                                    </c:forEach>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <!-- End Example Radio Select -->
                </div>

                <div class="col-sm-6">
                    <!-- Example Checkbox Select -->
                    <div class="example-wrap">
                        <h4 class="example-title">复选框</h4>
                        <div class="example">
                            <table data-toggle="table" data-url="/data1/${tableNameEN}" data-height="299" data-click-to-select="true" data-mobile-responsive="true">
                                <thead>
                                <tr>
                                    <th data-field="state" data-checkbox="true"></th>
                                    <c:forEach items="${field}" var="f">
                                        <th data-field="${f.name_en}">${f.name}</th>
                                    </c:forEach>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <!-- End Example Checkbox Select -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Panel Columns & Select -->

    <!-- Panel Other -->
    <div class="ibox float-e-margins">
        <div class="ibox-title">
            <h5>其他</h5>
            <div class="ibox-tools">
                <a class="collapse-link">
                    <i class="fa fa-chevron-up"></i>
                </a>
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-wrench"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#">选项1</a>
                    </li>
                    <li><a href="#">选项2</a>
                    </li>
                </ul>
                <a class="close-link">
                    <i class="fa fa-times"></i>
                </a>
            </div>
        </div>
        <div class="ibox-content">
            <div class="row row-lg">
                <div class="col-sm-12">
                    <!-- Example Card View -->
                    <div class="example-wrap">
                        <h4 class="example-title">卡片视图</h4>
                        <div class="example">
                            <table data-toggle="table" data-url="/data1/${tableNameEN}" data-card-view="true" data-mobile-responsive="true">
                                <thead>
                                <tr>
                                    <c:forEach items="${field}" var="f">
                                        <th data-field="${f.name_en}">${f.name}</th>
                                    </c:forEach>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <!-- End Example Card View -->
                </div>

                <div class="col-sm-12">
                    <!-- Example Toolbar -->
                    <div class="example-wrap">
                        <h4 class="example-title">工具条</h4>
                        <div class="example">
                            <div class="btn-group hidden-xs" id="exampleToolbar" role="group">
                                <button type="button" class="btn btn-outline btn-default">
                                    <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                                </button>
                                <button type="button" class="btn btn-outline btn-default">
                                    <i class="glyphicon glyphicon-heart" aria-hidden="true"></i>
                                </button>
                                <button type="button" class="btn btn-outline btn-default">
                                    <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                                </button>
                            </div>
                            <table data-toggle="table" data-url="/data1/${tableNameEN}" data-card-view="true" data-mobile-responsive="true">
                                <thead>
                                <tr>
                                    <c:forEach items="${field}" var="f">
                                        <th data-field="${f.name_en}">${f.name}</th>
                                    </c:forEach>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <!-- End Example Toolbar -->
                </div>

                <div class="col-sm-12">
                    <!-- Example Pagination -->
                    <div class="example-wrap">
                        <h4 class="example-title">分页：客户端</h4>
                        <div class="example">
                            <table id="exampleTablePagination" data-toggle="table" data-url="/data1/${tableNameEN}" data-query-params="queryParams" data-mobile-responsive="true" data-height="400" data-pagination="true" data-icon-size="outline" data-search="true">
                                <thead>
                                <tr>
                                    <th data-field="state" data-checkbox="true"></th>
                                    <c:forEach items="${field}" var="f">
                                        <th data-field="${f.name_en}">${f.name}</th>
                                    </c:forEach>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <!-- End Example Pagination -->
                </div>

                <div class="col-sm-12">
                    <!-- Example Events -->
                    <div class="example-wrap">
                        <h4 class="example-title">事件</h4>
                        <div class="example">
                            <div class="alert alert-success" id="examplebtTableEventsResult" role="alert">
                                事件结果
                            </div>
                            <div class="btn-group hidden-xs" id="exampleTableEventsToolbar" role="group">
                                <button type="button" class="btn btn-outline btn-default">
                                    <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                                </button>
                                <button type="button" class="btn btn-outline btn-default">
                                    <i class="glyphicon glyphicon-heart" aria-hidden="true"></i>
                                </button>
                                <button type="button" class="btn btn-outline btn-default">
                                    <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                                </button>
                            </div>
                            <table id="exampleTableEvents" data-height="400" data-mobile-responsive="true">
                                <thead>
                                <tr>
                                    <th data-field="state" data-checkbox="true"></th>
                                    <c:forEach items="${field}" var="f">
                                        <th data-field="${f.name_en}">${f.name}</th>
                                    </c:forEach>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                    <!-- End Example Events -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Panel Other -->
</div>
<script src="<%=basePath%>/UI/hplus/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=basePath%>/UI/hplus/js/bootstrap.min.js?v=3.3.6"></script>
<script src="<%=basePath%>/UI/hplus/js/content.min.js?v=1.0.0"></script>
<script src="<%=basePath%>/UI/hplus/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="<%=basePath%>/UI/hplus/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="<%=basePath%>/UI/hplus/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script src="<%=basePath%>/UI/hplus/js/demo/bootstrap-table-demo.min.js"></script>

</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/table_bootstrap.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:20:06 GMT -->
</html>