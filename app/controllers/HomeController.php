<?php
class HomeController
{
    public function index()
    {
        $product = new ProductModel();
        $products = $product->get8Products();
        $productslaptop = $product->getProductsByCategoryId(7);
        $pageview = new PageView();
        $pageview->Home($products, $productslaptop);
        // var_dump($products);
        // tạo mảng sản phẩm và gửi sang view
        // $productView = new ProductView();
        // $productView->renderProducts($products);
    }
}