<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>

<!DOCTYPE html>
<html lang="da">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
        <jsp:invoke fragment="header"/>
    </title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%--<div class="navbar-header">--%>
<%--    <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">--%>
<%--        <img src="${pageContext.request.contextPath}/images/cphbusiness.png" width="100%" class="img-fluid"/>--%>
<%--    </a>--%>
<%--</div>--%>
<div class="topnav">
    <a class="active" href="${pageContext.request.contextPath}/index.jsp">
        <img src="${pageContext.request.contextPath}/images/Fog-Logo.png" height="70px" class="img-fill"></a>
    <a class="nav-item topnav" href="${pageContext.request.contextPath}/index.jsp" aria-expanded="true">Bolig &
        Design</a>
    <a class="nav-item topnav" href="${pageContext.request.contextPath}/">Byggematerialer</a>
    <a class="nav-item topnav" href="${pageContext.request.contextPath}/">El & Belysning</a>
    <a class="nav-item topnav" href="${pageContext.request.contextPath}/">Have & Fritid</a>
    <a class="nav-item topnav" href="${pageContext.request.contextPath}/">Værktøj</a>
    <a class="nav-item topnav" href="${pageContext.request.contextPath}/">Maling</a>
    <a class="nav-item topnav" href="${pageContext.request.contextPath}/">Erhverv</a>

    <div class="topnav-right">
        <c:if test="${sessionScope.user == null }">
            <a class="nav-item nav-link" style="float: left"
               href="${pageContext.request.contextPath}/login.jsp">Login</a>
        </c:if>
        <c:if test="${sessionScope.user != null }">
            <a class="nav-item nav-link" href="${pageContext.request.contextPath}/">Kunde</a>
            <a class="nav-item nav-link" href="${pageContext.request.contextPath}/">Ordrer</a>
            <a class="nav-item nav-link" href="${pageContext.request.contextPath}/">Indkøbskurv</a>
            <c:if test="${sessionScope.user.role == 'admin' }">
                <a class="nav-item topnav-right" href="${pageContext.request.contextPath}/admin.jsp">Admin</a>
            </c:if>
            <a class="nav-item nav-link topnav-right"
               href="${pageContext.request.contextPath}/logout">Logout ${sessionScope.user.username}@mail.com</a>

        </c:if>
    </div>
</div>
</header>

<div id="body" class="container mt-4" style="min-height: 400px;">
    <h1>
        <jsp:invoke fragment="header"/>
    </h1>
    <jsp:doBody/>
</div>

<!-- Footer -->
<div class="container mt-3">
    <hr/>
    <div class="row mt-4">
        <div class="col">
            Nørgaardsvej 30<br/>
            2800 Lyngby
        </div>
        <div class="col">
            <jsp:invoke fragment="footer"/>
            <br/>
            <p>&copy; 2022 Cphbusiness</p>
        </div>
        <div class="col">
            Datamatikeruddannelsen<br/>
            2. semester efterår 2022
        </div>
    </div>

</div>


<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

</body>
</html>