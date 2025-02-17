<div class="container mt-4">
    <div class="row">
        <div class="col-md-8">
            <div class="main-banner">
                <img alt="Main banner showing various laptops and promotional text"
                    src="https://placehold.co/800x400" />
            </div>
        </div>
        <div class="col-md-4">
            <div class="row">
                <div class="col-12 mb-3">
                    <img alt="iPhone 8 and 8 Plus promotion" src="https://placehold.co/400x200" />
                </div>
                <div class="col-12">
                    <img alt="Samsung J7 Prime promotion" src="https://placehold.co/400x200" />
                </div>
            </div>
        </div>
    </div>
    <div class="d-flex">
        <div class="row mt-4 me-2">
            <div class="col-md-12">
                <div class="product-section">
                    <div class="d-flex text-start">
                        <h5>SẢN PHẨM MỚI</h5>
                        <h5 class="text-body-tertiary ms-4">SẢN PHẨM BÁN CHẠY</h5>
                    </div>
                    <!-- box sản phẩm -->
                    <div class="row">
                        <?php
                        foreach ($products as $product) {
                            echo "<div class='col-md-3 col-sm-6 mb-4'>";
                            echo "<div class='product-item'>";
                            echo "<a href='/PHP2/Assignment/detail/".$product->getId()."'><img alt='" . $product->getImage() . "' src='public/images/" . $product->getImage() . "' /></a>";
                            echo "<p class='text-start ms-2'>" . $product->getName() . "</p>";
                            echo "<p class='price text-start ms-2'>" . $product->getPrice() . " đ</p>";
                            echo "<button class='btn btn-primary fw-bold mb-2'>THÊM VÀO GIỎ</button>";
                            echo "</div>";
                            echo "</div>";
                        }
                        ?>
                        <!-- <div class="col-md-3 col-sm-6 mb-4">
                            <div class="product-item">
                                <img alt="Lenovo 510S-08IKL" src="https://placehold.co/200x200" />
                                <p class="text-start ms-2">Máy tính bàn Lenovo 510S-08IKL (90GB007VLN)</p>
                                <p class="price text-start ms-2">7,190,000 đ</p>
                                <button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 mb-4">
                            <div class="product-item">
                                <img alt="Dell Vostro 3650MT" src="https://placehold.co/200x200" />
                                <p class="text-start ms-2">Máy tính bàn Dell Vostro 3650MT 70082355</p>
                                <p class="price text-start ms-2">10,090,000 đ
                                    <span style="text-decoration: line-through;"
                                        class="text-body-tertiary">12,290,000đ</span>
                                </p>
                                <button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 mb-4">
                            <div class="product-item">
                                <img alt="Lenovo Ideacentre 510S-08IKL" src="https://placehold.co/200x200" />
                                <p class="text-start ms-2">Máy tính bàn Lenovo Ideacentre 510S-08IKL</p>
                                <p class="price text-start ms-2">10,990,000 đ</p>
                                <button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 mb-4">
                            <div class="product-item">
                                <img alt="HP Pavilion 570-P021L" src="https://placehold.co/200x200" />
                                <p class="text-start ms-2">Desktop HP Pavilion 570-P021L (Core i7/Ram 8GB)</p>
                                <p class="price text-start ms-2">17,790,000 đ</p>
                                <button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 mb-4">
                            <div class="product-item">
                                <img alt="Lenovo 510S-08IKL" src="https://placehold.co/200x200" />
                                <p class="text-start ms-2">Máy tính bàn Lenovo 510S-08IKL (90GB007VLN)</p>
                                <p class="price text-start ms-2">7,190,000 đ</p>
                                <button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 mb-4">
                            <div class="product-item">
                                <img alt="Dell Vostro 3650MT" src="https://placehold.co/200x200" />
                                <p class="text-start ms-2">Máy tính bàn Dell Vostro 3650MT 70082355</p>
                                <p class="price text-start ms-2">10,090,000 đ
                                    <span style="text-decoration: line-through;"
                                        class="text-body-tertiary">12,290,000đ</span>
                                </p>
                                <button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 mb-4">
                            <div class="product-item">
                                <img alt="Lenovo Ideacentre 510S-08IKL" src="https://placehold.co/200x200" />
                                <p class="text-start ms-2">Máy tính bàn Lenovo Ideacentre 510S-08IKL</p>
                                <p class="price text-start ms-2">10,990,000 đ</p>
                                <button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 mb-4">
                            <div class="product-item">
                                <img alt="HP Pavilion 570-P021L" src="https://placehold.co/200x200" />
                                <p class="text-start ms-2">Desktop HP Pavilion 570-P021L (Core i7/Ram 8GB)</p>
                                <p class="price text-start ms-2">17,790,000 đ</p>
                                <button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>
                            </div>
                        </div> -->
                    </div>
                    <!-- End box sản phẩm -->
                </div>
            </div>
        </div>
        <div class="col-md-4 mt-4">
            <div class="news-section">
                <h5>TIN TỨC</h5>
                <div class="news-item mb-4">
                    <div class="bg-body-secondary">
                        <img alt="Huawei Mate 10 news" src="https://placehold.co/300x200" class="main-news" />
                        <p>Trọn bộ hình nền Huawei Mate 10 đẹp “miễn chê” cho mọi smartphone</p>
                    </div>
                    <div class="d-flex border border-light-subtle p-1 mb-1">
                        <img src="https://placehold.co/80x50" alt="" class="sub-news" />
                        <p style="margin-bottom: 0; margin-left: 5px;">Trọn bộ hình nền Huawei Mate 10 đẹp “miễn
                            chê” cho mọi smartphone</p>
                    </div>
                    <div class="d-flex border border-light-subtle p-1 mb-1">
                        <img src="https://placehold.co/80x50" alt="" class="sub-news" />
                        <p style="margin-bottom: 0; margin-left: 5px;">Trọn bộ hình nền Huawei Mate 10 đẹp “miễn
                            chê” cho mọi smartphone</p>
                    </div>
                    <div class="d-flex border border-light-subtle p-1 mb-1">
                        <img src="https://placehold.co/80x50" alt="" class="sub-news" />
                        <p style="margin-bottom: 0; margin-left: 5px;">Trọn bộ hình nền Huawei Mate 10 đẹp “miễn
                            chê” cho mọi smartphone</p>
                    </div>
                    <div class="d-flex border border-light-subtle p-1 mb-1">
                        <img src="https://placehold.co/80x50" alt="" class="sub-news" />
                        <p style="margin-bottom: 0; margin-left: 5px;">Trọn bộ hình nền Huawei Mate 10 đẹp “miễn
                            chê” cho mọi smartphone</p>
                    </div>
                    <div class="d-flex border border-light-subtle p-1">
                        <img src="https://placehold.co/80x50" alt="" class="sub-news" />
                        <p style="margin-bottom: 0; margin-left: 5px;">Trọn bộ hình nền Huawei Mate 10 đẹp “miễn
                            chê” cho mọi smartphone</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container mt-4">
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand text-light" href="#">
                <i class="fas fa-laptop"></i>
                MÁY TÍNH XÁCH TAY
            </a>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            Apple
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            Asus
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            HP
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            Lenovo
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            Dell
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- box sản phẩm -->
    <div class="row mt-4">
        <!-- Dòng đầu tiên với 6 sản phẩm -->
        <?php
        foreach ($productslaptop as $item) {
            echo ' <div class="col-md-2 col-sm-6 mb-4">';
            echo '<div class="product-item">';
            echo '<img alt="' . $item->getImage() . '" src="public/images/' . $item->getImage() . '" />';
            echo '<p class="text-start ms-2">' . $item->getName() . '</p>';
            echo '<p class="price text-start ms-2">' . $item->getPrice() . ' đ</p>';
            echo '<button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>';
            echo '</div>';
            echo '</div>';
        }
        ?>
        <!-- <div class="col-md-2 col-sm-6 mb-4">
            <div class="product-item">
                <img alt="Lenovo 510S-08IKL" src="https://placehold.co/200x200" />
                <p class="text-start ms-2">Máy tính bàn Lenovo 510S-08IKL (90GB007VLN)</p>
                <p class="price text-start ms-2">7,190,000 đ</p>
                <button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>
            </div>
        </div>
        <div class="col-md-2 col-sm-6 mb-4">
            <div class="product-item">
                <img alt="Lenovo 510S-08IKL" src="https://placehold.co/200x200" />
                <p class="text-start ms-2">Máy tính bàn Lenovo 510S-08IKL (90GB007VLN)</p>
                <p class="price text-start ms-2">7,190,000 đ</p>
                <button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>
            </div>
        </div>
        <div class="col-md-2 col-sm-6 mb-4">
            <div class="product-item">
                <img alt="Lenovo 510S-08IKL" src="https://placehold.co/200x200" />
                <p class="text-start ms-2">Máy tính bàn Lenovo 510S-08IKL (90GB007VLN)</p>
                <p class="price text-start ms-2">7,190,000 đ</p>
                <button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>
            </div>
        </div>
        <div class="col-md-2 col-sm-6 mb-4">
            <div class="product-item">
                <img alt="Lenovo 510S-08IKL" src="https://placehold.co/200x200" />
                <p class="text-start ms-2">Máy tính bàn Lenovo 510S-08IKL (90GB007VLN)</p>
                <p class="price text-start ms-2">7,190,000 đ</p>
                <button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>
            </div>
        </div>
        <div class="col-md-2 col-sm-6 mb-4">
            <div class="product-item">
                <img alt="Lenovo 510S-08IKL" src="https://placehold.co/200x200" />
                <p class="text-start ms-2">Máy tính bàn Lenovo 510S-08IKL (90GB007VLN)</p>
                <p class="price text-start ms-2">7,190,000 đ</p>
                <button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>
            </div>
        </div>
        <div class="col-md-2 col-sm-6 mb-4">
            <div class="product-item">
                <img alt="Lenovo 510S-08IKL" src="https://placehold.co/200x200" />
                <p class="text-start ms-2">Máy tính bàn Lenovo 510S-08IKL (90GB007VLN)</p>
                <p class="price text-start ms-2">7,190,000 đ</p>
                <button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>
            </div>
        </div>
        <div class="col-md-2 col-sm-6 mb-4">
            <div class="product-item">
                <img alt="Lenovo 510S-08IKL" src="https://placehold.co/200x200" />
                <p class="text-start ms-2">Máy tính bàn Lenovo 510S-08IKL (90GB007VLN)</p>
                <p class="price text-start ms-2">7,190,000 đ</p>
                <button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>
            </div>
        </div>
        <div class="col-md-2 col-sm-6 mb-4">
            <div class="product-item">
                <img alt="Lenovo 510S-08IKL" src="https://placehold.co/200x200" />
                <p class="text-start ms-2">Máy tính bàn Lenovo 510S-08IKL (90GB007VLN)</p>
                <p class="price text-start ms-2">7,190,000 đ</p>
                <button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>
            </div>
        </div>
        <div class="col-md-2 col-sm-6 mb-4">
            <div class="product-item">
                <img alt="Lenovo 510S-08IKL" src="https://placehold.co/200x200" />
                <p class="text-start ms-2">Máy tính bàn Lenovo 510S-08IKL (90GB007VLN)</p>
                <p class="price text-start ms-2">7,190,000 đ</p>
                <button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>
            </div>
        </div>
        <div class="col-md-2 col-sm-6 mb-4">
            <div class="product-item">
                <img alt="Lenovo 510S-08IKL" src="https://placehold.co/200x200" />
                <p class="text-start ms-2">Máy tính bàn Lenovo 510S-08IKL (90GB007VLN)</p>
                <p class="price text-start ms-2">7,190,000 đ</p>
                <button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>
            </div>
        </div>
        <div class="col-md-2 col-sm-6 mb-4">
            <div class="product-item">
                <img alt="Lenovo 510S-08IKL" src="https://placehold.co/200x200" />
                <p class="text-start ms-2">Máy tính bàn Lenovo 510S-08IKL (90GB007VLN)</p>
                <p class="price text-start ms-2">7,190,000 đ</p>
                <button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>
            </div>
        </div>
        <div class="col-md-2 col-sm-6 mb-4">
            <div class="product-item">
                <img alt="Lenovo 510S-08IKL" src="https://placehold.co/200x200" />
                <p class="text-start ms-2">Máy tính bàn Lenovo 510S-08IKL (90GB007VLN)</p>
                <p class="price text-start ms-2">7,190,000 đ</p>
                <button class="btn btn-primary fw-bold mb-2">THÊM VÀO GIỎ</button>
            </div>
        </div> -->
    </div>
    <!-- Banner dài dưới 2 dòng sản phẩm -->
    <div class="row">
        <div class="col-12 d-flex justify-content-center">
            <img src="public/images/bannerdai1.jpg" class="img-fluid" alt="Banner">
            <img src="public/images/bannerdai2.jpg" alt="Banner" class="img-fluid">
        </div>
    </div>
    <!-- End box sản phẩm -->
</div>