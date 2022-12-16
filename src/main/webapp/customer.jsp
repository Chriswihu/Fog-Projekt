<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:FogWEB>
    <jsp:attribute name="header">
         Welcome to the Customer page
    </jsp:attribute>

    <jsp:attribute name="footer">
        Welcome to the Customer page
    </jsp:attribute>

    <jsp:body>

        <p>Din personlige side</p>

        <c:if test="${sessionScope.user != null}">
            <p>Hej ${sessionScope.user.username}, du er logget ind som "${sessionScope.user.role}".</p>
        </c:if>

        <div class='parent flex-parent'>
            <div class='child flex-child style="width: 30%'>
                <p>Vælg Carport Mål
                    <br>
                    <a class="btn btn-primary" name="Vælg Carport" href="${pageContext.request.contextPath}/ordre.jsp">
                        Byg-selv
                    </a>
                </p>
            </div>
            <div class='child flex-child style="width: 30%'>
                <p>Se din gemte Carport
                    <br>
                    <a class="btn btn-primary" name="Ret din Carport" href="${pageContext.request.contextPath}/changeorder.jsp">
                        Ret
                    </a>
                </p>
            </div>
            <div class='child flex-child style="width: 30%'>
                <p>Se din Bestilling
                    <br>
                    <a class="btn btn-primary" name="Se din historik" href="${pageContext.request.contextPath}/history.jsp">
                        Historik
                    </a>
                </p>
            </div>
        </div>

    </jsp:body>

</t:FogWEB>