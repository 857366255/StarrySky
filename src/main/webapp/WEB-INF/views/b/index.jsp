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
    <%--在移动设备浏览器上，通过为视口（viewport）设置 meta 属性为 user-scalable=no 可以禁用其缩放（zooming）功能。这样禁用缩放功能后，用户只能滚动屏幕，就能让你的网站看上去更像原生应用的感觉。注意，这种方式我们并不推荐所有网站使用，还是要看你自己的情况而定！--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">--%>
        <link href="<%=basePath%>/UI/bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet">
        <link href="<%=basePath%>/UI/bootstrap/3.3.7/css/bootstrap-theme.css" rel="stylesheet">

    <title>Title</title>
</head>
<body>

</body>
</html>
