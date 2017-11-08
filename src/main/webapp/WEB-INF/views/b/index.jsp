<%--
  Created by IntelliJ IDEA.
  User: wz
  Date: 2017/11/8
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String basePath = request.getContextPath();
%>
<html lang="zh-CN">
<head>
    <%--为了确保适当的绘制和触屏缩放，需要在 <head> 之中添加 viewport 元数据标签。--%>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%--<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">在移动设备浏览器上，通过为视口（viewport）设置 meta 属性为 user-scalable=no 可以禁用其缩放（zooming）功能。这样禁用缩放功能后，用户只能滚动屏幕，就能让你的网站看上去更像原生应用的感觉。注意，这种方式我们并不推荐所有网站使用，还是要看你自己的情况而定！--%>
        <link href="<%=basePath%>/UI/bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet">
        <link href="<%=basePath%>/UI/bootstrap/3.3.7/css/bootstrap-theme.css" rel="stylesheet">

    <title>Title</title>
</head>
<body>
<%--<div class="container-fluid"> 类用于 100% 宽度，占据全部视口（viewport）的容器。--%>

    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <ul class="nav nav-pills">
                    <li class="active">
                        <a href="#">首页</a>
                    </li>
                    <li>
                        <a href="#">资料</a>
                    </li>
                    <li class="disabled">
                        <a href="#">信息</a>
                    </li>
                    <li class="dropdown pull-right">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">下拉<strong class="caret"></strong></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#">操作</a>
                            </li>
                            <li>
                                <a href="#">设置栏目</a>
                            </li>
                            <li>
                                <a href="#">更多设置</a>
                            </li>
                            <li class="divider">
                            </li>
                            <li>
                                <a href="#">分割线</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div class="row-fluid">
            <div class="span6">
                <ul class="nav nav-list">
                    <li class="nav-header">
                        列表标题
                    </li>
                    <li class="active">
                        <a href="#">首页</a>
                    </li>
                    <li>
                        <a href="#">库</a>
                    </li>
                    <li>
                        <a href="#">应用</a>
                    </li>
                    <li class="nav-header">
                        功能列表
                    </li>
                    <li>
                        <a href="#">资料</a>
                    </li>
                    <li>
                        <a href="#">设置</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="#">帮助</a>
                    </li>
                </ul>
                <ul class="breadcrumb">
                    <li>
                        <a href="#">主页</a> <span class="divider">/</span>
                    </li>
                    <li>
                        <a href="#">类目</a> <span class="divider">/</span>
                    </li>
                    <li class="active">
                        主题
                    </li>
                </ul>
            </div>
            <div class="span6">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#">首页</a>
                    </li>
                    <li>
                        <a href="#">资料</a>
                    </li>
                    <li class="disabled">
                        <a href="#">信息</a>
                    </li>
                    <li class="dropdown pull-right">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">下拉<strong class="caret"></strong></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#">操作</a>
                            </li>
                            <li>
                                <a href="#">设置栏目</a>
                            </li>
                            <li>
                                <a href="#">更多设置</a>
                            </li>
                            <li class="divider">
                            </li>
                            <li>
                                <a href="#">分割线</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
<script src="<%=basePath%>/UI/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
