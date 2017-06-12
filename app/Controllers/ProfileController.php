<?php

namespace App\Controllers;

use App\Models\User;

class ProfileController extends Controller
{
    public function getProfile($request,$response)
    {
        return $this->view->render($response,'profil.twig');
    }
}