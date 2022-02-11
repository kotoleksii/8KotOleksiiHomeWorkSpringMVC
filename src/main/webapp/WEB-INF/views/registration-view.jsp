<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Registration</title>
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
            <div class="col-md-4 col-sm-12 shadow-lg p-5 bg-light">
                <div class="text-center">
                    <h3 class="text-dark">Registration</h3>
                </div>
                <div class="p-3">
                    <form:form action="showInfo" modelAttribute="user">
                        <div class="input-group mb-1">
                                    <span class="input-group-text bg-dark"><i
                                            class="bi bi-person-fill text-white"></i></span>
                            <form:input path="firstName" class="form-control" placeholder="First Name" type="text"/>
                            <form:input path="lastName" class="form-control" placeholder="Last Name" type="text"/>
                        </div>
                        <form:errors path="firstName" class="text-danger"/>
                        <form:errors path="lastName" class="text-danger"/>
                        <div class="input-group mb-1">
                                    <span class="input-group-text bg-dark"><i
                                            class="bi bi-stopwatch-fill text-white"></i></span>
                            <form:input path="age" class="form-control" placeholder="Age" type="number"/>
                        </div>
                        <form:errors path="age" class="text-danger"/>
                        <div class="input-group mb-1">
                                    <span class="input-group-text bg-dark"><i
                                            class="bi bi-telephone-fill text-white"></i></span>
                            <form:input path="phone" type="text" data-masked=""
                                        data-inputmask="'mask': '(999) 999-99-99'"
                                        placeholder="Phone number" class="form-control"/>
                        </div>
                        <form:errors path="phone" class="text-danger"/>
                        <div class="input-group mb-1">
                                    <span class="input-group-text bg-dark"><i
                                            class="bi bi-key-fill text-white"></i></span>
                            <form:input path="password" class="form-control" placeholder="Password" type="password"/>
                            <form:input path="passwordRepetition" class="form-control" placeholder="Password repeat"
                                        type="password"/>
                        </div>
                        <form:errors path="passwordRepetition" class="text-danger"/>
                        <div class="input-group mb-1">
                                    <span class="input-group-text bg-dark"><i
                                            class="bi bi-envelope text-white"></i></span>
                            <form:input path="email" class="form-control" placeholder="Email" type="text"/>
                        </div>
                        <form:errors path="email" class="text-danger"/>
                        <div class="input-group mb-1">
                                    <span class="input-group-text bg-dark"><i
                                            class="bi bi-gender-male text-white"></i></span>
                            <form:radiobuttons path="gender" class="form-check-input mx-2" items="${user.genders}"/>
                        </div>
                        <div class="input-group mb-1">
                                    <span class="input-group-text bg-dark"><i
                                            class="bi bi-emoji-heart-eyes-fill text-white"></i></span>
                            <form:select path="target" class="form-select">
                                <form:option value="null" label="Select target"></form:option>
                                <form:options items="${user.targets}"/>
                            </form:select>
                        </div>
                        <div class="input-group mb-1">
                                    <span class="input-group-text bg-dark"><i
                                            class="bi bi-info-square-fill text-white"></i></span>
                            <form:checkboxes path="interests" class="form-check-input mx-2"
                                             items="${user.listInterests}"/>
                        </div>
                        <div class="d-grid col-12 mx-auto">
                            <button class="btn btn-dark" type="submit"><span></span> OK</button>
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
<script>
    $(document).ready(function () {
        $(":input").inputmask();
    });
</script>
</body>
</html>
