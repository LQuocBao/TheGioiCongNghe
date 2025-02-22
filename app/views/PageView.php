<?php
class PageView
{
    public function Home($products, $productslaptop)
    {
        require_once 'layout/Index/HomeView.php';
    }

    public function Detail($productdetail)
    {
        require_once 'layout/Product/DetailView.php';
    }

    public function viewRegister()
    {
        require_once 'layout/User/RegisterView.php';
    }

    public function viewLogin()
    {
        require_once 'layout/User/LoginView.php';
    }
}
