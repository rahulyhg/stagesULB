<?php
use App\Middleware\GuestMiddleware;
use App\Middleware\AuthMiddleware;

$app->get('/login','AuthController:getSignIn')->setName('login');

$app->group('',function () {
    //$this->get('/auth/signup','AuthController:getSignUp')->setName('auth.signup');
	//$this->post('/auth/signup','AuthController:postSignUp');

	$this->get('/auth/signin','AuthController:getSignIn')->setName('auth.signin');
	$this->post('/auth/signin','AuthController:postSignIn');
})->add(new GuestMiddleware($container));



$app->group('',function () {
    $this->get('/','HomeController:index')->setName('home');
	$this->get('/auth/signout','AuthController:getSignOut')->setName('auth.signout');

	$this->get('/auth/password/change','PasswordController:getChangePassword')->setName('auth.password.change');
	$this->post('/auth/password/change','PasswordController:postChangePassword');
})->add(new AuthMiddleware($container));



