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
        $product = new ProductModel($id, null, null, null, null, null, null, null, null, null, null, null);
        $result = $product->delete();
        if ($result) {
            echo "<script>alert('Xóa sản phẩm thành công');</script>";
            header("Location: /PHP2/Assignment/admin/product");
            exit();
        } else {
            echo "<script>alert('Xóa sản phẩm thất bại');</script>";
            header("Location: /PHP2/Assignment/admin/product");
            exit();
        }
    }

    public function viewEdit($id)
    {
        $edit = new ProductModel();
        $editproduct = $edit->getProductById($id);
        $getCate = new CategoryModel();
        $getCates = $getCate->getAllCategories();
        $editview = new AdPageView();
        $editview->EditProduct($editproduct, $getCates);
    }

    public function edit($id){
        $name = $_POST['name'];
        $price = $_POST['price'];
        $description = $_POST['description'];
        $category_id = $_POST['category_id'];
    }
}
