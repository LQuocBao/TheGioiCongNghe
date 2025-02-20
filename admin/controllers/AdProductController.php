<?php
class AdProductController
{
    public function index()
    {
        $productModel = new ProductModel();
        $products = $productModel->getAllProducts();
        $pageview = new AdPageView();
        $pageview->Product($products);
    }

    // Delete product
    public function delete($id)
    {
        $product = new ProductModel($id, null, null, null, null, null, null, null, null, null, null, null, null);
        $result = $product->delete();
        if ($result) {
            echo "<script>alert('Xóa sản phẩm thành công'); window.location.href='/PHP2/Assignment/admin/product';</script>";
            exit();
        } else {
            echo "<script>alert('Xóa sản phẩm thất bại'); window.location.href='/PHP2/Assignment/admin/product';</script>";
            exit();
        }
    }

    //Edit Product
    public function viewEdit($id)
    {
        $edit = new ProductModel();
        $editproduct = $edit->getProductById($id);
        $getCate = new CategoryModel();
        $getCates = $getCate->getAllCategories();
        $editview = new AdPageView();
        $editview->EditProduct($editproduct, $getCates);
    }

    public function update($id)
    {
        try {
            $product = new ProductModel();
            $product->setName($_POST['name']);
            $product->setPrice($_POST['price']);
            $product->setPriceSale($_POST['priceSale']);
            $product->setStock($_POST['stock']);
            $product->setStatus($_POST['status']);
            $product->setShortDescription($_POST['shortDescription']);
            $product->setDescription($_POST['description']);
            $product->setCategoryId($_POST['category']);
            // Ảnh chính
            if (isset($_FILES['image']) && $_FILES['image']['error'] === 0) {
                $targetDir = $_SERVER['DOCUMENT_ROOT'] . "/PHP2/Assignment/public/images/";
                $targetFile = $targetDir . basename($_FILES['image']['name']);
                if (move_uploaded_file($_FILES['image']['tmp_name'], $targetFile)) {
                    $product->setImage(basename($_FILES['image']['name']));
                } else {
                    throw new Exception("Không thể di chuyển tệp đã tải lên: " . $_FILES['image']['name']);
                }
            } else {
                $product->setImage($_POST['old_image']);
            }
            // Ảnh Phụ
            if (isset($_FILES['list_images']) && isset($_FILES['list_images']['error']) && is_array($_FILES['list_images']['error'])) {
                $targetDir = $_SERVER['DOCUMENT_ROOT'] . "/PHP2/Assignment/public/images/";
                $imagePaths = [];
                $imageErrors = $_FILES['list_images']['error'];
                $hasValidImages = false;
                foreach ($imageErrors as $key => $error) {
                    if ($error === UPLOAD_ERR_OK) {
                        $hasValidImages = true;
                        $targetFile = $targetDir . basename($_FILES['list_images']['name'][$key]);
                        if (move_uploaded_file($_FILES['list_images']['tmp_name'][$key], $targetFile)) {
                            $imagePaths[] = basename($_FILES['list_images']['name'][$key]);
                        } else {
                            throw new Exception("Không thể di chuyển tệp đã tải lên: " . $_FILES['list_images']['name'][$key]);
                        }
                    }
                }
                if ($hasValidImages) {
                    $product->setImages(json_encode($imagePaths));
                } else {
                    $product->setImages(json_decode($_POST['old_images'] ?? '[]', true));
                }
            } else {
                $product->setImages(json_decode($_POST['old_images'] ?? '[]', true));
            }
            // Lưu kết quả cập nhật sản phẩm
            $result = $product->update($id);
            if ($result) {
                echo "<script>alert('Cập nhật sản phẩm thành công!'); window.location.href='/PHP2/Assignment/admin/product';</script>";
            } else {
                echo "<script>alert('Cập nhật sản phẩm thất bại!'); window.location.href='/PHP2/Assignment/admin/product';</script>";
            }
        } catch (Exception $e) {
            error_log("Error in update product: " . $e->getMessage());
            echo "<script>alert('Đã xảy ra lỗi trong quá trình cập nhật!'); window.location.href='/PHP2/Assignment/admin/product';</script>";
        }
    }

    //Add Product
    public function viewAdd()
    {
        $getCate = new CategoryModel();
        $getCates = $getCate->getAllCategories();
        $addview = new AdPageView();
        $addview->AddProduct($getCates);
    }

    public function add()
    {
        try {
            $addProduct = new ProductModel();
            $addProduct->setName($_POST['name']);
            $addProduct->setPrice($_POST['price']);
            $addProduct->setPriceSale($_POST['priceSale']);
            $addProduct->setStock($_POST['stock']);
            $addProduct->setStatus($_POST['status']);
            $addProduct->setShortDescription($_POST['shortDescription']);
            $addProduct->setDescription($_POST['description']);
            $addProduct->setCategoryId($_POST['category']);
            // Giá giảm
            if (empty($_POST['priceSale'])) {
                $addProduct->setPriceSale(null);
            }
            // Ảnh chính
            if (isset($_FILES['image']) && $_FILES['image']['error'] === 0) {
                $targetDir = $_SERVER['DOCUMENT_ROOT'] . "/PHP2/Assignment/public/images/";
                $targetFile = $targetDir . basename($_FILES['image']['name']);
                if (move_uploaded_file($_FILES['image']['tmp_name'], $targetFile)) {
                    $addProduct->setImage(basename($_FILES['image']['name']));
                } else {
                    throw new Exception("Không thể di chuyển tệp đã tải lên: " . $_FILES['image']['name']);
                }
            } else {
                throw new Exception("Ảnh sản phẩm không hợp lệ!");
            }
            // Ảnh Phụ
            $imagePaths = [];
            if (isset($_FILES['product_images']) && is_array($_FILES['product_images']['error'])) {
                $targetDir = $_SERVER['DOCUMENT_ROOT'] . "/PHP2/Assignment/public/images/";
                foreach ($_FILES['product_images']['error'] as $key => $error) {
                    if ($error === UPLOAD_ERR_OK) {
                        $targetFile = $targetDir . basename($_FILES['product_images']['name'][$key]);
                        if (move_uploaded_file($_FILES['product_images']['tmp_name'][$key], $targetFile)) {
                            $imagePaths[] = basename($_FILES['product_images']['name'][$key]);
                        } else {
                            throw new Exception("Không thể di chuyển tệp đã tải lên: " . $_FILES['product_images']['name'][$key]);
                        }
                    }
                }
            }
            // Lưu ảnh phụ vào DB (mặc định là chuỗi JSON rỗng nếu không có ảnh)
            $addProduct->setImages(json_encode($imagePaths));
            // Lưu kết quả thêm sản phẩm
            $result = $addProduct->insert();
            if ($result) {
                echo "<script>alert('Thêm sản phẩm thành công!'); window.location.href='/PHP2/Assignment/admin/product';</script>";
            } else {
                echo "<script>alert('Thêm sản phẩm thất bại!'); window.location.href='/PHP2/Assignment/admin/product';</script>";
            }
        } catch (Exception $e) {
            error_log("Error in add product: " . $e->getMessage());
            echo "<script>alert('Đã xảy ra lỗi trong quá trình thêm sản phẩm!');</script>";
        }
    }
}
