<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="link_css" value="/web/css"/>
<c:set var="link_js" value="/web/js"/>
<c:set var="link_img" value="/web/images"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký</title>
    <link rel="icon" type="image/png" href="${link_img}/favicon.png">
    <!-- Web Font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
          rel="stylesheet">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="${link_css}/bootstrap.css">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="${link_css}/magnific-popup.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="${link_css}/font-awesome.css">
    <!-- Fancybox -->
    <link rel="stylesheet" href="${link_css}/jquery.fancybox.min.css">
    <!-- Themify Icons -->
    <link rel="stylesheet" href="${link_css}/themify-icons.css">
    <!-- Nice Select CSS -->
    <link rel="stylesheet" href="${link_css}/niceselect.css">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="${link_css}/animate.css">
    <!-- Flex Slider CSS -->
    <link rel="stylesheet" href="${link_css}/flex-slider.min.css">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="${link_css}/owl-carousel.css">
    <!-- Slicknav -->
    <link rel="stylesheet" href="${link_css}/slicknav.min.css">

    <!-- Eshop StyleSheet -->
    <link rel="stylesheet" href="${link_css}/reset.css">
    <link rel="stylesheet" href="${link_css}/style.css">
    <link rel="stylesheet" href="${link_css}/responsive.css">
    <link rel="stylesheet" href="${link_css}/login.css">
</head>
<body>

<%--Preloader--%>
<jsp:include page="preload.jsp"/>
<%--END Preloader--%>


<%--    Header--%>
<header class="header shop">
    <!-- Topbar -->
    <div class="topbar">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-12 col-12">
                    <!-- Top Left -->
                    <div class="top-left">
                        <ul class="list-main">
                            <li><i class="ti-headphone-alt"></i> +012 3456 789</li>
                            <li><i class="ti-email"></i>eshop@gmail.com</li>
                        </ul>
                    </div>
                    <!--/ End Top Left -->
                </div>
                <div class="col-lg-7 col-md-12 col-12">
                    <!-- Top Right -->
                    <div class="right-content">
                        <ul class="list-main">
                            <li><i class="ti-location-pin"></i>Địa chỉ</li>
                            <li><i class="ti-alarm-clock"></i>Khuyến mãi</li>
                        </ul>
                    </div>
                    <!-- End Top Right -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Topbar -->
</header>
<%--End Header--%>


<%--Main--%>
<section id="content-login" style="height: 120vh;">
    <%--@elvariable id="userForm" type=""--%>
    <form:form method="post" modelAttribute="userForm" class="form-login">
        <h1>Đăng ký</h1>
        <spring:bind path="name">
            <label>Họ và Tên</label>
            <form:input type="text" path="name" name="name" placeholder="Nhập họ và tên"></form:input>
            <form:errors path="name"></form:errors>
        </spring:bind>


        <spring:bind path="username">
            <label>Tên đăng nhập</label>
            <form:input type="text" name="username" path="username" placeholder="Nhập tên đăng nhập"
            ></form:input>
            <form:errors path="username"></form:errors>
        </spring:bind>

        <spring:bind path="password">
            <label>Mật khẩu</label>
            <form:input type="password" path="password" name="password" placeholder="Nhập mật khẩu"
                        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[a-zA-Z0-9]{8,}"
                        title="Mật khẩu phải từ 8 ký tự trở lên, chứa ít nhất 1 ký tự viết hoa, 1 ký tự số và nằm trong a-z A-z 0-9"
            ></form:input>
            <fomr:errors path="password"></fomr:errors>
        </spring:bind>


        <spring:bind path="confirmPassword">
            <label>Nhập lại mật khẩu</label>
            <form:input type="password" path="confirmPassword" name="password" placeholder="Nhập lại mật khẩu"
                        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[a-zA-Z0-9]{8,}"
                        title="Mật khẩu phải từ 8 ký tự trở lên, chứa ít nhất 1 ký tự viết hoa, 1 ký tự số và nằm trong a-z A-z 0-9"
            ></form:input>
            <form:errors path="confirmPassword"></form:errors>
        </spring:bind>


        <div class="show-password">
            <input type="checkbox" name="show-password"/>
            <label>Hiện mật khẩu</label>
        </div>
        <input type="submit" value="Đăng ký">
        <a href="/login" class="link">Đã có tài khoản?<span> Đăng nhập</span></a>
    </form:form>
</section>

<%--End Main--%>

<%--Footer--%>
<jsp:include page="footer.jsp"/>
<%--End footer--%>


<%--Jquery--%>
<script src="${link_js}/jquery.min.js"></script>
<script src="${link_js}/jquery-migrate-3.0.0.js"></script>
<script src="${link_js}/jquery-ui.min.js"></script>
<!-- Popper JS -->
<script src="${link_js}/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="${link_js}/bootstrap.min.js"></script>
<!-- Color JS -->
<script src="${link_js}/colors.js"></script>
<!-- Slicknav JS -->
<script src="${link_js}/slicknav.min.js"></script>
<!-- Owl Carousel JS -->
<script src="${link_js}/owl-carousel.js"></script>
<!-- Magnific Popup JS -->
<script src="${link_js}/magnific-popup.js"></script>
<!-- Waypoints JS -->
<script src="${link_js}/waypoints.min.js"></script>
<!-- Countdown JS -->
<script src="${link_js}/finalcountdown.min.js"></script>
<!-- Nice Select JS -->
<script src="${link_js}/nicesellect.js"></script>
<!-- Flex Slider JS -->
<script src="${link_js}/flex-slider.js"></script>
<!-- ScrollUp JS -->
<script src="${link_js}/scrollup.js"></script>
<!-- Onepage Nav JS -->
<script src="${link_js}/onepage-nav.min.js"></script>
<!-- Easing JS -->
<script src="${link_js}/easing.js"></script>
<!-- Active JS -->
<script src="${link_js}/active.js"></script>
<script>
    // Get the password input element
    const passwordInput = document.querySelector('input[name="checkbox"]');
    // Function to toggle the password visibility
    togglePassword.addEventListener('click', function () {
        const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
        passwordInput.setAttribute('type', type);
    });
</script>

</body>
</html>