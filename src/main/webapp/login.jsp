<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if(request.getMethod().equalsIgnoreCase("post")){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if(username.equalsIgnoreCase("admin") && password.equals("password")){
            response.sendRedirect("profile.jsp");
        }
    }
%>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Login Page"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
        <div class="container">
            <h1>Please Log In</h1>
            <form method="post" action="login.jsp">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input id="username" name="username" class="form-control" type="text">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" class="form-control" name="password">
                </div>
                <input type="submit" class="btn btn-primary btn-block" value="Log In">
            </form>
        </div>
</body>
</html>
