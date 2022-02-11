<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show Info</title>
    <spring:url value="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" var="bootstrapCss"/>
    <link href="${bootstrapCss}" rel="stylesheet"/>

    <spring:url value="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" var="bootstrapJs"/>
    <script src="${bootstrapJs}"></script>

    <spring:url value="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
                var="bootstrapIcons"/>
    <link href="${bootstrapIcons}" rel="stylesheet"/>

    <%--    TODO: Проблема з підключенням локальних css та js--%>
    <spring:url value="resources/css/style.css" var="askCss"/>
    <link href="${askCss}" rel="stylesheet"/>
    <%--    --%>

    <spring:url value="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js" var="jQuery"/>
    <script src="${jQuery}"></script>

    <spring:url value="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/3.3.3/jquery.inputmask.bundle.min.js"
                var="jQueryInput"/>
    <script src="${jQueryInput}"></script>
</head>
<body style="background-color:#f086a6;">
<header>
    <jsp:include page="/WEB-INF/views/header.jsp"/>
</header>
<main>
    <div class="container-fluid" style="margin-top:50px">
        <div class="rounded d-flex justify-content-center">
            <div class="col-md-4 col-sm-12 shadow-lg p-4 bg-light">
                <div class="text-center">
                    <h3 class="text-dark">Your Information</h3>
                </div>
                <div class="p-2">
                    <form:form action="/">
                        <div class="input-group mb-3">
                                    <span class="input-group-text bg-dark"><i
                                            class="bi bi-person-fill text-white"></i></span>
                            <p class="px-2">${user.firstName}</p>
                        </div>
                        <div class="input-group mb-3">
                                    <span class="input-group-text bg-dark"><i
                                            class="bi bi-stopwatch-fill text-white"></i></span>
                            <p class="px-2">${user.lastName}</p>
                        </div>
                        <div class="input-group mb-3">
                                    <span class="input-group-text bg-dark"><i
                                            class="bi bi-telephone-fill text-white"></i></span>
                            <p class="px-2">${user.phone}</p>
                        </div>
                        <div class="input-group mb-3">
                                    <span class="input-group-text bg-dark"><i
                                            class="bi bi-key-fill text-white"></i></span>
                            <p class="px-2">${user.password}</p>
                        </div>
                        <div class="input-group mb-3">
                                    <span class="input-group-text bg-dark"><i
                                            class="bi bi-envelope text-white"></i></span>
                            <p class="px-2">${user.email}</p>
                        </div>
                        <div class="input-group mb-3">
                                    <span class="input-group-text bg-dark"><i
                                            class="bi bi-gender-male text-white"></i></span>
                            <p class="px-2">${user.gender}</p>
                        </div>
                        <div class="input-group mb-3">
                                    <span class="input-group-text bg-dark"><i
                                            class="bi bi-emoji-heart-eyes-fill text-white"></i></span>
                            <p class="px-2">${user.target}</p>
                        </div>
                        <div class="input-group mb-3">
                                    <span class="input-group-text bg-dark"><i
                                            class="bi bi-info-square-fill text-white"></i></span>

                            <c:forEach var="interest" items="${user.interests}">
                                <p class="mx-2">${interest}</p>
                            </c:forEach>
                        </div>
                        <div class="d-grid col-12 mx-auto">
                            <button class="btn btn-dark" type="submit"><span></span> Confirm</button>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</main>
<footer>
    <jsp:include page="/WEB-INF/views/footer.jsp"/>
</footer>
</body>
</html>


<%--&lt;%&ndash;Hello, ${param.employeeName}&ndash;%&gt;--%>
<%--&lt;%&ndash;Hello, ${firstName} ${finish}&ndash;%&gt;--%>
<%--First Name: ${user.firstName}--%>
<%--<br>--%>
<%--Last Name: ${user.lastName}--%>
<%--<br>--%>
<%--Age: ${user.age}--%>
<%--<br>--%>
<%--Phone: ${user.phone}--%>

<%--</body>--%>
<%--</html>--%>
