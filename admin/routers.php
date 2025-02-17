<?php

// Danh sách các route
return [
    '' => [
        'controller' => 'AdHomeController',
        'method' => 'index'
    ],
    'order' => [
        'controller' => 'AdOrderController',
        'method' => 'index'
    ],
    'user' => [
        'controller' => 'AdUserController',
        'method' => 'index'
    ],
    'product'=>[
        'controller' => 'AdProductController',
        'method' => 'index'
    ],
    'product/delete/:id'=>[
        'controller' => 'AdProductController',
        'method' => 'delete'
    ],
    'product/edit/:id'=>[
        'controller' => 'AdProductController',
        'method' => 'viewEdit'
    ],
    // 'contact' => [
    //     'controller' => 'PageController',
    //     'method' => 'contact'
    // ],
    // 'login' => [
    //     'controller' => 'UserController',
    //     'method' => 'login'
    // ],
    // 'detail/:id' => [
    //     'controller' => 'ProductController',
    //     'method' => 'detail'
    // ],
    // 'product' => [
    //     'controller' => 'ProductController',
    //     'method' => 'getAllProducts'
    // ],
];

// 'user/:id' => [
    //     'controller' => 'UserController',
    //     'method' => 'show'
    // ],
    // 'post/:id/edit' => [
    //     'controller' => 'PostController',
    //     'method' => 'edit'
    // ],