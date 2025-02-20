<!-- Main Content -->
<style>
    .sidebar {
        height: 100vh;
        box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
    }

    .sidebar h5 {
        font-weight: bold;
        color: #007bff;
    }

    .sidebar .nav-link {
        color: #333;
        font-size: 16px;
        margin: 5px 0;
    }

    .sidebar .nav-link.active {
        background-color: #007bff;
        color: #fff;
        border-radius: 5px;
    }

    .sidebar .nav-link:hover {
        background-color: #f0f0f0;
        color: #007bff;
    }

    a {
        color: white;
        text-decoration: none;
    }

    table thead {
        text-align: center;
    }

    table tbody td {
        text-align: center;
        vertical-align: middle;
    }
</style>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h2>Quản Lý Đơn Hàng</h2>
    </div>
    <div class="pb-2 mb-3 ">
        <a href="/PHP2/Assignment/admin/product/add" class="btn btn-primary">Thêm Sản Phẩm</a>
    </div>
    <!-- Summary Section -->
    <div class="row mb-4">
        <div class="col-md-4">
            <div class="p-3 bg-primary text-white text-center rounded">
                <h5>Tổng Sản Phẩm</h5>
                <h2>1,024</h2>
            </div>
        </div>
        <div class="col-md-4">
            <div class="p-3 bg-warning text-dark text-center rounded">
                <h5>Sản Phẩm Hot</h5>
                <h2>128</h2>
            </div>
        </div>
        <div class="col-md-4">
            <div class="p-3 bg-success text-white text-center rounded">
                <h5>Sản Phẩm Mới</h5>
                <h2>896</h2>
            </div>
        </div>
    </div>

    <!-- Product List -->
    <div class="table-responsive">
        <table class="table table-striped table-bordered">
            <thead class="table-dark">
                <tr>
                    <th>#</th>
                    <th>Tên</th>
                    <th>Giá</th>
                    <th>Ảnh</th>
                    <th>Số Lượng</th>
                    <th>Trạng Thái</th>
                    <th>Ngày cập nhật</th>
                    <th>Hành Động</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($products as $product) { ?>
                    <tr>
                        <td><?= $product->getId() ?></td>
                        <td style="text-align: left;"><?= $product->getName() ?></td>
                        <td><?= number_format($product->getPrice()); ?> đ</td>
                        <td><img src="/PHP2/Assignment/public/images/<?= $product->getImage() ?>" alt="Đây là ảnh" width="100px" height="100px"></td>
                        <td><?= $product->getStock() ?></td>
                        <td><?php if ($product->getStatus() == 0) echo 'Đang hoạt động'; elseif($product->getStatus() == 1) echo 'Tạm Ngưng';else echo 'Hết hàng';?></td>
                        <td><?php echo date('H:i d/m/Y', strtotime($product->getUpdatedAt())); ?></td>
                        <td>
                            <button class="btn btn-primary btn-sm"><a href="/PHP2/Assignment/admin/product/edit/<?= $product->getId() ?>">Sửa</a></button>
                            <button class="btn btn-primary btn-sm"><a href="/PHP2/Assignment/admin/product/delete/<?= $product->getId() ?>">Xóa</a></button>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</main>