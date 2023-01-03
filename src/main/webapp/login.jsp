<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--<%@page errorPage="error.jsp" isErrorPage="false" %>--%>

<t:FogWEB>
    <jsp:attribute name="header">
             Login/opret Profil
    </jsp:attribute>

    <jsp:attribute name="footer">
            Login/Create
    </jsp:attribute>

    <jsp:body>

        <h3>Du kan Logge ind eller oprette en ny Konto her!</h3>
        <br>
        <div class='parent flex-parent'>
            <div class='child flex-child style="width: 35%'>
                <p>Log ind med en Eksisterende Konto:</p>
                <ul>
                    <form action="login" method="post">
                        <label for="username">Username: </label>
                        <br/>
                        <input type="text" id="username" name="username" style="width: 250px"/>
                        <br/>
                        <br/>
                        <label for="password">Password: </label>
                        <br/>
                        <input type="password" id="password" name="password" style="width: 250px"/>
                        <br/>
                        <br/>
                        <input class="btn btn-primary" type="submit" value="Log in"/>
                    </form>
                </ul>
            </div>
            <div class='child flex-child style="width: 30px'></div>
            <div class='child flex-child style="width: 35%'>
                <p>Opret en ny konto</p>
                <ul>
                    <form action="createuser" method="post">
                        <label for="newusername"> Nyt brugernavn:</label>
                        <br/>
                        <input type="text" id="newusername" name="newusername" style="width: 250px"/>
                        <br/>
                        <br/>
                        <label for="newpassword"> Nyt password:</label>
                        <br/>
                        <input type="password" id="newpassword" name="newpassword" style="width: 250px"/>
                        <br/>
                        <br/>
                        <input class="btn btn-primary" type="submit" value="Opret bruger"/>
                    </form>
                </ul>
            </div>
        </div>


    </jsp:body>
</t:FogWEB>