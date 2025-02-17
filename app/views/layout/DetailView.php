<!-- Product Detail -->
<style>
    body {
        font-family: Arial, sans-serif;
    }

    .breadcrumb {
        background-color: transparent;
        padding: 0;
        margin: 0;
    }

    .img-thumbnail {
        width: 100px;
        height: 100px;
        object-fit: cover;
    }

    .cart {
        font-weight: bold;
    }

    header h1 {
        font-size: 24px;
    }
</style>
<section class="product-detail container my-4">
    <div class="row">
        <?php
            echo '<div class="col-md-6">';
            echo '<img src="/PHP2/Assignment/public/images/' . $productdetail->getImage() . '" alt="Product Image" class="img-fluid mb-3">';
            echo '<div class="d-flex">';
            // <img src="https://via.placeholder.com/100" alt="Thumbnail" class="img-thumbnail me-2">
            // <img src="https://via.placeholder.com/100" alt="Thumbnail" class="img-thumbnail me-2">
            // <img src="https://via.placeholder.com/100" alt="Thumbnail" class="img-thumbnail">
            echo '</div>';
            echo '</div>';
            echo '<div class="col-md-6">';
            echo '<h2>' . $productdetail->getName() . '</h2>';
            echo '<div class="d-flex align-items-center">';
            echo '<span class="text-danger fs-4 me-3">' . $productdetail->getPrice() . ' ₫</span>';
            // <span class="text-muted text-decoration-line-through">26,590,000 ₫</span>
            echo '</div>';
        ?>
        <ul class="list-unstyled mt-3"> 
            <li>CPU: Intel Core i7-7500U 2.7GHz up to 3.5GHz 4MB</li>
            <li>RAM: 8GB LPDDR3 Onboard</li>
            <li>Ổ cứng: 256GB PCIe NVMe™ M.2 SSD</li>
            <li>Card đồ họa: Intel® HD Graphics 620</li>
            <li>Màn hình: 13.3 inch FHD (1920 x 1080) IPS BrightView</li>
        </ul>
        <div class="mt-4 d-flex align-items-center">
            <label for="quantity" class="me-2">Số lượng:</label>
            <input type="number" id="quantity" class="form-control w-25" value="1" min="1">
        </div>
        <button class="btn btn-danger mt-3">Thêm vào giỏ</button>
    </div>
    </div>
    <!-- Additional Info -->
    <div class="row mt-5">
        <div class="col-12">
            <h5>Thông tin bổ sung</h5>
            <ul>
                <li>Mua online giảm thêm 5%.</li>
                <li>Tặng 30 ngày đổi trả sản phẩm khi đặt hàng trực tuyến.</li>
                <li>Hỗ trợ trả góp lãi suất 0%.</li>
                <li>Hỗ trợ thanh toán qua thẻ.</li>
            </ul>
        </div>
    </div>
</section>