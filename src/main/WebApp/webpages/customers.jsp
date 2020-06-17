<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Customers APP</title>
    </head>
    <body>
        List of all customers will be here
        <a href="/customer/create">Create</a>
        <c:if test="${!empty customers}" >
            <table>
                <thead>
                    <tr>
                        <th>ID<th>
                        <th>Name<th>
                        <th>Email<th>
                        <th>Edit<th>
                        <th>Show<th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${customers}" var="customer" >
                        <tr>
                            <td><c:out value="${customer.id}" /></td>
                            <td><c:out value="${customer.name}" /></td>
                            <td><c:out value="${customer.email}" /></td>
                            <td><a href="/customer/edit/<c:out value="${customer.id}" />">Edit</a></td>
                            <td><a href="/customer/show/<c:out value="${customer.id}" />">Show</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
    </body>
</html>