<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@page errorPage="../error.jsp" isErrorPage="false" %>--%>

<t:FogWEB>
    <jsp:attribute name="header">
         Betaling
    </jsp:attribute>

    <jsp:attribute name="footer">
        Betalingsformular
    </jsp:attribute>

    <jsp:body>

        <h2>Hej ${sessionScope.user.username}, du har valgt den følgende Carport.</h2>
        <br>
        <ul>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Længde</th>
                    <th>Brede</th>
                    <th>Skur Længde</th>
                    <th>Skur Brede</th>
                        <%--                                <th>Slet</th>--%>
                </tr>
                </thead>
                <c:forEach var="item" items="${sessionScope.cart.carportList}">
                    <tr>
                        <td>
                            <c:out value="${item.length} cm"/>
                        </td>
                        <td>
                            <c:out value="${item.width} cm"/>
                        </td>
                        <td>
                            <c:out value="${item.shedLength} cm"/>
                        </td>
                        <td>
                            <c:out value="${item.shedWidth} cm"/>
                        </td>
                            <%--                                    <td>--%>
                            <%--                                        <button class="btn btn-primary" formaction="addtocart">Slet</button>--%>
                            <%--                                    </td>--%>
                    </tr>
                </c:forEach>

            </table>
        </ul>
        <br>
        <h2>Ønsker du at betale nu og få den bestilt hjem?</h2>
        <p class="mt-4"><a class="btn btn-primary" href="confirm">Bestil</a></p>
        <br>



    </jsp:body>

</t:FogWEB>