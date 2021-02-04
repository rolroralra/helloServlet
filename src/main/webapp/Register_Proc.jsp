<%--
  Created by IntelliJ IDEA.
  User: shinyoungkim
  Date: 2021/02/04
  Time: 9:52 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%= name %>, ID = <%= id %>, PASSWORD = <%= pwd %>
</body>
</html>
