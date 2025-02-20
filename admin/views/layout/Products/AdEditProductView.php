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

    form img {
        margin-bottom: 10px;
        border-radius: 5px;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
    }

    form small {
        display: block;
        margin-top: 5px;
    }
</style>
<div class="container mt-4">
    <!-- Header -->
    <h1 class="h3 mb-4">Chỉnh sửa sản phẩm</h1>
    <!-- Form -->
    <form action="/PHP2/Assignment/admin/product/update/<?= $editproduct->getId() ?>" method="POST" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<?= $editproduct->getId() ?>">
        <div class="mb-3">
            <label for="name" class="form-label">Tên sản phẩm</label>
            <input type="text" class="form-control" id="name" name="name" value="<?= $editproduct->getName(); ?>" required>
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
            <label for="stock" class="form-label">Số lượng</label>
            <input type="number" class="form-control" id="stock" name="stock" value="<?= $editproduct->getStock() ?>" min="0" required>
        </div>
        <div class="mb-3">
            <label for="status" class="form-label">Trạng thái</label>
            <select class="form-select" id="status" name="status" required>
                <option value="0" <?= $editproduct->getStatus() == 0 ? 'selected' : '' ?>>Đang hoạt động</option>
                <option value="1" <?= $editproduct->getStatus() == 1 ? 'selected' : '' ?>>Tạm ngưng</option>
                <option value="2" <?= $editproduct->getStatus() == 2 ? 'selected' : '' ?>>Hết hàng</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="image" class="form-label">Ảnh chính sản phẩm</label>
            <?php if (empty($editproduct->getImage())): ?>
                <p class="text-muted">Chưa có ảnh chính</p>
            <?php else: ?>
                <img src="/PHP2/Assignment/public/images/<?= htmlspecialchars($editproduct->getImage()) ?>"
                    alt="<?= htmlspecialchars($editproduct->getName()) ?>"
                    width="100px" height="100px" class="me-2">
            <?php endif; ?>
            <input type="hidden" class="form-control" id="old_image" name="old_image" value="<?= $editproduct->getImage() ?>">
            <input type="file" class="form-control" id="image" name="image">
            <small class="text-muted">Để trống nếu không muốn thay đổi ảnh.</small>
        </div>
        <div class="mb-3">
            <label for="list_images" class="form-label">Ảnh phụ sản phẩm</label>
            <?php
            $images = json_decode($editproduct->getImages(), true);
            if (empty($images)): ?>
                <p class="text-muted">Chưa có ảnh phụ</p>
            <?php else: ?>
                <?php foreach ($images as $image): ?>
                    <img src="/PHP2/Assignment/public/images/<?= htmlspecialchars($image) ?>"
                        alt="<?= htmlspecialchars($image) ?>"
                        width="100px" height="100px" class="me-2">
                <?php endforeach; ?>
            <?php endif; ?>
            <input type="hidden" class="form-control" id="old_images" name="old_images" value='<?= json_encode($images) ?>'>
            <input type="file" class="form-control" id="list_images" name="list_images[]" multiple>
            <small class="text-muted">Để trống nếu không muốn thay đổi ảnh.</small>
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
    document.addEventListener("DOMContentLoaded", () => {
        const editors = ['#shortDescription', '#description'];
        editors.forEach(selector => {
            ClassicEditor
                .create(document.querySelector(selector))
                .catch(error => {
                    console.error(`Error initializing CKEditor for ${selector}:`, error);
                });
        });
    });
</script>