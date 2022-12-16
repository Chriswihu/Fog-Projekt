<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@page errorPage="../error.jsp" isErrorPage="false" %>--%>

<t:FogWEB>
    <jsp:attribute name="header">
         Confirmation
    </jsp:attribute>

    <jsp:attribute name="footer">
        Confirmation page
    </jsp:attribute>

    <jsp:body>

        <h2>Hej ${sessionScope.user.username}, tak for bestillingen.</h2>

        <form action="confirm" method="post">
            <c:forEach var="item" items="${sessionScope.carportList}">
                Længde: ${item.length}<br/>
                Brede: ${item.width}<br/>
                Skur Længde: ${item.shedlenght}<br/>
                Skur Brede: ${item.shedWidth}<br/>
            </c:forEach>
            <br>
            <br>
            <br>
<%--            <c:forEach var="item" items="${sessionScope.materialList}">--%>
<%--                Order ID: ${item.idorder} Navn: ${item.name} Længde: ${item.length} Antal: ${item.quantity} Enhed: ${item.unit}--%>
<%--                <br/>--%>
<%--            </c:forEach>--%>
        </form>

    </jsp:body>

</t:FogWEB>