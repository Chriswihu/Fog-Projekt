<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:FogWEB>
    <jsp:attribute name="header">
         Velkommen til Admin siden.
    </jsp:attribute>

    <jsp:attribute name="footer">
        Admin siden
    </jsp:attribute>

    <jsp:body>

        <p>Kun for administrator </p>

        <c:if test="${sessionScope.user != null}">
            <p>Du er logget ind som "${sessionScope.user.role}".</p>
        </c:if>



    </jsp:body>

</t:FogWEB>