<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title>Catalog Example</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <header>
            <div>
                <h1>Session</h1>
            </div>
        </header>
        <ul>
            <c:forEach items="${list_url}" var="url">
                <li>"${url}"</li>
            </c:forEach>
        </ul>
        <div>
            <h4>
                <a href="/catalog"> the_link </a>
            </h4>
            <h4>
                <form method="post">
                    <input type="submit" value="Clean history">
                </form>
            </h4>
        </div>
    </body>
</html>
