<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Create Customer</title>
    </head>
    <body>
        <form action="/customer/store" method="POST">
            Name: <input type="text" name="name"> <br>
            Email: <input type="email" name="email"> <br>

            <br>

            <input type="submit" value="Create" />
        </form>
    </body>
</html>