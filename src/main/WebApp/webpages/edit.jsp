<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Create Customer</title>
    </head>
    <body>
        <h1>Edit customer details</h1>

        <form action="/customer/store" method="POST">
            Name: <input type="hidden" name="id" value="${id}">
            Name: <input type="text" name="name" value="${name}"> <br>
            Email: <input type="email" name="email" value="${email}"> <br>

            <br>

            <input type="submit" value="Edit" />
        </form>
    </body>
</html>