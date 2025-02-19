<?php

// Danh sách các route
return [
    // Dashboard
    '' => [
        'controller' => 'AdHomeController',
        'method' => 'index'
    ],
    // Orders
    'order' => [
        'controller' => 'AdOrderController',
        'method' => 'index'
    ],
    // Users
    'user' => [
        'controller' => 'AdUserController',
        'method' => 'index'
    ],
    // Products
    'product' => [
        'controller' => 'AdProductController',
        'method' => 'index'
    ],
    'product/delete/:id' => [
        'controller' => 'AdProductController',
        'method' => 'delete'
    ],
    'product/edit/:id' => [
        'controller' => 'AdProductController',
        'method' => 'viewEdit'
    ],
    'product/update/:id' => [
        'controller' => 'AdProductController',
        'method' => 'update'
    ],
    'product/add' => [
        'controller' => 'AdProductController',
        'method' => 'viewAdd'
    ],
    'product/addproduct' => [
        'controller' => 'AdProductController',
        'method' => 'add'
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