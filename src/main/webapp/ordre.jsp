<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:FogWEB>
    <jsp:attribute name="header">
         Byg din Carport
    </jsp:attribute>

    <jsp:attribute name="footer">
        Carport bygger
    </jsp:attribute>

    <jsp:body>

        <div class='parent flex-parent'>
            <div class='child flex-child style="width: 25%'>
                <form action="svg" method="post">
                    <h2>Vælg din Carport's Mål</h2>
                    <label>Vælg en Carport Længde:
                        <br/>
                        <select name="CPwidth">
                            <c:forEach var="item" items="${sessionScope.lengthList.length}">
                                <option value="${item}">${item} cm</option>
                            </c:forEach>
                        </select>
                    </label>
                    <br/>
                    <br/>
                    <label>Vælg en Carport Brede:
                        <br/>
                        <select name="CPheight">
                            <c:forEach var="item" items="${sessionScope.lengthList.width}">
                                <option value="${item}">${item} cm</option>
                            </c:forEach>
                        </select>
                    </label>
                    <br/>
                    <br/>
                    <label>Vælg en Skur Længde:
                        <br/>
                        <select name="SHwidth">
                            <option value="0">Intet Skur</option>
                            <c:forEach var="item" items="${sessionScope.lengthList.shedLength}">
                                <option value="${item}">${item} cm</option>
                            </c:forEach>
                        </select>
                    </label>
                    <br/>
                    <br/>
                    <label>Vælg en Skur Brede:
                        <br/>
                        <select name="SHheight">
                            <option value="0">Intet Skur</option>
                            <c:forEach var="item" items="${sessionScope.lengthList.shedWidth}">
                                <option value="${item}">${item} cm</option>
                            </c:forEach>
                        </select>
                    </label>
                    <br/>
                    <br/>

                    <form id="order" action="addtocart" method="post">
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
                        <button class="btn btn-primary" name="addtocart">Tilføj til Kurv
<%--                            <c:if test="${sessionScope.cart == null}">--%>
<%--                                ${sessionScope.cart.updateCart}--%>
<%--                            </c:if>--%>
                        </button>

                        <p class="mt-4"><a class="btn btn-primary" href="order">Gå til betaling</a></p>

                            <%--        <c:forEach var="item" items="${sessionScope.lengthList}">--%>
                            <%--            <c:out value="${item}"></c:out> <br>--%>
                            <%--        </c:forEach>--%>
                    </form>
                </form>
            </div>

            <div class='child flex-child' style="width: 70%; height: 70%">
                <h2>Skitse af dine Valgte Mål</h2>
                <ul>
                        ${requestScope.svg}
                </ul>
            </div>
        </div>


    </jsp:body>

</t:FogWEB>