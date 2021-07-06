<%--
  Created by IntelliJ IDEA.
  User: savanna
  Date: 7/2/21
  Time: 1:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Pick your color!" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h1>Please Pick a Color!</h1>
        <form action="/pickcolor" method="POST">
            <label for="color">Please input a color:</label>
            <input name="colorPicker" type="text" id="color"><br>
            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
