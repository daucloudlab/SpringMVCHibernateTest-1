<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title></title>
</head>
<body>

<center>

    <div style="color: teal; font-size: 30px">
        Registration Form</div>



    <c:url var="userRegistration" value="saveUser.html" />
    <form:form id="registerForm" modelAttribute="employee" method="post"
               action="register">
        <table width="400px" height="150px">
            <tr>
                <td><form:label path="firstName">First Name</form:label>
                </td>
                <td><form:input path="firstName" />
                </td>
            </tr>
            <tr>
                <td><form:label path="lastName">Last Name</form:label>
                </td>
                <td><form:input path="lastName" />
                </td>
            </tr>
            <tr>
                <td><form:label path="email">Email</form:label>
                </td>
                <td><form:input path="email" />
                </td>
            </tr>
            <tr>
                <td><form:label path="phone">Phone</form:label>
                </td>
                <td><form:input path="phone" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Register" /></td>
            </tr>
        </table>
    </form:form>


    <a href="list">Click Here to see User List</a>

</center

</body>
</html>
