<?php
    class ProductController{
        public function detail($id){
            $product = new ProductModel();
            $productdetail = $product->getProductById($id);
            $pageview = new PageView();
            $pageview->Detail($productdetail);
        }
    }