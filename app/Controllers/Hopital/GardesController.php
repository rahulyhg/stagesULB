<?php

namespace App\Controllers\Hopital;

use App\Models\User;
use App\Controllers\Controller;

class GardesController extends Controller
{
    public function getOfferList($request,$response, $args)
    {
        return $this->view->render($response,'hopital/listeoffres.twig');
    }

    public function getOffer($request,$response,$args)
    {
        return $this->view->render($response,'hopital/offre.twig');
    }
}