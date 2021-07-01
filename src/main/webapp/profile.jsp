<%--
  Created by IntelliJ IDEA.
  User: savanna
  Date: 6/30/21
  Time: 3:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp" >
        <jsp:param name="title" value="Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container d-flex h-100">
        <div class="card col-11">
            <div class="card-body">
                <h1>Hello <%=session.getAttribute("Name")%></h1><br>
                <h2>Admin Tools:</h2><br>
                <div class="row justify-content-around">
                    <div class="card col-2 p-1">
                        <div class="card-body">
                            <h5><i class="far fa-envelope"></i> View Messages</h5>
                        </div>
                    </div>
                    <div class="card col-2 p-1">
                        <div class="card-body">
                            <h5><i class="fad fa-user-friends"></i> View Members</h5>
                        </div>
                    </div>
                    <div class="card col-2 p-1">
                        <div class="card-body">
                            <h5><i class="fas fa-user-slash"></i> Banned Members</h5>
                        </div>
                    </div>
                    <div class="card col-2 p-1">
                        <div class="card-body">
                            <h5><i class="fal fa-chalkboard-teacher"></i> Message Board</h5>
                        </div>
                    </div>
                    <div class="card col-2 p-1">
                        <div class="card-body">
                            <h5><i class="far fa-file-export"></i> Approve Posts</h5>
                        </div>
                    </div>
                </div><br>
                <h2>Welcome to your admin Hub!</h2><br>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
            </div>
        </div>
    </div>
    <jsp:include page="partials/footer.jsp" />
</body>
</html>