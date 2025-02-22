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
    //Đăng ký + đăng nhập
    'register' => [
        'controller' => 'UserController',
        'method' => 'viewRegister'
    ],
    'signUp' => [
        'controller' => 'UserController',
        'method' => 'signUp'
    ],
    'login' => [
        'controller' => 'UserController',
        'method' => 'viewLogin'
    ],
    'signIn' => [
        'controller' => 'UserController',
        'method' => 'signIn'
    ],
    'logout' => [
        'controller' => 'UserController',
        'method' => 'logout'
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