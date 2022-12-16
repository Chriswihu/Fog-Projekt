<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:FogWEB>
    <jsp:attribute name="header">
         Welcome to the frontpage
    </jsp:attribute>

    <jsp:attribute name="footer">
        Welcome to the frontpage
    </jsp:attribute>

    <jsp:body>

        <p>Startcode for 2nd semester </p>

        <c:if test="${sessionScope.user != null}">
            <p>Hej ${sessionScope.user.username}, du er logget ind med rolen: "${sessionScope.user.role}".</p>
        </c:if>


    </jsp:body>

</t:FogWEB>