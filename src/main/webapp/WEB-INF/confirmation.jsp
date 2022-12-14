<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:FogWEB>
    <jsp:attribute name="header">
         Confirmation
    </jsp:attribute>

    <jsp:attribute name="footer">
        Confirmation page
    </jsp:attribute>

    <jsp:body>

        <h2>Hej ${sessionScope.user.username}, tak for bestillingen.</h2>

        <table class="table table-striped">
            <thead>
            <tr>
                <th>Længde</th>
                <th>Brede</th>
                <th>Skur Længde</th>
                <th>Skur Brede</th>
                <th>Slet</th>
            </tr>
            </thead>
            <c:forEach var="item" items="${sessionScope.cart.carportList}">
                <tr>
                    <td>
                        <c:out value="${item.length}"/>
                    </td>
                    <td>
                        <c:out value="${item.width}"/>
                    </td>
                    <td>
                        <c:out value="${item.shedLenght}"/>
                    </td>
                    <td>
                        <c:out value="${item.shedWidth}"/>
                    </td>
                    <td>
                        <button class="btn btn-primary" formaction="addtocart">Slet</button>
                    </td>
                        <%--                    <td>--%>
                        <%--                        <c:forEach var="sum" items="${item.totalPrice}">--%>
                        <%--                            <c:out value="${sessionScope.Sum.add(sum)}"/>--%>
                        <%--                        </c:forEach>--%>
                        <%--                    </td>--%>
                </tr>
            </c:forEach>
        </table>

        <c:forEach var="item" items="${sessionScope.cart.carportList}">
            Længde: ${item.length}<br/>
            Brede: ${item.width}<br/>
            Skur Længde: ${item.shedLenght}<br/>
            Skur Brede: ${item.shedWidth}<br/>
        </c:forEach>


    </jsp:body>

</t:FogWEB>