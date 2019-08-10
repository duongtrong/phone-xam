<%@ page import="com.example.entity.Phone" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: trongduong
  Date: 8/10/2019
  Time: 7:44 PM
  To change this template use File | Settings | File Templates.

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    ArrayList<Phone> listPhone = (ArrayList<Phone>) request.getAttribute("listPhone");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Article list</h1>
<h2>List Phone</h2>
<table class="table">
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Brand</th>
        <th>Price</th>
        <th>Description</th>
    </tr>
    </thead>
    <tbody>
    <%
        for(int i = 0; i < listPhone.size(); i++)
        {
    %>
    <tr>
        <td><%=listPhone.get(i).getId()%></td>
        <td><%=listPhone.get(i).getName()%></td>
        <td><%=listPhone.get(i).getBrand()%></td>
        <td><%=listPhone.get(i).getPrice()%></td>
        <td><%=listPhone.get(i).getDescription()%></td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
</body>
</html>
