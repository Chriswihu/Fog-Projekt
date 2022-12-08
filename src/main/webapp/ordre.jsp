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
                    <option value="1">240 cm</option>
                    <option value="2">270 cm</option>
                    <option value="3">300 cm</option>
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
            <label>Vælg en Carport Brede:
                <select name="width">
                    <option value="1">240 cm</option>
                    <option value="2">270 cm</option>
                    <option value="3">300 cm</option>
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
            <label>Vælg en Skur Længde:
            <select name="shedLenght">
                <option value="1">240 cm</option>
                <option value="2">270 cm</option>
                <option value="3">300 cm</option>
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
            <label>Vælg en Skur Brede:
                <select name="shedWidth">
                    <option value="1">240 cm</option>
                    <option value="2">270 cm</option>
                    <option value="3">300 cm</option>
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
            <button  class="btn btn-primary" name="addtocart">Tilføj til Kurv
                <c:if test="${sessionScope.cart == null}">
                </c:if>
            </button>
        </form>

        <c:forEach var="item" items="${sessionScope.cart.carportList}">
            Længde: ${item.length}<br/>
            Brede: ${item.width}<br/>
            Skur Længde: ${item.shedLenght}<br/>
            Skur Brede: ${item.shedWidth}<br/>
        </c:forEach>


    </jsp:body>

</t:FogWEB>