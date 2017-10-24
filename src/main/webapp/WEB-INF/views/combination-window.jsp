<%--
  Created by IntelliJ IDEA.
  User: wz
  Date: 2017/10/23
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String basePath = request.getContextPath();
%>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>H+ 后台主题UI框架 - 客户管理</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="<%=basePath%>/UI/hplus/html/favicon.ico">
    <link href="<%=basePath%>/UI/hplus/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="<%=basePath%>/UI/hplus/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <link href="<%=basePath%>/UI/hplus/css/animate.min.css" rel="stylesheet">
    <link href="<%=basePath%>/UI/hplus/css/style.min862f.css?v=4.1.0" rel="stylesheet">

    <link href="<%=basePath%>/UI/hplus/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="<%=basePath%>/UI/hplus/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">


</head>

<body class="gray-bg">
<div class="wrapper wrapper-content  animated fadeInRight">
    <div class="row">
        <div class="col-sm-4">
            <div class="ibox ">
                <div class="ibox-content">
                    <div class="tab-content">
                        <div id="contact-1" class="tab-pane active">
                            <div class="form-group">
                                <div class="row m-b-lg">
                                    <c:forEach items="${fieldList}" var="it">
                                        <div class="col-sm-12">
                                            <dl class="dl-horizontal">
                                                <dt>${it.name}：</dt>
                                                <dd>${data[it.name_en]}</dd>
                                            </dl>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-8">
            <div class="ibox">
                <div class="ibox-content">
                    <%--<div class="clients-list">--%>
                    <div>
                        <ul class="nav nav-tabs">
                            <c:forEach items="${multipleFkList}" var="mfkl" varStatus="vs">
                                <c:choose>
                                    <c:when test="${vs.index==0}">
                                        <li class="active">
                                    </c:when>
                                    <c:otherwise>
                                        <li class="">
                                    </c:otherwise>
                                </c:choose>
                                <%--<c:when test="${mfkl.index==0}">--%>

                                <%--</c:when>--%>
                                <%--<c:otherwise>--%>
                                    <%--<li class="">--%>
                                <%--</c:otherwise>--%>
                                <a data-toggle="tab" href="#tab-${mfkl.table_name_en}"><i class="fa fa-user"></i> ${mfkl.name}</a></li>
                            </c:forEach>
                            
                            <%--<li class="active"><a data-toggle="tab" href="#tab-1"><i class="fa fa-user"></i> 联系人</a></li>--%>
                            <%--<li class=""><a data-toggle="tab" href="#tab-2"><i class="fa fa-briefcase"></i> 公司</a></li>--%>
                        </ul>
                        <div class="tab-content">
                            <c:forEach items="${multipleFkList}" var="mfkl" varStatus="vs">
                            <div id="tab-${mfkl.table_name_en}" class="tab-pane active">${mfkl.table_name_en}
                                <div class="full-height-scroll">
                                    <div class="table-responsive">${mfkl.fieldList}
                                        <table data-toggle="table" data-url="data1/${mfkl.table_name_en}" data-height="500" data-mobile-responsive="true">
                                            <thead>
                                            <tr>
                                                <c:forEach items="${fieldList}" var="f">
                                                    <th data-field="${f.name_en}">${f.name}</th>
                                                </c:forEach>
                                            </tr>
                                            </thead>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                            <%--<div id="tab-2" class="tab-pane active">
                                <div class="full-height-scroll">
                                    <div class="table-responsive">
                                        <table data-toggle="table" data-url="data1/${tableNameEN}" data-height="250" data-mobile-responsive="true">
                                            <thead>
                                            <tr>
                                                <c:forEach items="${fieldList}" var="f">
                                                    <th data-field="${f.name_en}">${f.name}</th>
                                                </c:forEach>
                                            </tr>
                                            </thead>
                                        </table>
                                    </div>
                                </div>
                            </div>--%>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<%=basePath%>/UI/hplus/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=basePath%>/UI/hplus/js/bootstrap.min.js?v=3.3.6"></script>
<script src="<%=basePath%>/UI/hplus/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="<%=basePath%>/UI/hplus/js/content.min.js?v=1.0.0"></script>
<script src="<%=basePath%>/UI/hplus/js/content.min.js?v=1.0.0"></script>
<script src="<%=basePath%>/UI/hplus/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="<%=basePath%>/UI/hplus/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="<%=basePath%>/UI/hplus/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script>
    $(function(){$(".full-height-scroll").slimScroll({height:"100%"})});
</script>
</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/clients.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:44 GMT -->
</html>

