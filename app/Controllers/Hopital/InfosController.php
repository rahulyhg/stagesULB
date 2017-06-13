<?php

namespace App\Controllers\Hopital;

use App\Models\User;
use App\Controllers\Controller;

class InfosController extends Controller
{
    public function getInfos($request, $response, $args)
    {
        return $this->view->render($response, 'hopital/infos.twig');
    }
}