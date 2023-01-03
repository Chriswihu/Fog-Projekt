<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:FogWEB>
    <jsp:attribute name="header">
         Velkommen til din historik
    </jsp:attribute>

    <jsp:attribute name="footer">
        Historik
    </jsp:attribute>

    <jsp:body>

        <p>Ordre Historik</p>

        <c:if test="${sessionScope.user != null}">
            <p>Hej ${sessionScope.user.username} og velkommen til! Du er logget ind med rollen:
                "${sessionScope.user.role}".</p>
        </c:if>


    </jsp:body>

</t:FogWEB>