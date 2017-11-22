<%--
  Created by IntelliJ IDEA.
  User: wz
  Date: 2017/10/23
  Time: 12:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${menu}" var="m">
    <li>
        <c:choose>
            <c:when test="${m.s_menu != null}">
                <a href="#"><i class="fa ${m.icon}"></i><span class="nav-label">${m.name}</span><span class="fa arrow"></span></a>
                <c:set var="menu" value="${m.s_menu}" scope="request" /><!-- 注意此处，子列表覆盖treeList，在request作用域 -->
                <ul class="nav nav-${number==0 ? 'second' : 'third'}-level">
                    <c:if test="${m.url != null}">
                        <li><a class="J_menuItem" href="${m.url_type}/${m.url_table}${m.url_type=='find' ? '/all' : ''}"><i class="fa ${m.icon}"></i><span class="nav-label">${m.name}</span></a></li>
                    </c:if>
                    <c:set var="number" value="${number+1}" scope="request" />
                    <c:import url="menu.jsp" /><!-- 这就是递归了 -->
                </ul>
            </c:when>
            <c:otherwise>

                <li><a class="J_menuItem" href="${m.url_type}/${m.url_table}${m.url_type=='find' ? '/all' : ''}"><i class="fa ${m.icon}"></i><span class="nav-label">${m.name}</span></a></li>
            </c:otherwise>
        </c:choose>
    </li>
</c:forEach>
<%--<c:set var="level" value="${level - 1}" scope="request" /><!-- 退出时，level-1 -->--%>
