<%--
  Created by IntelliJ IDEA.
  User: savanna
  Date: 6/30/21
  Time: 3:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin") && password.equals("password")) {
            session.setAttribute("Name", username);
            response.sendRedirect("/profile.jsp");
        }
    }
%>
<html>
<head>
    <jsp:include page="partials/head.jsp" >
        <jsp:param name="title" value="Login Page" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container d-flex h-100">
        <div class="card col-3">
            <div class="card-body">
                <h3 class="card-title">Please Log In</h3>
                <form method="POST" action="login.jsp">
                    <label for="username">Username</label>
                    <input id="username" name="username" type="text" autocomplete="false">
                    <br>
                    <label for="password">Password</label>
                    <input id="password" name="password" type="password" autocomplete="false">
                    <br>
                    <input type="submit" class="btn-secondary">
                </form>
            </div>
        </div>
        <div class="card col-9">
            <div class="card-body">
                <h1>Welcome to the security hub!</h1>
                There is no strife, no prejudice, no national conflict in outer space as yet. Its hazards are hostile to us all. Its conquest deserves the best of all mankind, and its opportunity for peaceful cooperation many never come again. But why, some say, the moon? Why choose this as our goal? And they may well ask why climb the highest mountain? Why, 35 years ago, fly the Atlantic? Why does Rice play Texas?
                <br>
                We choose to go to the moon. We choose to go to the moon in this decade and do the other things, not because they are easy, but because they are hard, because that goal will serve to organize and measure the best of our energies and skills, because that challenge is one that we are willing to accept, one we are unwilling to postpone, and one which we intend to win, and the others, too.
                <br>
                It is for these reasons that I regard the decision last year to shift our efforts in space from low to high gear as among the most important decisions that will be made during my incumbency in the office of the Presidency.
                <p>
                    In the last 24 hours we have seen facilities now being created for the greatest and most complex exploration in man's history. We have felt the ground shake and the air shattered by the testing of a Saturn C-1 booster rocket, many times as powerful as the Atlas which launched John Glenn, generating power equivalent to 10,000 automobiles with their accelerators on the floor. We have seen the site where the F-1 rocket engines, each one as powerful as all eight engines of the Saturn combined, will be clustered together to make the advanced Saturn missile, assembled in a new building to be built at Cape Canaveral as tall as a 48 story structure, as wide as a city block, and as long as two lengths of this field.
                </p>
            </div>
        </div>
    </div>
    <jsp:include page="partials/footer.jsp" />
</body>
</html>
