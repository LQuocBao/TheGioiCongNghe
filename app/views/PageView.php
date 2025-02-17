<?php
class PageView
{
    public function Home($products, $productslaptop)
    {
        require_once 'layout/HomeView.php';
    }

    public function Detail($productdetail)
    {
        require_once 'layout/DetailView.php';
    }
}
