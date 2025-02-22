<?php
session_start();
ob_start();
if (!isset($_SESSION['user']) || $_SESSION['role'] != 1) {
    // Nếu người dùng không đăng nhập hoặc không phải là admin, chuyển hướng đến trang đăng nhập
    header('Location: /PHP2/Assignment/login');
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/PHP2/Assignment/admin/public/css/style.css">
    <link rel="stylesheet" href="/PHP2/Assignment/public/user/node_modules/bootstrap/dist/css/bootstrap.min.css">
    <title>Admin Thế Giới Công Nghệ</title>
    <?php
    require_once 'include.php';
    ?>
</head>

<body>
    <nav>
        <div class="logo-name">
            <div class="logo-image">
                <img src="/PHP2/Assignment/public/images/logo.png" alt="">
            </div>
            <span class="logo_name">Thế Giới Công Nghệ</span>
        </div>
        <div class="menu-items">
            <ul class="nav-links">
                <li>
                    <a href="/PHP2/Assignment/admin/">
                        <i class="uil uil-estate"></i>
                        <span class="link-name">Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="/PHP2/Assignment/admin/order">
                        <i class="uil uil-estate"></i>
                        <span class="link-name">Quản lý đơn hàng</span>
                    </a>
                </li>
                <li>
                    <a href="/PHP2/Assignment/admin/user">
                        <i class="uil uil-files-landscapes"></i>
                        <span class="link-name">Quản lý khách hàng</span>
                    </a>
                </li>
                <li>
                    <a href="/PHP2/Assignment/admin/category">
                        <i class="uil uil-thumbs-up"></i>
                        <span class="link-name">Quản lý danh mục</span>
                    </a>
                </li>
                <li>
                    <a href="/PHP2/Assignment/admin/product">
                        <i class="uil uil-comments"></i>
                        <span class="link-name">Quản lý sản phẩm</span>
                    </a>
                </li>
                <li>
                    <a href="/PHP2/Assignment/admin/post">
                        <i class="uil uil-share"></i>
                        <span class="link-name">Quản lý bài viết</span>
                    </a>
                </li>
            </ul>
            <ul class="logout-mode">
                <li>
                    <a href="/PHP2/Assignment/logout">
                        <i class="uil uil-signout"></i>
                        <span class="link-name">Logout</span>
                    </a>
                </li>
                <li class="mode">
                    <a href="#">
                        <i class="uil uil-moon"></i>
                        <span class="link-name">Dark Mode</span>
                    </a>
                    <div class="mode-toggle">
                        <span class="switch"></span>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
    <?php
    include("main.php");
    ?>
</body>
<script src="/PHP2/Assignment/admin/public/js/script.js"></script>
<script src="/PHP2/Assignment/public/user/node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

</html>