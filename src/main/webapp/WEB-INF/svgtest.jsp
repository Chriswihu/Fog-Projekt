<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:FogWEB>
    <jsp:attribute name="header">
         Welcome to the frontpage
    </jsp:attribute>

    <jsp:attribute name="footer">
        Welcome to the frontpage
    </jsp:attribute>

    <jsp:body>

        <p>SVG Demo </p>

        <form action="svg" method="post">
            <label>Vælg en Carport Længde:
                <select name="CPlength">
                    <c:forEach var="item" items="${sessionScope.lengthList.length}">
                        <option value="${item}">${item} cm</option>
                    </c:forEach>
                </select>
            </label>
            <br/>
            <br/>
            <label>Vælg en Carport Brede:
                <select name="CPwidth">
                    <c:forEach var="item" items="${sessionScope.lengthList.width}">
                        <option value="${item}">${item} cm</option>
                    </c:forEach>
                </select>
            </label>
            <br/>
            <button class="btn btn-primary" name="update">Tegn
                <c:if test="${sessionScope.cart == null}">
                </c:if>
            </button>
        </form>

        ${requestScope.svg}

    </jsp:body>

</t:FogWEB>