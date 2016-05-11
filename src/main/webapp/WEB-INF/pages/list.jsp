<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title></title>
</head>
<body>

<center>

    <div style="color: teal; font-size: 30px">User Details</div>

    <c:if test="${!empty employeeList}">
        <table border="1" bgcolor="black" width="600px">
            <tr
                    style="background-color: teal; color: white; text-align: center;"
                    height="40px">

                <td>First Name</td>
                <td>Last Name</td>
                <td>Email</td>
                <td>Phone</td>
                <td>Edit</td>
                <td>Delete</td>
            </tr>
            <c:forEach items="${employeeList}" var="user">
                <tr
                        style="background-color: white; color: black; text-align: center;"
                        height="30px">

                    <td><c:out value="${user.firstName}" />
                    </td>
                    <td><c:out value="${user.lastName}" />
                    </td>
                    <td><c:out value="${user.email}" />
                    </td>
                    <td><c:out value="${user.phone}" />
                    </td>
                    <td><a href="edit?id=${user.id}">Edit</a></td>
                    <td><a href="delete?id=${user.id}">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>


    <a href="form">Click Here to add new User</a>
</center>

</body>
</html>
