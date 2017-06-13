<?php
use App\Middleware\GuestMiddleware;
use App\Middleware\AuthMiddleware;

$app->group('',function () {
    $this->get('/login','AuthController:getSignIn')->setName('auth.signin');
    $this->post('/login','AuthController:postSignIn');

    //$this->get('/auth/signup','AuthController:getSignUp')->setName('auth.signup');
	//$this->post('/auth/signup','AuthController:postSignUp');
})->add(new GuestMiddleware($container));



$app->group('',function () {
    $this->get('/','HomeController:index')->setName('home');

    $this->get('/profil','ProfileController:getProfile')->setName('profil');

    $this->get('/hopital/{hopid}/offres', 'GardesController:getOfferList')->setName('hopital.offerslist');
    $this->get('/hopital/offre/{offreid}', 'GardesController:getOffer')->setName('hopital.viewoffer');
    $this->get('/hopital/{hopid}/gardes', 'GardesController:getGardesList')->setName('hopital.viewgardes');
    $this->get('/hopital/{hopid}/infos', 'InfosController:getInfos')->setName('hopital.viewinfos');


    $this->get('/auth/signout','AuthController:getSignOut')->setName('auth.signout');

	$this->get('/auth/password/change','PasswordController:getChangePassword')->setName('auth.password.change');
	$this->post('/auth/password/change','PasswordController:postChangePassword');
})->add(new AuthMiddleware($container));



