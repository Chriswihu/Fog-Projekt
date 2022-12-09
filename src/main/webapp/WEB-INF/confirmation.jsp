<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:pagetemplate>
    <jsp:attribute name="header">
         Confirmation
    </jsp:attribute>

    <jsp:attribute name="footer">
        Confirmation page
    </jsp:attribute>

    <jsp:body>

        <h2>Hej ${sessionScope.user.username}, tak for bestillingen.</h2>

        <c:forEach var="item" items="${sessionScope.cart.carportList}">
            Længde: ${item.length}<br/>
            Brede: ${item.width}<br/>
            Skur Længde: ${item.shedLenght}<br/>
            Skur Brede: ${item.shedWidth}<br/>
        </c:forEach>


    </jsp:body>

</t:pagetemplate>