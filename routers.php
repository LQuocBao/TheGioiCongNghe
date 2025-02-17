<?php

// Danh sách các route
return [
    '' => [
        'controller' => 'HomeController',
        'method' => 'index'
    ],
    'detail/:id' => [
        'controller' => 'ProductController',
        'method' => 'detail'
    ],
    // 'about' => [
    //     'controller' => 'PageController',
    //     'method' => 'about'
    // ],
    // 'contact' => [
    //     'controller' => 'PageController',
    //     'method' => 'contact'
    // ],
    // 'login' => [
    //     'controller' => 'UserController',
    //     'method' => 'login'
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