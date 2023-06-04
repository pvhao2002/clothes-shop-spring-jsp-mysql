<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="link_css" value="/web/css"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name='copyright' content=''>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>ADMIN - EShop</title>
    <script
            src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
            crossorigin="anonymous"
    ></script>
    <link rel="icon"
          type="image/x-icon"
          href="https://inkythuatso.com/uploads/images/2021/12/logo-truong-dai-hoc-nong-lam-thai-nguyen-inkythuatso-01-24-16-11-04.jpg"/>
    <link href="${link_css}/ad.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${link_css}/admin-add.css">
    <style>
        .error {
            color: red;
            text-align: left;
            font-weight: bold;
            width: 100%;
        }
    </style>
</head>
<body class="sb-nav-fixed">
<%--Navv--%>
<jsp:include page="nav.jsp"/>
<%--End Nav--%>
<div id="layoutSidenav">
    <%--    Slide nav--%>
    <jsp:include page="slideNav.jsp"/>
    <%--    End slide nav--%>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">Trang chủ</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active">Trang chủ</li>
                    <li class="breadcrumb-item active">Hình ảnh</li>
                    <li class="breadcrumb-item active">Chỉnh sửa</li>
                </ol>
                <hr/>
                <section id="content" class="container">
                    <%--@elvariable id="image" type=""--%>
                    <form:form method="post" modelAttribute="image" enctype="multipart/form-data">
                        <form:hidden path="imageId"/>
                        <form:label path="imageUrl">Hình ảnh</form:label>
                        <form:input path="imageUrl" type="file" required="required" accept="image/*"/>
                        <form:errors path="imageUrl" cssClass="error"/>
                        <div class="clearfix">
                            <input type="submit" name="add" value="Sửa" class="btnAdd"/>
                        </div>
                    </form:form>
                </section>
            </div>
        </main>
        <%--    Footer--%>
        <jsp:include page="footer.jsp"/>
        <%--    End footer--%>
    </div>
</div>
</body>
</html>
