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
                <div class="ibox-title">
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
                </div>
                <div class="ibox-content">
                    <form role="get" action="create" method="post" id="list" class="form-horizontal">
                        <div class="form-group">
                            <div class="col-sm-12">
                                <c:forEach items="${input}" var="it">
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

    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>所有表单元素
                        <small>包括自定义样式的复选和单选按钮</small>
                    </h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="dropdown-toggle" data-toggle="dropdown" href="form_basic.html#">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="form_basic.html#">选项1</a>
                            </li>
                            <li><a href="form_basic.html#">选项2</a>
                            </li>
                        </ul>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <form method="get" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">复选框&amp;单选框
                                <br/>
                                <small class="text-navy">自定义样式</small>
                            </label>
                            <div class="col-sm-10">
                                <div class="checkbox i-checks">
                                    <label>
                                        <input type="checkbox" value=""> <i></i> 选项1</label>
                                </div>
                                <div class="checkbox i-checks">
                                    <label>
                                        <input type="checkbox" value="" checked=""> <i></i> 选项2（选中）</label>
                                </div>
                                <div class="checkbox i-checks">
                                    <label>
                                        <input type="checkbox" value="" disabled="" checked=""> <i></i>
                                        选项3（选中并禁用）</label>
                                </div>
                                <div class="checkbox i-checks">
                                    <label>
                                        <input type="checkbox" value="" disabled=""> <i></i> 选项4（禁用）</label>
                                </div>
                                <div class="radio i-checks">
                                    <label>
                                        <input type="radio" value="option1" name="a"> <i></i> 选项1</label>
                                </div>
                                <div class="radio i-checks">
                                    <label>
                                        <input type="radio" checked="" value="option2" name="a"> <i></i> 选项2（选中）</label>
                                </div>
                                <div class="radio i-checks">
                                    <label>
                                        <input type="radio" disabled="" checked="" value="option2"> <i></i>
                                        选项3（选中并禁用）</label>
                                </div>
                                <div class="radio i-checks">
                                    <label>
                                        <input type="radio" disabled="" name="a"> <i></i> 选项4（禁用）</label>
                                </div>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">内联复选框</label>

                            <div class="col-sm-10">
                                <label class="checkbox-inline i-checks">
                                    <input type="checkbox" value="option1">a</label>
                                <label class="checkbox-inline i-checks">
                                    <input type="checkbox" value="option2">b</label>
                                <label class="checkbox-inline i-checks">
                                    <input type="checkbox" value="option3">c</label>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Select</label>

                            <div class="col-sm-10">
                                <select class="form-control m-b" name="account">
                                    <option>选项 1</option>
                                    <option>选项 2</option>
                                    <option>选项 3</option>
                                    <option>选项 4</option>
                                </select>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group has-success">
                            <label class="col-sm-2 control-label">验证通过</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group has-warning">
                            <label class="col-sm-2 control-label">未填写</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group has-error">
                            <label class="col-sm-2 control-label">验证未通过</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">自定义尺寸</label>

                            <div class="col-sm-10">
                                <input type="text" placeholder=".input-lg" class="form-control input-lg m-b">
                                <input type="text" placeholder="Default input" class="form-control m-b">
                                <input type="text" placeholder=".input-sm" class="form-control input-sm">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">列尺寸</label>

                            <div class="col-sm-10">
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="text" placeholder=".col-md-2" class="form-control">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" placeholder=".col-md-3" class="form-control">
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" placeholder=".col-md-4" class="form-control">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">文本框组</label>

                            <div class="col-sm-10">
                                <div class="input-group m-b"><span class="input-group-addon">@</span>
                                    <input type="text" placeholder="用户名" class="form-control">
                                </div>
                                <div class="input-group m-b">
                                    <input type="text" class="form-control"> <span class="input-group-addon">.00</span>
                                </div>
                                <div class="input-group m-b"><span class="input-group-addon">&yen;</span>
                                    <input type="text" class="form-control"> <span class="input-group-addon">.00</span>
                                </div>
                                <div class="input-group m-b"><span class="input-group-addon"> <input
                                        type="checkbox"> </span>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="input-group"><span class="input-group-addon"> <input type="radio"> </span>
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">按钮插件</label>

                            <div class="col-sm-10">
                                <div class="input-group m-b"><span class="input-group-btn">
                                            <button type="button" class="btn btn-primary">搜</button> </span>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="input-group">
                                    <input type="text" class="form-control"> <span class="input-group-btn"> <button
                                        type="button" class="btn btn-primary">搜索
                                        </button> </span>
                                </div>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">带下拉框</label>

                            <div class="col-sm-10">
                                <div class="input-group m-b">
                                    <div class="input-group-btn">
                                        <button data-toggle="dropdown" class="btn btn-white dropdown-toggle"
                                                type="button">操作 <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="form_basic.html#">选项1</a>
                                            </li>
                                            <li><a href="form_basic.html#">选项2</a>
                                            </li>
                                            <li><a href="form_basic.html#">选项3</a>
                                            </li>
                                            <li class="divider"></li>
                                            <li><a href="form_basic.html#">选项4</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="input-group">
                                    <input type="text" class="form-control">

                                    <div class="input-group-btn">
                                        <button data-toggle="dropdown" class="btn btn-white dropdown-toggle"
                                                type="button">操作 <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu pull-right">
                                            <li><a href="form_basic.html#">选项1</a>
                                            </li>
                                            <li><a href="form_basic.html#">选项2</a>
                                            </li>
                                            <li><a href="form_basic.html#">选项3</a>
                                            </li>
                                            <li class="divider"></li>
                                            <li><a href="form_basic.html#">选项4</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">分段</label>

                            <div class="col-sm-10">
                                <div class="input-group m-b">
                                    <div class="input-group-btn">
                                        <button tabindex="-1" class="btn btn-white" type="button">操作</button>
                                        <button data-toggle="dropdown" class="btn btn-white dropdown-toggle"
                                                type="button"><span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="form_basic.html#">选项1</a>
                                            </li>
                                            <li><a href="form_basic.html#">选项2</a>
                                            </li>
                                            <li><a href="form_basic.html#">选项3</a>
                                            </li>
                                            <li class="divider"></li>
                                            <li><a href="form_basic.html#">选项4</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="input-group">
                                    <input type="text" class="form-control">

                                    <div class="input-group-btn">
                                        <button tabindex="-1" class="btn btn-white" type="button">操作</button>
                                        <button data-toggle="dropdown" class="btn btn-white dropdown-toggle"
                                                type="button"><span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu pull-right">
                                            分段
                                        </ul>
                                    </div>
                                </div>
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
