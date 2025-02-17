<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Laptop Pro</title>
    <link href="/PHP2/Assignment/public/user/node_modules/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
</head>
<?php
require_once 'include.php';
?>
<style>
    body {
        font-family: Arial, sans-serif;
    }

    .navbar {
        background-color: #2a4d9e;
    }

    .navbar-brand img {
        width: 100px;
        height: auto;
    }

    .navbar-nav .nav-link {
        color: white;
    }

    .search-bar {
        width: 300px;
        display: flex;
    }

    .search-bar input {
        width: calc(100% - 50px);
    }

    .search-bar button {
        width: 50px;
    }

    .main-banner img {
        width: 100%;
    }

    .product-section h5 {
        font-size: 18px;
        font-weight: bold;
        color: #2a4d9e;
    }

    .product-item {
        border: 1px solid #ddd;
        /* padding: 10px; */
        text-align: center;
    }

    .product-item img {
        width: 100%;
        height: auto;
    }

    .price {
        color: red;
        font-weight: bold;
    }

    .news-section h5 {
        font-size: 18px;
        font-weight: bold;
        color: #2a4d9e;
    }

    .news-section .news-item {
        border: 1px solid #ddd;
        padding: 10px;
    }

    .news-section .news-item img {
        width: 100%;
        height: auto;
    }

    .text-start {
        font-size: 13px;
        margin-bottom: 0;
    }

    .btn-primary {
        background-color: #FFF;
        color: #2a4d9e;
        border-color: #2a4d9e;
    }

    .product-item button {
        font-size: 14px;
    }

    .news-section .news-item .main-news {
        width: 100%;
        height: 200px;
        object-fit: cover;
    }

    .news-section .news-item .sub-news {
        width: 80px;
        height: 50px;
        object-fit: cover;
    }

    .news-section .news-item .bg-body-secondary p {
        font-size: 15px;
    }

    .footer-wrapper .navbar .container .boxf p {
        margin-bottom: 0;
        margin-left: 5px;
        font-size: 16px;
    }

    li {
        list-style-type: none;
    }

    li a {
        text-decoration: none;
        color: black;
        cursor: pointer;
        padding: 5px;
    }
    h6 {
        padding-left: 32px;
    }

    @media (max-width: 768px) {
        .navbar {
            background-color: #2a4d9e !important;
            /* Thay đổi màu nền */
        }

        .navbar-collapse {
            background-color: #2a4d9e !important;
            /* Thay đổi màu nền dropdown */
        }
    }
</style>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="">    
                <img src="/PHP2/Assignment/public/images/logo.png" alt="Thế Giới Công Nghệ">
            </a>
            <!-- Nút toggle cho menu khi thu nhỏ -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="#">TRANG CHỦ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">SẢN PHẨM</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">KHUYẾN MÃI</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">TIN CÔNG NGHỆ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">DỊCH VỤ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">VỀ CHÚNG TÔI</a>
                    </li>
                </ul>
                <form class="d-flex search-bar">
                    <input class="form-control me-2" type="search" placeholder="Nhập thông tin cần tìm"
                        aria-label="Search">
                    <button class="btn btn-outline-light" type="submit">
                        <i class="fas fa-search"></i>
                    </button>
                </form>
            </div>
            <a class="nav-link text-white" href="#">
                <i class="fas fa-shopping-cart"></i> GIỎ HÀNG / 0 đ
            </a>
        </div>
    </nav>
    <?php
    require_once 'main.php';
    ?>
    <footer class="footer-wrapper">
        <nav class="navbar navbar-expand-lg" style="background-image: url(/PHP2/Assignment/public/images/footer.jpg);">
            <div class="container d-flex justify-content-center">
                <div class="boxf text-white d-flex me-5">
                    <i class="fa-solid fa-rotate me-2"></i>
                    <p>ĐỔI TRẢ TRONG VÒNG 30 NGÀY</p>
                </div>
                <div class="boxf text-white d-flex me-5">
                    <i class="fa-solid fa-truck me-2"></i>
                    <p>GIAO HÀNG TOÀN QUỐC</p>
                </div>
                <div class="boxf text-white d-flex">
                    <i class="fa-solid fa-hand-holding-dollar me-2"></i>
                    <p>THANH TOÁN KHI NHẬN HÀNG</p>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h6 class="text-start mt-4 mb-3" style="font-size:18px; font-weight: bold; color: #2a4d9e">GIỚI
                        THIỆU
                    </h6>
                    <ul class="ul-introduce">
                        <li class="mb-2">
                            <a href="#">Về chúng tôi</a>
                        </li>
                        <li>
                            <img src="/PHP2/Assignment/public/images/logo-da-thong-bao-bo-cong-thuong.png" alt="" width="130px"
                                height="50px">
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h6 class="text-start mt-4 mb-3" style="font-size:18px; font-weight: bold; color: #2a4d9e">CHÍNH
                        SÁCH CHUNG</h6>
                    <ul class="ul-policy">
                        <li class="pb-2"><a href="">Chính sách trả góp</a></li>
                        <li class="pb-2"><a href="">Chính sách bảo mật</a></li>
                        <li class="pb-2"><a href="">Chính sách đổi - trả hàng</a></li>
                        <li class="pb-2"><a href="">Chính sách bảo hành</a></li>
                        <li class="pb-2"><a href="">Chính sách vận chuyển</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h6 class="text-start mt-4 mb-3" style="font-size:18px; font-weight: bold; color: #2a4d9e">LIÊN HỆ
                    </h6>
                    <ul class="ul-contact">
                        <li class="pb-2">
                            <i class="fas fa-map"></i>
                            <span>Địa chỉ: 56 Nguyễn Oanh, Phường 7, Quận Gò Vấp, TP.HCM</span>
                        </li>
                        <li class="pb-2">
                            <i class="fas fa-phone"></i>
                            <span>Hotline: 078 554 8882</span>
                        </li>
                        <li class="pb-2">
                            <i class="fas fa-envelope"></i>
                            <span>Email: lamquocbao26042005@gmail.com</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <nav class="text-bg-secondary text-body-tertiary text-center pt-1">Copyright © 2024 by Lâm Quốc Bảo. All Rights
            Reserved</nav>
    </footer>
</body>
<script src="/PHP2/Assignment/public/user/node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

</html>