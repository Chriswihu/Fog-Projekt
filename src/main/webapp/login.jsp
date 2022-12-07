<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:FogWEB>
    <jsp:attribute name="header">
             Login
    </jsp:attribute>

    <jsp:attribute name="footer">
            Login
    </jsp:attribute>

    <jsp:body>

        <h3>You can log in here</h3>

        <form action="login" method="post">
            <label for="username">Username: </label>
            <input type="text" id="username" name="username"/>
            <label for="password">Password: </label>
            <input type="password" id="password" name="password"/>
            <input type="submit"  value="Log in"/>
        </form>
<br/>
        <h3> Ny bruger? Opret dig her</h3>

        <form action="createuser" method="post">
            <label for="newusername"> Nyt brugernavn:</label>
            <input type="text" id="newusername" name="newusername"/>
            <label for="newpassword"> Nyt password:</label>
            <input type="password" id="newpassword" name="newpassword">
            <input type="submit" value="Opret bruger!"/>
        </form>



    </jsp:body>
</t:FogWEB>