<?php

namespace App\Controllers\Hopital;

use App\Models\Hospital;
use App\Controllers\Controller;

class GardesController extends Controller
{
    public function getOfferList($request,$response, $args)
    {
        $hospital = Hospital::where('id', $args['hopid'])->first();
        return $this->view->render($response,'hopital/listeoffres.twig', [ 'hopital' => $hospital ]);
    }

    public function getOffer($request,$response,$args)
    {
        return $this->view->render($response,'hopital/offre.twig');
    }

    public function getGardesList($request,$response,$args)
    {
        $hospital = Hospital::where('id', $args['hopid'])->first(); // TODO: fix that !!!!!!!
        return $this->view->render($response,'hopital/listegardes.twig', [ 'hopital' => $hospital ]);
    }

}