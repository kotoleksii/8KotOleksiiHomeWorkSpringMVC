<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <spring:url value="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" var="bootstrapCss"/>
    <link href="${bootstrapCss}" rel="stylesheet"/>
    <spring:url value="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" var="bootstrapJs"/>
    <script src="${bootstrapJs}"></script>
</head>
<body>

<header>
    <jsp:include page="/WEB-INF/views/header.jsp"/>
</header>

<main>
    <section class="py-5 text-center container">
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light">Вітаємо на сайті знайомств!</h1>
                <p class="lead text-muted">
                    Щоб ідеально підібрати для вас пару, дайте відповідь на декілька питань в формі реєстрації</p>
                <p>
                    <a href="/8KotOleksiiHomeWorkSpringMVC_war_exploded/register"
                       class="btn btn-primary my-2">Зареєструватися</a>
                </p>
            </div>
        </div>
    </section>
</main>

<footer>
    <jsp:include page="/WEB-INF/views/footer.jsp"/>
</footer>

</body>
</html>
