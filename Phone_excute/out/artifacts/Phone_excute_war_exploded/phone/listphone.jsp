<%--
  Created by IntelliJ IDEA.
  User: trongduong
  Date: 8/10/2019
  Time: 7:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Article list</h1>
    <ul>
        <c:forEach var="article" items="${articles}">
            <li><c:out value="${article.title}"/> - <c:out value="${article.category.get().name}"/> - <c:out
                    value="${article.category.get().id}"/></li>
        </c:forEach>
    </ul>
</body>
</html>
