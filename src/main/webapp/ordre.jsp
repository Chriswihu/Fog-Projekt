<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@page errorPage="error.jsp" isErrorPage="false" %>--%>

<t:FogWEB>
    <jsp:attribute name="header">
         Bestil din Carport
    </jsp:attribute>

    <jsp:attribute name="footer">
        Carport
    </jsp:attribute>

    <jsp:body>

        <h3>Vælg din Carport's Mål</h3>

        <form action="addtocart" method="post">
            <label>Vælg en Carport Længde:
                <select name="lenght">
                    <option value="240">240 cm</option>
                    <option value="270">270 cm</option>
                    <option value="300">300 cm</option>
                    <option value="4">330 cm</option>
                    <option value="5">360 cm</option>
                    <option value="6">390 cm</option>
                    <option value="7">420 cm</option>
                    <option value="8">450 cm</option>
                    <option value="9">480 cm</option>
                    <option value="10">510 cm</option>
                    <option value="11">540 cm</option>
                    <option value="12">570 cm</option>
                    <option value="13">600 cm</option>
                    <option value="14">630 cm</option>
                    <option value="15">660 cm</option>
                    <option value="16">690 cm</option>
                    <option value="17">720 cm</option>
                    <option value="18">750 cm</option>
                    <option value="19">780 cm</option>
                </select>
            </label>
            <br/>
            <br/>
            <label>Vælg en Carport Brede:
                <select name="width">
                    <option value="240">240 cm</option>
                    <option value="270">270 cm</option>
                    <option value="300">300 cm</option>
                    <option value="4">330 cm</option>
                    <option value="5">360 cm</option>
                    <option value="6">390 cm</option>
                    <option value="7">420 cm</option>
                    <option value="8">450 cm</option>
                    <option value="9">480 cm</option>
                    <option value="10">510 cm</option>
                    <option value="11">540 cm</option>
                    <option value="12">570 cm</option>
                    <option value="13">600 cm</option>
                </select>
            </label>
            <br/>
            <br/>
            <label>Vælg en Skur Længde:
                <select name="shedLenght">
                    <option value="150">150 cm</option>
                    <option value="180">180 cm</option>
                    <option value="210">210 cm</option>
                    <option value="4">240 cm</option>
                    <option value="5">270 cm</option>
                    <option value="6">300 cm</option>
                    <option value="7">330 cm</option>
                    <option value="8">360 cm</option>
                    <option value="9">390 cm</option>
                    <option value="10">420 cm</option>
                    <option value="11">450 cm</option>
                    <option value="12">480 cm</option>
                    <option value="13">510 cm</option>
                    <option value="14">540 cm</option>
                    <option value="15">570 cm</option>
                    <option value="16">600 cm</option>
                    <option value="17">630 cm</option>
                    <option value="18">660 cm</option>
                    <option value="19">690 cm</option>
                </select>
            </label>
            <br/>
            <br/>
            <label>Vælg en Skur Brede:
                <select name="shedWidth">
                    <option value="210">210 cm</option>
                    <option value="240">240 cm</option>
                    <option value="270">270 cm</option>
                    <option value="4">300 cm</option>
                    <option value="5">330 cm</option>
                    <option value="6">360 cm</option>
                    <option value="7">390 cm</option>
                    <option value="8">420 cm</option>
                    <option value="9">450 cm</option>
                    <option value="10">480 cm</option>
                    <option value="11">510 cm</option>
                    <option value="12">540 cm</option>
                    <option value="13">570 cm</option>
                    <option value="14">600 cm</option>
                    <option value="15">630 cm</option>
                    <option value="16">660 cm</option>
                    <option value="17">690 cm</option>
                    <option value="18">720 cm</option>
                </select>
            </label>
            <br/>
            <button class="btn btn-primary" name="addtocart">Tilføj til Kurv
                <c:if test="${sessionScope.cart == null}">
                </c:if>
            </button>


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

            <p class="mt-4"><a class="btn btn-primary" href="order">Bestil</a></p>
        </form>


        <c:forEach var="item" items="${sessionScope.cart.carportList}">
            Længde: ${item.length}<br/>
            Brede: ${item.width}<br/>
            Skur Længde: ${item.shedLenght}<br/>
            Skur Brede: ${item.shedWidth}<br/>
        </c:forEach>


    </jsp:body>

</t:FogWEB>