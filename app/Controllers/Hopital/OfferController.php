<?php

namespace App\Controllers\Hopital;

use App\Models\User;
use App\Controllers\Controller;

class OfferController extends Controller
{
    public function getList($request,$response, $args)
    {
        return $this->view->render($response,'hopital/listeoffres.twig');
    }

    public function getOffer($request,$response,$args)
    {
        return $this->view->render($response,'hopital/offre.twig');
    }
}