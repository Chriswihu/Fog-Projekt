<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:FogWEB>
    <jsp:attribute name="header">
             Create a new user account
    </jsp:attribute>

    <jsp:attribute name="footer">
            CreateUser
    </jsp:attribute>

    <jsp:body>
        <h3> Ny bruger? Opret dig her</h3>
        <form action="createuser" method="post">
            <label for="newusername"> Nyt brugernavn:</label>
            <input type="text" id="newusername" name="newusername"/>
            <br/>
            <label for="newpassword"> Nyt password:</label>
            <input type="password" id="newpassword" name="newpassword">
            <br/>
            <input type="submit" value="Opret bruger!"/>
        </form>
        <br/>
    </jsp:body>
</t:FogWEB>