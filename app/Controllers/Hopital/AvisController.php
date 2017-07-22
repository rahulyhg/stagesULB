<?php

namespace App\Controllers\Hopital;

use App\Models\Hospital;
use App\Controllers\Controller;

class AvisController extends Controller
{
    public function getHospitalAvis($request,$response, $args)
    {
        $hospital = Hospital::where('id', $args['hopid'])->first();
        return $this->view->render($response,'hopital/avis.twig', [ 'hopital' => $hospital ]);
    }

    public function getAvis($request,$response, $args)
    {

        // TODO

        return $this->view->render($response,'avis.twig');
    }

}