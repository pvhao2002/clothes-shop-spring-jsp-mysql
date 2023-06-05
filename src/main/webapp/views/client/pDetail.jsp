<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="link_css" value="/web/css"/>
<c:set var="link_js" value="/web/js"/>
<c:set var="link_img" value="/web/images"/>
<fmt:setLocale value="vi_VN"/>
<fmt:setBundle basename="java.text.resources"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta Tag -->
    <meta charset="utf-8">
    <meta name='copyright' content=''>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title Tag  -->
    <title>Trang chủ</title>
    <!-- Favicon -->
    <link rel="icon" type="image/png" href="${link_img}/favicon.png">
    <!-- Web Font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
          rel="stylesheet">
    <!-- StyleSheet -->
    <!-- Bootstrap -->
    <link href="${link_css}/bootstrap.css" rel="stylesheet">
    <!-- Magnific Popup -->
    <link href="${link_css}/magnific-popup.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${link_css}/font-awesome.css" rel="stylesheet">
    <!-- Fancybox -->
    <link href="${link_css}/jquery.fancybox.min.css" rel="stylesheet">
    <!-- Themify Icons -->
    <link href="${link_css}/themify-icons.css" rel="stylesheet">
    <!-- Nice Select CSS -->
    <link href="${link_css}/niceselect.css" rel="stylesheet">
    <!-- Animate CSS -->
    <link href="${link_css}/animate.css" rel="stylesheet">
    <!-- Flex Slider CSS -->
    <link href="${link_css}/flex-slider.min.css" rel="stylesheet">
    <!-- Owl Carousel -->
    <link href="${link_css}/owl-carousel.css" rel="stylesheet">
    <!-- Slicknav -->
    <link href="${link_css}/slicknav.min.css" rel="stylesheet">

    <!-- Eshop StyleSheet -->
    <link href="${link_css}/reset.css" rel="stylesheet">
    <link href="${link_css}/style.css" rel="stylesheet">
    <link href="${link_css}/responsive.css" rel="stylesheet">


</head>
<body class="js">
<!-- Preloader -->
<jsp:include page="preload.jsp"/>
<!-- End Preloader -->
<!-- Header -->
<jsp:include page="header.jsp"/>
<!--/ End Header -->

<!-- Start Product Detail Area -->
<section class="product-detail">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <!-- Product Info -->
                <div class="product-info">
                    <!-- Product Images -->
                    <div class="product-images">
                        <!-- Main Image -->
                        <div class="main-image">
                            <img class="default-img" src="${pTrend.image.imageUrl}" alt="Product">
                        </div>
                    </div>
                    <!-- Product Content -->
                    <div class="product-content">
                        <h2>${pTrend.category.categoryName}</h2>
                        <div class="product-price">
                            <span><fmt:formatNumber value="${pTrend.price}" type="currency"/></span>
                        </div>
                        <div class="product-description">
                            <p>${pTrend.description}</p>
                        </div>
                        <div class="product-actions">
                            <a href="#" class="add-to-cart">Add to Cart</a>
                            <a href="#" class="wishlist"><i class="fa fa-heart"></i>Add to Wishlist</a>
                            <a href="#" class="compare"><i class="fa fa-exchange"></i>Add to Compare</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Product Detail Area -->

<!-- Start Footer Area -->
<jsp:include page="footer.jsp"/>
<!-- /End Footer Area -->

<!-- Jquery -->
<script src="${link_js}/jquery.min.js"></script>
<script src="${link_js}/jquery-migrate-3.0.0.js"></script>
<script src="${link_js}/jquery-ui.min.js"></script>
<!-- Popper JS -->
<script src="${link_js}/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="${link_js}/bootstrap.min.js"></script>
<!-- Color JS -->
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
</body>
</html>
