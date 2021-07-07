<%--
  Created by IntelliJ IDEA.
  User: savanna
  Date: 7/6/21
  Time: 10:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Viewing Result</title>
</head>
<body>
<c:if test="${correct == true}">
    <h2>You were correct!!</h2>
    <a href="/guess">Play again?</a>
</c:if>
<c:if test="${incorrect == true}">
    <h2>You were wrong!!!</h2>
    <a href="/guess">Care to try again?</a>
</c:if>
</body>
</html>