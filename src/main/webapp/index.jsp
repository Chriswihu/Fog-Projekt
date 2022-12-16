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
            <p>Du er logget ind med rolen: "${sessionScope.user.role}".</p>

            <p>Bestil ny Carport
                <br>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/ordre.jsp">
                    Byg-selv
                </a>
            </p>
            <p>Gå til din Side
                <br>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/customer.jsp">
                   Min side
                </a>
            </p>
        </c:if>

        <c:if test="${sessionScope.user == null}">
            <p>You are not logged in yet. You can do it here: <a
                    href="login.jsp">Login</a></p>

<%--            <p>If you want to create a new account, you can do so here: <a href="create.jsp">Create</a></p>--%>
        </c:if>
    </jsp:body>

</t:FogWEB>