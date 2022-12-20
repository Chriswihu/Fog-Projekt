<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@page errorPage="error.jsp" isErrorPage="false" %>--%>

<t:FogWEB>
    <jsp:attribute name="header">
         Welcome to checkout
    </jsp:attribute>

    <jsp:attribute name="footer">
        Welcome to the Admin page
    </jsp:attribute>

    <jsp:body>

        <h2>Gennemse din Ordre og se din Stykliste igennem, inden du bestiller.</h2>

        <c:forEach var="item" items="${sessionScope.cart.carportList}">
            Længde: ${item.length}<br/>
            Brede: ${item.width}<br/>
            Skur Længde: ${item.shedLenght}<br/>
            Skur Brede: ${item.shedWidth}<br/>
        </c:forEach>
            <form action="confirm" method="get">
                <table class="table table-info">
                    <thead>
                    <tr>
                        <th>Beskrivelse</th>
                        <th>Længde</th>
                        <th>Antal</th>
                        <th>Enhed</th>
                    </tr>
                    </thead>
                    <c:forEach var="item" items="${sessionScope.materials.materials}">
                        <tr>
                            <td>
                                <c:out value="${item.name}"/>
                            </td>
                            <td>
                                <c:out value="${item.length}"/>
                            </td>
                            <td>
                                <c:out value="${item.quantity}"/>
                            </td>
                            <td>
                                <c:out value="${item.unit}"/>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                <c:forEach var="item" items="${sessionScope.itemLine.getItemList}">
                    Order ID: ${item.idorder.getid} Navn: ${item.name.name} Længde: ${item.length} Antal: ${item.quantity} Enhed: ${item.unit.unit}

                    <br/>
                </c:forEach>

                <br>
                <br>
                <br>

            </form>


    </jsp:body>

</t:FogWEB>