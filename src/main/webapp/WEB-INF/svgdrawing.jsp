<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:FogWEB>
    <jsp:attribute name="header">
         SVG drawing
    </jsp:attribute>

    <jsp:attribute name="footer">
        svg
    </jsp:attribute>

    <jsp:body>

       <h1>SVG Tegning til folket</h1>

        ${requestScope.svg}
        <br>
        <br>
        <br>

<%--        <svg width="127" height="105" viewBox="0 0 255 210">--%>
<%--            <rect x="0" y="0" height="90" width="90"--%>
<%--                  style="stroke:#000000; fill: #ff0000"></rect>--%>
<%--            <rect x="120" y="0" height="90" width="135"--%>
<%--                  style="stroke:#000000; fill: #ff0000"></rect>--%>
<%--            <rect x="0" y="120" height="90" width="90"--%>
<%--                  style="stroke:#000000; fill: #ff0000"></rect>--%>
<%--            <rect x="120" y="120" height="90" width="135"--%>
<%--                  style="stroke:#000000; fill: #ff0000"></rect>--%>
<%--        </svg>--%>

    </jsp:body>

</t:FogWEB>