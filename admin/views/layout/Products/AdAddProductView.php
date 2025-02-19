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
    <h1 class="h3 mb-4">Thêm sản phẩm mới</h1>

    <!-- Form -->
    <form action="/PHP2/Assignment/admin/product/addproduct" method="POST" enctype="multipart/form-data">
        <div class="mb-3">
            <label for="name" class="form-label">Tên sản phẩm</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Nhập tên sản phẩm" required>
        </div>
        <div class="mb-3">
            <label for="shortDescription" class="form-label">Mô tả ngắn</label>
            <textarea class="form-control" id="shortDescription" name="shortDescription" rows="3" placeholder="Nhập mô tả ngắn" ></textarea>
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Mô tả dài</label>
            <textarea class="form-control" id="description" name="description" rows="6" placeholder="Nhập mô tả dài" ></textarea>
        </div>
        <div class="mb-3">
            <label for="category" class="form-label">Danh mục</label>
            <select class="form-select" id="category" name="category" required>
                <option value="" disabled selected>Chọn danh mục</option>
                <?php foreach ($getCates as $cate) { ?>
                    <option value="<?= $cate->getId() ?>"><?= $cate->getName() ?></option>
                <?php } ?>
            </select>
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Giá gốc</label>
            <input type="number" class="form-control" id="price" name="price" placeholder="Nhập giá gốc" required>
        </div>
        <div class="mb-3">
            <label for="priceSale" class="form-label">Giá giảm</label>
            <input type="number" class="form-control" id="priceSale" name="priceSale" placeholder="Nhập giá giảm (nếu có)">
        </div>
        <div class="mb-3">
            <label for="stock" class="form-label">Số lượng</label>
            <input type="number" class="form-control" id="stock" name="stock" placeholder="Nhập số lượng" min="0" required>
        </div>
        <div class="mb-3">
            <label for="image" class="form-label">Ảnh sản phẩm</label>
            <input type="file" class="form-control" id="image" name="image" required>
            <small>Ảnh chính không được để trống</small>
        </div>
        <div class="mb-3">
            <label for="list_images" class="form-label">Ảnh phụ sản phẩm</label>
            <input type="file" class="form-control" id="list_images" name="list_images[]" multiple>
        </div>
        <div class="d-flex justify-content-between">
            <a href="/PHP2/Assignment/admin/product" class="btn btn-secondary">Quay lại</a>
            <button type="submit" class="btn btn-primary">Thêm sản phẩm</button>
        </div>
    </form>
</div>

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