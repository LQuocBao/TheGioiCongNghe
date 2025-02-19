<?php
    class AdPageView{
        public function Product($products){
            require_once 'layout/Products/AdProductView.php';
        }

        public function EditProduct($editproduct, $getCates){
            require_once 'layout/Products/AdEditProductView.php';
        }

        public function AddProduct($getCates){
            require_once 'layout/Products/AdAddProductView.php';
        }
    }