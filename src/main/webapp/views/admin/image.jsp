<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
  <link href="${link_css}/ad.css" rel="stylesheet"/>
  <link rel="icon"
        type="image/x-icon"
        href="https://inkythuatso.com/uploads/images/2021/12/logo-truong-dai-hoc-nong-lam-thai-nguyen-inkythuatso-01-24-16-11-04.jpg"/>
  <link href="${link_css}/admin-list.css" rel="stylesheet"/>
  <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet"/>
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
        </ol>
        <a href="/admin/image/add" class="btn btn-primary add" style="margin-bottom: 20px;">Thêm</a>
        <table>
          <tr>
            <th style="width: 15%;">Mã hình ảnh</th>
            <th style="width: 20%;">Hình ảnh</th>
            <th style="width: 15%;">Xử lý</th>
          </tr>
          <jsp:useBean id="listImage" scope="request" type="java.util.List"/>
          <c:forEach var="p" items="${listImage}">
            <tr>
              <td>${p.imageId}</td>
              <td>
                <img src="${p.imageUrl}" alt="Eshop" style="width: 100px; height: 100px;">
              </td>
              <td>
                <a href="/admin/image/edit?id=${p.imageId}" class="btn btn-success">Sửa</a>
                <a
                        href="/admin/image/delete?id=${p.imageId}"
                        onclick="if(!(confirm('Bạn có muốn xóa hình ảnh này không?'))) return false"
                        class="btn btn-danger"
                >Xóa</a
                >
              </td>
            </tr>
          </c:forEach>
        </table>
      </div>
    </main>
    <%--    Footer--%>
    <jsp:include page="footer.jsp"/>
    <%--    End footer--%>
  </div>
</div>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"
></script>
</body>
</html>
