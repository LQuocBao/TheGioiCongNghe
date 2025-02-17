<style>
    label {
        display: block;
        font-weight: bold;
    }

    form {
        margin: 0 auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
</style>
<div class="container mt-4">
    <!-- Header -->
    <h1 class="h3 mb-4">Chỉnh sửa sản phẩm</h1>
    <!-- Form -->
    <form action="update_product.php" method="POST" enctype="multipart/form-data">
        <input type="hidden" name="product_id" value="<?= $editproduct->getId() ?>">
        <div class="mb-3">
            <label for="product_name" class="form-label">Tên sản phẩm</label>
            <input type="text" class="form-control" id="product_name" name="product_name" value="<?= $editproduct->getName(); ?>" required>
        </div>
        <div class="mb-3">
            <label for="category" class="form-label">Danh mục</label>
            <input type="hidden" name="old_category" value="<?= $editproduct->getCategoryId() ?>">
            <select class="form-select" id="category" name="category" required>
                <?php foreach ($getCates as $category): ?>
                    <option value="<?= $category->getId() ?>"
                        <?= $category->getId() == $editproduct->getCategoryId() ? 'selected' : '' ?>>
                        <?= htmlspecialchars($category->getName()) ?>
                    </option>
                <?php endforeach; ?>
            </select>
        </div>
        <div class="mb-3">
            <label for="shortDescription" class="form-label">Mô tả ngắn</label>
            <textarea class="form-control" id="shortDescription" name="shortDescription" rows="3" required><?= htmlspecialchars($editproduct->getShortDescription()) ?></textarea>
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Mô tả dài</label>
            <textarea class="form-control" id="description" name="description" rows="6" required><?= htmlspecialchars($editproduct->getDescription()) ?></textarea>
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Giá</label>
            <input type="number" class="form-control" id="price" name="price" value="<?= $editproduct->getPrice() ?>" required>
        </div>
        <div class="mb-3">
            <label for="priceSale" class="form-label">Giá giảm</label>
            <input type="number" class="form-control" id="priceSale" name="priceSale" value="<?= htmlspecialchars($editproduct->getPriceSale() ?? 0) ?>">
        </div>
        <div class="mb-3">
            <label for="quantity" class="form-label">Số lượng</label>
            <input type="number" class="form-control" id="quantity" name="quantity" value="<?= $editproduct->getStock() ?>" min="0" required>
        </div>
        <div class="mb-3">
            <label for="product_image" class="form-label">Ảnh chính sản phẩm</label><br>
            <img src="/PHP2/Assignment/public/images/<?= $editproduct->getImage() ?>" alt="<?= $editproduct->getName() ?>" width="100px" height="100px">
            <input type="file" class="form-control" id="product_image" name="product_image">
            <small class="text-muted">Để trống nếu không muốn thay đổi ảnh.</small>
        </div>
        <div class="mb-3">
            <label for="list_images" class="form-label">Ảnh phụ sản phẩm</label><br>
            <?php
            // var_dump($editproduct->getImages());
            $json = $editproduct->getImages();
            $images = json_decode($json, true);
            if ($images == null) {
                echo 'Chưa có ảnh phụ';
            }
            foreach ($images as $image): ?>
                <img src="/PHP2/Assignment/public/images/<?= $image ?>" alt="<?= $image ?>" width="100px" height="100px">
                <!-- <input type="checkbox" name="delete_image[]" value="<?= $image ?>"> Xoá ảnh -->
            <?php endforeach; ?>
        </div>

        <!-- Submit Button -->
        <div class="d-flex justify-content-between">
            <a href="/PHP2/Assignment/admin/product" class="btn btn-secondary">Quay lại</a>
            <button type="submit" class="btn btn-primary">Cập nhật sản phẩm</button>
        </div>
    </form>
</div>
<!-- <script src="/PHP2/Assignment/CKEditor/ckeditor5/ckeditor5.js"></script> -->
<script src="https://cdn.ckeditor.com/ckeditor5/40.0.0/classic/ckeditor.js"></script>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        if (typeof ClassicEditor === 'undefined') {
            console.error('CKEditor is not loaded!');
        } else {
            console.log('CKEditor is loaded successfully!');
        }
    });
    document.addEventListener("DOMContentLoaded", function() {
        ClassicEditor
            .create(document.querySelector('#shortDescription'))
            .catch(error => {
                console.error(error);
            });

        ClassicEditor
            .create(document.querySelector('#description'))
            .catch(error => {
                console.error(error);
            });
    });
</script>