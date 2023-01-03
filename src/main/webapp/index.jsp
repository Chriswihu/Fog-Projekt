<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@page errorPage="error.jsp" isErrorPage="false" %>--%>

<t:FogWEB>
    <jsp:attribute name="header">
         Velkommen til forsiden.
    </jsp:attribute>

    <jsp:attribute name="footer">
        Forsiden
    </jsp:attribute>

    <jsp:body>

        <p>Velkommen til Fog Carport Bygger</p>

        <c:if test="${sessionScope.user != null}">
            <p>Hej ${sessionScope.user.username} og velkommen til! Du er logget ind med rollen:
                "${sessionScope.user.role}".</p>

            <p>Bestil ny Carport
                <br>
                <br>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/ordre.jsp">
                    Byg-selv
                </a>
            </p>
            <p>Gå til din Side
                <br>
                <br>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/customer.jsp">
                    Min side
                </a>
            </p>
        </c:if>

        <c:if test="${sessionScope.user == null}">
            <p>Du er ikke logget ind endnu, eller du har ikke en Profil. Du kan gøre begge på denne side:
                <br>
                <br>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/login.jsp">
                    Login/opret Profil
                </a>
            </p>
        </c:if>
    </jsp:body>

</t:FogWEB>