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
<head>
    <title>Title</title>
    <link rel="shortcut icon" href="<%=basePath%>/UI/hplus/html/favicon.ico">
    <link href="<%=basePath%>/UI/hplus/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="<%=basePath%>/UI/hplus/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="<%=basePath%>/UI/hplus/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="<%=basePath%>/UI/hplus/css/animate.min.css" rel="stylesheet">
    <link href="<%=basePath%>/UI/hplus/css/style.min862f.css?v=4.1.0" rel="stylesheet">
</head>
${hwz}
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
               <%-- <div class="ibox-title">
                    <h5>所有表单元素
                        <small>包括自定义样式的复选和单选按钮</small>
                    </h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>--%>
                <div class="ibox-content">
                    <form role="get" action="${pageContext.request.contextPath}/create/${tableNameEN}/create" method="post" id="list" class="form-horizontal">
                        <div class="form-group">
                            <div class="col-sm-12">
                                <c:forEach items="${fieldList}" var="it">
                                    <div class="col-sm-${it.columns}">
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">${it.name}</label>
                                            <div class="col-sm-9 input-group">
                                                <c:choose>
                                                    <c:when test="${it.is_disable}">
                                                        <input name="${it.name_en}" type="${it.input_type}" placeholder="" disabled="" class="form-control">
                                                    </c:when>
                                                    <c:when test="${it.select_group!=null && it.select_group!=''}">
                                                        <c:forEach items="${it.select_group}" var="sg">
                                                                <label class="checkbox-inline i-checks">
                                                                    <input  name="${it.name_en}" type="radio" checked="" value="${sg.value}"> <i>${sg.name}</i>
                                                                </label>
                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <input name="${it.name_en}" type="${it.input_type}" placeholder="${it.hint}" class="form-control">
                                                    </c:otherwise>
                                                </c:choose>
                                                <c:if test="${it.remark!=null}">
                                                    <span class="help-block m-b-none">${it.remark}</span>
                                                </c:if>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <button class="btn btn-primary" type="submit">保存内容</button>
                                <button class="btn btn-white" type="submit">取消</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<%=basePath%>/UI/hplus/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=basePath%>/UI/hplus/js/bootstrap.min.js?v=3.3.6"></script>
<script src="<%=basePath%>/UI/hplus/js/content.min.js?v=1.0.0"></script>
<script src="<%=basePath%>/UI/hplus/js/plugins/iCheck/icheck.min.js"></script>
<script>
    $(document).ready(function () {
        $(".i-checks").iCheck({checkboxClass: "icheckbox_square-green", radioClass: "iradio_square-green",})
    });
</script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/form_basic.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:15 GMT -->
</html>
