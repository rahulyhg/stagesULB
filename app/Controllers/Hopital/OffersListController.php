<?php

namespace App\Controllers\Hopital;

use App\Models\User;
use App\Controllers\Controller;

class OffersListController extends Controller
{
    public function getList($request,$response, $args)
    {
        return $this->view->render($response,'hopital/listeoffres.twig');
    }
}